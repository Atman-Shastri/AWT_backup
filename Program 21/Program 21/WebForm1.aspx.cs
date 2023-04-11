//using System;
//using System.Collections.Generic;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace Program_21
//{
//    public partial class WebForm1 : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            SqlConnection con  = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"E:\\182\\Program 21\\Program 21\\App_Data\\EMPLOYEE.mdf\";Integrated Security=True");
//            con.Open();
//            SqlCommand cmd = new SqlCommand();
//            cmd.CommandText = "insert into emp(id,name,salary) " + "values('" + int.Parse(TextBox1.Text) + "'," + "'" + TextBox2.Text + "'," +"'" + float.Parse(TextBox3.Text) + "'" + ")";

//            cmd.Connection = con;
//            int result = cmd.ExecuteNonQuery();
//            if(result > 0)
//            {
//                Response.Write("Inserted Successfully");
//                SqlCommand cmd1 = new SqlCommand("Select * from emp",con);
//                SqlDataReader dr = cmd1.ExecuteReader();
//                GridView1.DataSource = dr;
//                GridView1.DataBind();
//            }
//            else
//            {
//                Console.WriteLine("Try again");
//            }
//            con.Close();
//        }
//    }
//}




using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program_21
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"E:\\182\\Program 21\\Program 21\\App_Data\\EMPLOYEE.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (!Page.IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from emp", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "id";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
                dr.Close();
                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from emp  where Id=" +
            int.Parse(DropDownList1.SelectedValue.ToString()), con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox5.Text = dr[0].ToString();
                TextBox6.Text = dr[1].ToString();
            }
            dr.Close();
            con.Close();

        }
    }
}