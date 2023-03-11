var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "college"
});

// function insert_multiple_data(){
//     con.connect((err)=>{
//         var data_items = [["sandhya","123456789","Thane"],["Souleh",'9876543231',"Mumbai"]];
//         var sql = "Insert into student(Name,Contact,Address) values ?";
//         con.query(sql,[data_items],(error,result)=>{
//             if(error) throw error;
//             console.log(result);
//         });
//     });
// }

// insert_multiple_data();

// function update_data(contact,Address) {
//     var sql_update = "Update student set contact='"+contact+"',address='"+Address+"' where name='sandhya'";
//     con.query(sql_update,(result,err)=>{
//         if(err) throw err;
//         console.log("Data Updated"+ result);
//     });
// }
// update_data("654654654","abc");

// function delete_data(name) {
//     var del_sql="Delete from student where name='"+name+"'";
//     con.query(del_sql,(result,err)=>{
//         if(err) throw err;
//         console.log("Data Deleted"+ result);
//     });
// }

// delete_data("Souleh");