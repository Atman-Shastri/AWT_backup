var emitter = require('events').EventEmitter;
var util = require('util');
function LoopProcesor(num) {
    var e =this;
    setTimeout(() => {
        for (var i=1;i<num;i++) {
            e.emit("Before Process",i);
            console.log("Processing for value"+i);
            e.emit("AfterProcess",i);
            }
    }, 2000);
    return this;
}
util.inherits(LoopProcesor,emitter);
var lp= new LoopProcesor(4);
    lp.on("BeforeProcess", (data)=>{
        console.log("Before Processing"+data);
   });
   lp.on("AfterProcess",(data)=>{
    console.log("Processing completed for"+data);
   });