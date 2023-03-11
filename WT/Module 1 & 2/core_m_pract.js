var file_system = require('fs');
var oper_sys=require('os');

file_system.writeFileSync("data.txt","My first node js file");
console.log(oper_sys.arch());
console.log(oper_sys.freemem());