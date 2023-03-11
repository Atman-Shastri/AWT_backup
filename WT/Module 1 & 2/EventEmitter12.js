var emitter = require('events').EventEmitter;
function LoopProcesor(num) {
    var e = new emitter();
    setTimeout(() => {
        for (var i=1;i<num;i++) {
            e.emit("Before Process",i);
            console.log("Processing for value"+i);
            e.emit("AfterProcess",i);
            }
    }, 2000);
    return e;
}
var lp=LoopProcesor(4);
    lp.on("BeforeProcess", (data)=>{
        console.log("Before Processing"+data);
   });
   lp.on("AfterProcess",(data)=>{
    console.log("Processing completed for"+data);
   });