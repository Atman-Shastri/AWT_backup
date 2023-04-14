//Select Operation

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
//            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"F:\\182\\Program 21\\Program 21\\App_Data\\EMPLOYEE.mdf\";Integrated Security=True");
//            con.Open();
//            SqlCommand cmd = new SqlCommand();
//            cmd.CommandText = "insert into emp(id,name,salary) " + "values('" + int.Parse(TextBox1.Text) + "'," + "'" + TextBox2.Text + "'," + "'" + float.Parse(TextBox3.Text) + "'" + ")";

//            cmd.Connection = con;
//            int result = cmd.ExecuteNonQuery();
//            if (result > 0)
//            {
//                SqlCommand cmd1 = new SqlCommand("Select * from emp", con);
//                SqlDataReader dr = cmd1.ExecuteReader();
//                GridView1.DataSource = dr;
//                GridView1.DataBind();
//                Label6.Visible = true;
//            }
//            else
//            {
//                Console.WriteLine("Try again");
//            }
//            con.Close();
//        }
//    }
//}

//Update & Delete Operations


using System;
using System.Collections.Generic;
using System.ComponentModel;
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
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"F:\\182\\Program 21\\Program 21\\App_Data\\EMPLOYEE1.mdf\";Integrated Security=True");
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
            SqlCommand cmd = new SqlCommand("update emp set name='" + TextBox5.Text + "'" + " where Id=" +
            int.Parse(DropDownList1.SelectedValue.ToString()), con);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("Update Successfully");
            }
            else
            {
                Response.Write("Error");
            }
            con.Close();


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from emp where Id=" +
            int.Parse(DropDownList1.SelectedValue.ToString()), con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TextBox5.Text = dr[1].ToString();
            dr.Close();
            DropDownList1.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from emp where Id=" + int.Parse(DropDownList1.SelectedValue.ToString()), con);
            int result = cmd.ExecuteNonQuery();
            
            if (result > 0)
            {
                TextBox5.Text = "";
                Console.WriteLine("Updated Successfully");
            }
            else
            {
                Console.WriteLine("Try again");
            }
            
            DropDownList1.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           


        }
    }
}
