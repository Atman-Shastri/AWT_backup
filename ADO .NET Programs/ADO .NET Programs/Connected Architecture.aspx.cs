using System;
using System.Collections.Generic;
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
    public partial class Connected_Architecture : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"F:\\182\\ADO .NET Programs\\ADO .NET Programs\\App_Data\\Employee.mdf\";Integrated Security=True");
        
        protected void viewing()
        {
            SqlCommand cmd3 = new SqlCommand("select * from emp", con);
            GridView1.DataSource = cmd3.ExecuteReader();
            GridView1.DataBind();
            Message_Label.Text = "Viewing Employee Table";
            Message_Label.Visible = true;
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                con.Open();
                SqlCommand cmd4 = new SqlCommand("select * from emp", con);
                SqlDataReader reader1 = cmd4.ExecuteReader();
                ID_dropdown_list.DataSource = reader1;
                ID_dropdown_list.DataValueField = "Id";
                ID_dropdown_list.DataTextField = "id";
                ID_dropdown_list.DataBind();
                reader1.Close();
                con.Close();
            }
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            string[] dateParts = Date_TextBox.Text.Split('-');
            string formattedDate = dateParts[2] + '-' + dateParts[1] + "-" + dateParts[0];
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into emp(Name,Salary,[Date of Birth],Contact) " +
                              "values('" + Name_TextBox.Text + "'," + Salary_TextBox.Text + "," + 
                               "'" + formattedDate + "','" + Contact_TextBox.Text + "'" + ")";
            cmd.Connection = con;
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                viewing();
            }
            else
            {
                Message_Label.Text = "Try Again";
                Message_Label.Visible = true;
            }
            con.Close();
        }

        protected void View_Button_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd3 = new SqlCommand("select * from emp",con);
            GridView1.DataSource = cmd3.ExecuteReader();
            GridView1.DataBind();
            Message_Label.Text = "Viewing Employee Table";
            Message_Label.Visible = true;
            con.Close();
        }
        protected void ID_dropdown_list_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd5 = new SqlCommand("select * from emp where Id=" +
                               int.Parse(ID_dropdown_list.SelectedValue.ToString()),con); 
            SqlDataReader reader2 = cmd5.ExecuteReader();
            reader2.Read();
            Name_TextBox.Text = reader2[1].ToString();
            Salary_TextBox.Text = reader2[2].ToString();
            Date_TextBox.Text = reader2[3].ToString();
            Contact_TextBox.Text = reader2[4].ToString();
            ID_dropdown_list.DataBind();
            reader2.Close();
            con.Close();
        }

        protected void Update_Button_Click(object sender, EventArgs e)
        {
            string[] dateParts = Date_TextBox.Text.Split('-');
            string formattedDate = dateParts[2] + '-' + dateParts[1] + "-" + dateParts[0];
            con.Open();
            SqlCommand cmd6 = new SqlCommand();
            cmd6.CommandText = "update emp set Name='"
                                + Name_TextBox.Text + "',Salary="
                                + Salary_TextBox.Text + "," + "[Date of Birth]='" + 
                                formattedDate + "'," + 
                                "Contact='" + Contact_TextBox.Text +
                                "' where Id=" + int.Parse(ID_dropdown_list.SelectedValue.ToString());
            cmd6.Connection = con;
            int result = cmd6.ExecuteNonQuery();
            if(result > 0)
            {
                viewing();
            }
            else
            {
                Message_Label.Visible = true;
                Message_Label.Text = "Try Again";
            }
            con.Close();
            
        }
    }
}
