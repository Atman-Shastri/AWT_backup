var http = require('http');
var fs = require('fs');

var server = http.createServer();

server.on("request",(req,res)=>{
        var url = req.url;
        console.log("Fetched URL=" + url);
        if(url==("/dashboard")) {
            res.writeHead(200,{'Content-Type' : 'text/html'});
            //res.write("This is my dashboard");
            var DashboardRead = fs.createReadStream("dashboard.html");
            DashboardRead.pipe(res);

        } else {
           // res.writeHead(404,{'Content-Type': 'text/plain'})
            res.write("404 \n Page not found");
            res.end();
        }
});

server.listen(5000);
