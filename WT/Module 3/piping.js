var fs = require('fs');
var myReadStream = fs.createReadStream('writefile.txt');
var myWriteStream = fs.createWriteStream('wrote_by_piping.txt');
myReadStream.pipe(myWriteStream);