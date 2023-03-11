var http = require('http');
var fs = require('fs');

var server = http.createServer((req,res)=> {
    
    res.writeHead(200,{'Content-Type': 'text/html'});
    var readstream= fs.createReadStream("module_3_index.html");
    readstream.pipe(res);
});

server.listen(8500);