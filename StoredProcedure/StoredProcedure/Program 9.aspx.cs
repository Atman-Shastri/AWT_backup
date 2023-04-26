using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoredProcedure
{
    public partial class Program_9 : System.Web.UI.Page
    {
        public void GridFill()
        {
            string cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\182\\StoredProcedure\\StoredProcedure\\App_Data\\Employee.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand(cs, con);
            cmd.CommandText = "select * from emp";
            cmd.Connection = con;
            GridView1.EmptyDataText = "No Records Found";
            SqlDataReader read = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GridFill();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ID_TextBox.Text = GridView1.SelectedRow.Cells[1].Text;
            Name_Textbox.Text = GridView1.SelectedRow.Cells[2].Text;

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\182\\StoredProcedure\\StoredProcedure\\App_Data\\Employee.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand(cs, con);
            cmd.CommandText = "insert into emp(name) values ('" + Insert_Name_TextBox.Text + "')";
            cmd.Connection = con;
            int result = cmd.ExecuteNonQuery();
            if (result != 0)
            {
                Response.Write("Data inserted successfully");
                SqlCommand cmd1 = new SqlCommand("select * from emp", con);
                cmd1.ExecuteNonQuery();
                GridFill();

            }
            else
            {
                Response.Write("Try Again");
            }
            Name_Textbox.Text = "";
            ID_TextBox.Text = "";
            con.Close();
        }
    }
}