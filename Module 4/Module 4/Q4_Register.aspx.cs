using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_4
{
    public partial class Q4_Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""E:\182\Module 4\Module 4\App_Data\student_db.mdf"";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string name = TextBox1.Text;
            string password = TextBox2.Text;
            string email = TextBox3.Text;
            string mobile = TextBox4.Text;
            SqlCommand cmd = new SqlCommand("insert into login_info2 values('" + name + "', '" + password + "', '" + email + "', '" + mobile + "')", con);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("data inserted");
            }
            else
            {
                Response.Write("something went wrong");
            }
            con.Close();
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Program 4.aspx");//pass name of login page
        }
    }
}