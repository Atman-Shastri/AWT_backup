var http = require('http');

var server = http.createServer((req,res)=> {
   //
});

server.listen(9000);

setTimeout(()=> {
    server.close();
    server.unref();
},10000);