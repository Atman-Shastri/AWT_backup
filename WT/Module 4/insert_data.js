var http = require('http');
var fs = require('fs');
var qs = require('querystring');
var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    port: "3306",
    user: "root",
    password: "",
    database: "college"
});
var server = http.createServer((req, res) => {
    var body = "";
    if (req.method == 'GET') {
        res.writeHead(200, { 'Content-Type': 'text/html' })
        fs.createReadStream("register.html").pipe(res);
    }
    else if (req.method == 'POST') {
        var formdata = "";
        req.on("data", (chunk) => {
            formdata += chunk;
            var data = qs.parse(formdata);
            body = "\n Name: " + data.sname + "\n Phone no: " + data.scontact + "\n Address: " + data.saddress;
            con.connect((err) => {
                if (err) throw err;
                var sql = "Insert into student(Name,Contact,Address) values('" + data.sname + "','" + data.scontact + "','" + data.saddress + "')";
                con.query(sql, (error, result) => {
                    if (error) throw error;
                    console.log(result);
                });
            });
        });
    }
    req.on("end", () => {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(body);
    })
});

server.listen(5000);