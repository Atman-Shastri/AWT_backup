var events = require('events');
var eventemitter=new events.EventEmitter();

//Event1
function handler1(data){
    console.log("First Event Occured!!" +data);
}

eventemitter.on("First_event",handler1);

eventemitter.emit("First_event"," This data is handled");

//Event2
eventemitter.addListener("Second_event",function(val){
    console.log("Event 2 is triggered"+val);
});

eventemitter.emit("Second_event"," Passing Data to 2nd Event");