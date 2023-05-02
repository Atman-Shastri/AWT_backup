using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_4
{
    public partial class Program_4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""E:\182\Module 4\Module 4\App_Data\student_db.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from login_info2 where name = '" + TextBox1.Text + "'and password = '" + TextBox2.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                HttpCookie cookie = new HttpCookie("info");
                Session["name"] = TextBox1.Text;////textbox value is stored in Session  
                cookie["name"] = TextBox1.Text;
                Response.Cookies.Add(cookie);
                Response.Redirect("~/Q4_Homepage.aspx");
            }
            else
            {
                Response.Write("invalid username password");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Q4_Register.aspx");
        }
    }
}