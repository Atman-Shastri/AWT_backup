var fs = require('fs');

fs.open("data.txt","w",(error,fd)=>{

    if(error){
        console.log("Error Occurred"+error);
    }
    else {
        console.log("File is opened");
        fs.close(fd,(error)=>{
            if(error) {
                 console.log("Error= "+error)
            }
            else {
                console.log("File is closed");
            }
        });
         }
});

var path = "data_2.txt"
fs.readFile(path,"UTF-8",(error,data)=>{
    if(error){
        console.log("Error Occured"+error);
    }
    else{
        console.log("File Content = "+data);
    }
});

var path1 = "data_3.txt"
var written_string = "Code Successful";
fs.writeFile(path1,written_string,"UTF-8",(error)=>{
    if(error){
        console.log("Maybe file doesn't exist, or no permissions"+error);
    }
    else{
        console.log("Wrote succesfully = " + written_string);
    }
});

var path1 = "data_3.txt"
var written_string1 = "append";
fs.appendFile(path1,written_string1,"UTF-8",(error)=>{
    if(error){
        console.log("Maybe file doesn't exist, or no permissions"+error);
    }
    else{
        console.log("Wrote succesfully = " + written_string1);
    }
});

fs.rename("Groceries.csv","Vegetables.csv",(error)=>{
    console.log("Renaming Error = "+error);
});

fs.unlink("data.txt",(error)=>{
    console.log("Deleting Error = "+ error);
});

fs.appendFile("data.txt","\nVegetables",(error)=>{
    console.log("Appending Error = "+ error);
});