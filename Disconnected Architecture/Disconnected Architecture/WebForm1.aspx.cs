using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Disconnected_Architecture
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"E:\\182\\Disconnected Architecture\\Disconnected Architecture\\App_Data\\EMPLOYEE.mdf\";Integrated Security=True");
        static SqlDataAdapter da;
        static DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                da = new SqlDataAdapter("select * from emp", con);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                ds = new DataSet();
                da.Fill(ds, "emp");
                DropDownList1.DataSource = ds.Tables[0];
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into emp(id,name,salary) " + "values('" + int.Parse(TextBox2.Text) + "'," + "'" + TextBox2.Text + "'," + "'" + float.Parse(TextBox3.Text) + "'" + ")";
            cmd.Connection = con;
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                SqlCommand cmd1 = new SqlCommand("Select * from emp", con);
                SqlDataReader dr = cmd1.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                Label6.Visible = true;
            }
            else
            {
                Console.WriteLine("Try again");
            }
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}