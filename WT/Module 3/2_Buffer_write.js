var fs = require('fs');
fs.open("data.txt",'a',(err,fd)=>{
    if (err) {
        console.log("Error Occurred"+err);
    }
    else{
        var buffer = new Buffer.alloc(1024);
        buffer.write("New Data is here");
        fs.write(fd,buffer,0,buffer.length,null,(err,bytes)=>{
            console.log("Wrote " + bytes + " bytes")
        });
    }
    fs.close(fd);
});