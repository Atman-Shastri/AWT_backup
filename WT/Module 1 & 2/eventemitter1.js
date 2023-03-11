var events = require("events");
var eventemitter=new events.EventEmitter();

eventemitter.on("First_event",function(){
    console.log("First Event Occured!!");
});

eventemitter.emit("First_event");

