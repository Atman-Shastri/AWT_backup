var events = require('events');
var eventemitter=new events.EventEmitter();

function handler1(data){
    console.log("First Event Occured!!" +data);
}

eventemitter.on("First_event",handler1);

eventemitter.emit("First_event","This data is handled");

