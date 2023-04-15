using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ADO.NET_Programs
{
    public partial class Disconnected_Architecture : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"E:\\182\\ADO .NET Programs\\ADO .NET Programs\\App_Data\\Employee.mdf\";Integrated Security=True");
        static SqlDataAdapter da;
        static DataSet dsemp = new DataSet();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GridView1.DataSource = null; GridView1.DataBind();
                SqlDataAdapter da = new SqlDataAdapter("select * from emp1", con);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                DataSet dsemp = new DataSet();
                da.Fill(dsemp, "emp1");
                ID_dropdown_list.DataSource = dsemp.Tables[0];
                ID_dropdown_list.DataTextField = "id";
                ID_dropdown_list.DataValueField = "Id";
                ID_dropdown_list.DataBind();
                GridView1.DataSource = dsemp.Tables[0];
                GridView1.DataBind();
                clear();
            }
            
        }
       /* protected void Grid_Bind()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from emp1", con);
            da.Fill(dsemp, "emp1");
            GridView1.DataSource = dsemp.Tables[0];
            GridView1.DataBind();
           
            Message_Label.Text = "Viewing Employee Table";
            Message_Label.Visible = true;
            con.Close();
        }*/

        void clear()
        {
            Name_TextBox.Text = string.Empty;
        }
        protected void Insert_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = null; GridView1.DataBind();
            //string[] dateParts = Date_TextBox.Text.Split('-');
            //string formattedDate = dateParts[2] + '-' + dateParts[1] + "-" + dateParts[0];
            //con.Open();
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = "insert into emp(Name,Salary,[Date of Birth],Contact) " +
            //                  "values('" + Name_TextBox.Text + "'," + Salary_TextBox.Text + "," + 
            //                   "'" + formattedDate + "','" + Contact_TextBox.Text + "'" + ")";
            //cmd.Connection = con;
            //int result = cmd.ExecuteNonQuery();
            //if (result > 0)
            //{
            //    viewing();
            //}
            //else
            //{
            //    Message_Label.Text = "Try Again";
            //    Message_Label.Visible = true;
            //}
            //con.Close();
            SqlDataAdapter da = new SqlDataAdapter
                ("select * from emp1", con);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            DataSet ds = new DataSet();
            da.Fill(ds, "emp1");
            DataRow dr = ds.Tables[0].NewRow();
            dr["name"] = Name_TextBox.Text;
            ds.Tables[0].Rows.Add(dr);
            da.Update(ds.Tables["emp1"]);
            GridView1.DataSource = dsemp.Tables[0];
            GridView1.DataBind();
            clear();
        }

        protected void View_Button_Click(object sender, EventArgs e)
        {
            con.Open();
           
        }
        protected void ID_dropdown_list_SelectedIndexChanged(object sender, EventArgs e)
        {
            // con.Open();
            // SqlCommand cmd5 = new SqlCommand("select * from emp where Id=" +
            //                    int.Parse(ID_dropdown_list.SelectedValue.ToString()),con); 
            // SqlDataReader reader2 = cmd5.ExecuteReader();
            // reader2.Read();
            // Name_TextBox.Text = reader2[1].ToString();
            //Salary_TextBox.Text = reader2[2].ToString();
            //Date_TextBox.Text = reader2[3].ToString();
            //Contact_TextBox.Text = reader2[4].ToString();
            // ID_dropdown_list.DataBind();
            // reader2.Close();
            // con.Close();
            DataSet dsemp = new DataSet();
            
            foreach (DataRow dr in dsemp.Tables[0].Rows)
            {
                if (dr["Id"].ToString() == ID_dropdown_list.SelectedValue.ToString())
                {
                    Name_TextBox.Text = dr["name"].ToString();
                }

            }
            
        }

            protected void Update_Button_Click(object sender, EventArgs e)
        {
            //string[] dateParts = Date_TextBox.Text.Split('-');
            //string formattedDate = dateParts[2] + '-' + dateParts[1] + "-" + dateParts[0];
            // con.Open();
            // SqlCommand cmd6 = new SqlCommand();
            ///cmd6.CommandText = "update emp set Name='"
            //                     + Name_TextBox.Text + "',Salary="
            //                     + Salary_TextBox.Text + "," + "[Date of Birth]='" + 
            //                    formattedDate + "'," + 
            //                     "Contact='" + Contact_TextBox.Text +
            //                     "' where Id=" + int.Parse(ID_dropdown_list.SelectedValue.ToString());
            // cmd6.Connection = con;
            // int result = cmd6.ExecuteNonQuery();
            // if(result > 0)
            // {
            //     viewing();
            // }
            // else
            // {
            //     Message_Label.Visible = true;
            //     Message_Label.Text = "Try Again";
            // }
            // con.Close();
            
                SqlDataAdapter da = new SqlDataAdapter("select * from emp1", con);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                DataSet ds = new DataSet();
                da.Fill(ds, "emp1");
                DataRow dr = ds.Tables[0].NewRow();
            //create a new row in same schema
                dr["name"] = Name_TextBox.Text;
                ds.Tables[0].Rows.Add(dr);
                da.Update(ds.Tables["emp1"]);
            GridView1.DataSource = dsemp.Tables[0];
            GridView1.DataBind();
        }

        protected void Delete_Button_Click(object sender, EventArgs e)
        {
            // con.Open();
            // SqlCommand cmd8 = new SqlCommand("delete from emp where Id=" + int.Parse(ID_dropdown_list.SelectedValue.ToString()),con);
            // Name_TextBox.Text = "";
            // Salary_TextBox.Text = "";
            //Date_TextBox.Text = "";
            // Contact_TextBox.Text = "";
            // int result = cmd8.ExecuteNonQuery();
            // if(result > 0) {
            //     Console.WriteLine("Deleted Successfully");
            //   viewing();
            // }
            // else
            // {
            //     Message_Label.Text = "Try Again";
            // }

            foreach (DataRow dr in dsemp.Tables[0].Rows)
            {
                if (dr["Id"].ToString() == Name_TextBox.Text)
                {
                    dr.Delete();
                }
            }
            da.Update(dsemp.Tables[0]);
            da = new SqlDataAdapter("select * from emp1", con);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            dsemp = new DataSet();
            da.Fill(dsemp, "emp1");
            ID_dropdown_list.DataSource = dsemp.Tables[0];
            ID_dropdown_list.DataTextField = "name";
            ID_dropdown_list.DataValueField = "Id";
            ID_dropdown_list.DataBind();
            GridView1.DataSource = dsemp.Tables[0];
            GridView1.DataBind();

        }
    }
}
