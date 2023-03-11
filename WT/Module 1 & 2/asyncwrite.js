var fs= require('fs').promises;
var input_string = "Hello World";
async function writeFile(){
    try{
    await fs.writeFile("data.txt",input_string);
    console.log("Data is written = "+ input_string);
    }
    catch(error){
        console.log("Error occured while writing");
    }
}

writeFile();