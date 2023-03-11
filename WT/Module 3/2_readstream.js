// var fs = require('fs');
// var readstream = fs.createReadStream("data.txt");
// readstream.on("data",function(filedata){
//     console.log(filedata.toString())
// });

var fs = require('fs');
var readstream = fs.createReadStream("data.txt");
var writestream =fs.createWriteStream("writefile.txt")
readstream.on("data",function(filedata){
    writestream.write(filedata);
    console.log(filedata.toString())
});