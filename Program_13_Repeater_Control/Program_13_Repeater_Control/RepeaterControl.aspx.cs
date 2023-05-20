using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program_13_Repeater_Control
{
    public partial class RepeaterControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            TextBox text_id = (TextBox)e.Item.FindControl("TextBox1");
            TextBox text_name = (TextBox)e.Item.FindControl("TextBox2");
            TextBox text_class = (TextBox)e.Item.FindControl("TextBox3");
            if (e.CommandName == "Update")
            {
                SqlDataSource1.UpdateParameters["Id"].DefaultValue = text_id.Text;
                SqlDataSource1.UpdateParameters["Name"].DefaultValue = text_name.Text;
                SqlDataSource1.UpdateParameters["Price"].DefaultValue = text_class.Text;
                SqlDataSource1.Update();
            }
            if (e.CommandName == "Delete")
            {
                SqlDataSource1.DeleteParameters["Id"].DefaultValue = text_id.Text;
                SqlDataSource1.Delete();
            }
            if (e.CommandName == "Insert")
            {
                TextBox text_id_ins = (TextBox)e.Item.FindControl("TextBox4");
                TextBox text_name_ins = (TextBox)e.Item.FindControl("TextBox5");
                TextBox text_class_ins = (TextBox)e.Item.FindControl("TextBox6");
                SqlDataSource1.InsertParameters["Name"].DefaultValue = text_name_ins.Text;
                SqlDataSource1.InsertParameters["Price"].DefaultValue = text_class_ins.Text;
                SqlDataSource1.Insert();
            }

        }

    }
}