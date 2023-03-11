var http = require('http');
var server = http.createServer((req,res)=> {
    
    console.log("Request to Server: "+req);
    res.writeHead(200,{'Content-Type':'text/plain'});
    res.write("response");

});

server.listen(5000);