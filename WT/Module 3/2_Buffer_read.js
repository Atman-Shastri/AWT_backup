var fs = require('fs');
fs.open("data.txt",'r',(err,fd)=>{
    if (err) {
        console.log("Error Occurred"+err);
    }
    else{
        var buffer = new Buffer.alloc(1024);
        fs.read(fd,buffer,0,buffer.length,0,(err,bytes)=>{
            console.log(buffer.slice(0,bytes).toString())
        });
    }
    fs.close(fd);
});

