using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoredProcedure
{
    public partial class StoredProcedure : System.Web.UI.Page
    {
        SqlConnection con;
        string cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\182\\StoredProcedure\\StoredProcedure\\App_Data\\Employee.mdf;Integrated Security=True";

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
            ID_dropdown_list.DataSource = cmd.ExecuteReader();
            ID_dropdown_list.DataTextField = "Id";
            ID_dropdown_list.DataValueField = "Id";
            ID_dropdown_list.DataBind();
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

        protected void ID_dropdown_list_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            int id1 = int.Parse(ID_dropdown_list.SelectedItem.Value);
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
                    Name_TextBox.Text = reader[1].ToString();

                }

            }
            con.Close();

        }

        protected void Insert_Button_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string txtname = Name_TextBox.Text;
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

        protected void Delete_Button_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            int id1 = int.Parse(ID_dropdown_list.SelectedItem.Value);
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

        protected void Update_Button_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "sp_updatedata";
            cmd.Parameters.AddWithValue("Id", ID_dropdown_list.SelectedItem.Value);
            cmd.Parameters.AddWithValue("name", Name_TextBox.Text);

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