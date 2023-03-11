const express = require('express');
const EventEmitter = require('events');
const e = require('events');

var app=express();
var ee = new EventEmitter();
var counter=0;

ee.on("CounterAPI",()=>{
    counter++;
    console.log("NO. of times visited: " + counter);
})

app.get('/',(req,resp)=>{
    resp.send("API called");
    ee.emit("CounterAPI");
})

app.get("/add",(req,resp)=>{
    resp.send("Add api called");
    ee.emit("CounterAPI");
})

app.listen(5000);