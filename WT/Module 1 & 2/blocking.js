var fs = require('fs');
var data = fs.readFileSync("data.txt");

console.log(data.toString());
console.log("Program ended");