var mysql = require('mysql');
var ejs = require('ejs');
var express = require('express');

var app = express();
app.set("view engine","ejs");
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password:"",
    database: "college"
});


app.get("/data",(req,res)=>{
    con.connect((err)=>{
        if (err) throw err;
        var get_sql="select * from student";
        con.query(get_sql,(error,data,fields)=>{
            if (error) throw error;
            res.render("./../student-list",{title:"Students Data",studentdata:data});
        });
    });
});

app.listen(3333);


