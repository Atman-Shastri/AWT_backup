var http = require('http');
var fs = require('fs');

var server = http.createServer((req,res)=> {
    res.writeHead(200,{'Content-Type':'text/plain'});
    var datastream = fs.createReadStream("data.txt");
    datastream.pipe(res);
});

server.listen(3000);