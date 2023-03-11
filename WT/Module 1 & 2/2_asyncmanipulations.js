var fs=require('fs').promises;

async function readFile(FilePath) {
    try {
    var data = await fs.readFile(FilePath);
    console.log(data.toString());
    }
    catch(error) {
    console.log("Error Occurred while reading");
    }
}

readFile("data.txt");
