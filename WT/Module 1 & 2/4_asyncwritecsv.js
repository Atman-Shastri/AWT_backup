var fs=require('fs').promises;

async function writetocsv(){
    try{
        const csvheader = "Name,Quantity,Cost";
        await fs.writeFile("Groceries.csv",csvheader);
    } catch(error) {
        console.log("Error Occured"+error);
    }
}
async function additems(Name,Quantity,Cost){
    try{
        var csvline= `\n${Name},${Quantity},${Cost}`; 
        await fs.writeFile("Groceries.csv",csvline,{flag:'a'})
    }catch(error){
        console.log("Error Occurred while appending"+error);
    }
}

writetocsv();
additems("Bread",2,60);
additems("Butter",1,50);
