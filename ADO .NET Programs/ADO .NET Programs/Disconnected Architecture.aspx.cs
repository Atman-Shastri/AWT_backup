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
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"F:\\182\\ADO .NET Programs\\ADO .NET Programs\\App_Data\\Employee.mdf\";Integrated Security=True");
        static SqlDataAdapter da;
        static DataSet dsemp;
        static SqlCommandBuilder cb;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                da = new SqlDataAdapter("select * from emp", con);
                cb = new SqlCommandBuilder(da);
                dsemp = new DataSet();
                da.Fill(dsemp, "emp");
                ID_dropdown_list.DataSource = dsemp.Tables[0];
                ID_dropdown_list.DataTextField = "id";
                ID_dropdown_list.DataValueField = "Id";
                ID_dropdown_list.DataBind();
                GridView1.DataSource = dsemp.Tables[0];
                GridView1.DataBind();
                Message_Label.Text = "Viewing Employee Table";
                Message_Label.Visible = true;
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
        protected void Insert_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from emp", con);
            cb = new SqlCommandBuilder(da);
            dsemp = new DataSet();
            da.Fill(dsemp, "emp");
            DataRow dr = dsemp.Tables[0].NewRow();
            dr["name"] = Name_TextBox.Text;
            dsemp.Tables[0].Rows.Add(dr);
            da.Update(dsemp.Tables["emp"]);
            ID_dropdown_list.DataSource = dsemp.Tables[0];
            GridView1.DataSource = dsemp.Tables[0];
            ID_dropdown_list.DataBind();
            GridView1.DataBind();
            Message_Label.Text = "Inserted Successfully";
            Message_Label.Visible = true;
        }

        protected void View_Button_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from emp", con);
            cb = new SqlCommandBuilder(da);
            dsemp = new DataSet();
            da.Fill(dsemp, "emp");
            GridView1.DataSource = dsemp.Tables[0];
            GridView1.DataBind();
            Message_Label.Text = "Viewing Employee Table";
            Message_Label.Visible = true;

        }
        protected void ID_dropdown_list_SelectedIndexChanged(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from emp", con);
            cb = new SqlCommandBuilder(da);
            dsemp = new DataSet();
            da.Fill(dsemp, "emp");

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
                da = new SqlDataAdapter("select * from emp", con);
                cb = new SqlCommandBuilder(da);
                dsemp = new DataSet();
                da.Fill(dsemp, "emp");
            foreach (DataRow dr in dsemp.Tables[0].Rows)
            {
                if (dr["Id"].ToString() == ID_dropdown_list.SelectedItem.Value)
                {

                    dr["name"] = Name_TextBox.Text;
                }
            }

            da.Update(dsemp.Tables["emp"]);
            GridView1.DataSource = dsemp.Tables[0];
            GridView1.DataBind();
            Message_Label.Text = "Updated Successfully";
            Message_Label.Visible = true;
        }

        protected void Delete_Button_Click(object sender, EventArgs e)
        {
     
            foreach (DataRow dr in dsemp.Tables[0].Rows)
            {
                if (dr["Id"].ToString() == ID_dropdown_list.SelectedValue.ToString())
                {
                    dr.Delete();
                }
            }
            da.Update(dsemp.Tables[0]);
            ID_dropdown_list.DataSource = dsemp.Tables[0];
            GridView1.DataSource = dsemp.Tables[0];
            ID_dropdown_list.DataBind();
            GridView1.DataBind();
            Message_Label.Text = "Deleted Successfully";
            Message_Label.Visible = true;

        }
    }
}
