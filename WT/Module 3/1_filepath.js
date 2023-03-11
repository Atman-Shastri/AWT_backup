const { join, resolve } = require('path');
var path = require('path');

const filepath = 'C:/Users/admin/Desktop/Batch C Roll No 182/WT/Module 3/data.txt'

console.log("Directory Name: " + path.dirname(filepath));
console.log("Base Name: " + path.basename(filepath));
console.log("Extension Type: " + path.extname(filepath));

var name = 'mca'
console.log(path.join("User Defined Path: ","/","users",name,'data.txt'));
console.log("Actual Path: " + path.resolve("data.txt"));