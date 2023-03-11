var fs= require("fs");
// var events=require('events');
// var eventemitter=new events.EventEmitter(); 
var stream=fs.createReadStream("data.txt");

stream.on('open',function(){

    console.log("File Opened!!");

});
