using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO.NET_Programs
{
    public partial class StoredProcedure : System.Web.UI.Page
    {
        SqlConnection con;
        string cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"F:\\182\\ADO .NET Programs\\ADO .NET Programs\\App_Data\\Employee.mdf\";Integrated Security=True";

        public void gridFill()
        {

            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("sp_selectdata", con);
            con.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }


        public void ddl_fill()
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("sp_selectdata", con);
            con.Open();
            DropDownList1.DataSource = cmd.ExecuteReader();
            DropDownList1.DataTextField = "Id";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();
            con.Close();

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            if (!Page.IsPostBack)
            {
                ddl_fill();
                gridFill();

            }


        }




        protected void Button1_Click(object sender, EventArgs e)//insert
        {
            SqlConnection con = new SqlConnection(cs);
            string txtname = TextBox1.Text;
            SqlCommand cmd = new SqlCommand("sp_insertdata", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", txtname);
            con.Open();
            int res = cmd.ExecuteNonQuery();
            if (res != 0)
            {

                ddl_fill();
                gridFill();
            }
            con.Close();



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            int id1 = int.Parse(DropDownList1.SelectedItem.Value);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "sp_selectbyid";
            cmd.Parameters.AddWithValue("Id", id1);
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();

                }

            }
            con.Close();
        }




        protected void Button3_Click(object sender, EventArgs e)//delete button
        {
            SqlConnection con = new SqlConnection(cs);
            int id1 = int.Parse(DropDownList1.SelectedItem.Value);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "sp_deletedata";
            cmd.Parameters.AddWithValue("Id", id1);
            cmd.Connection = con;
            int res = cmd.ExecuteNonQuery();
            if (res != 0)
            {

                ddl_fill();
                gridFill();
            }
            con.Close();



        }

        protected void Button2_Click1(object sender, EventArgs e)//update
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "sp_updatedata";
            cmd.Parameters.AddWithValue("Id", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("name", TextBox1.Text);

            cmd.Connection = con;
            int res = cmd.ExecuteNonQuery();
            if (res != 0)
            {
                gridFill();
                ddl_fill();
            }
            con.Close();

        }
    }

}