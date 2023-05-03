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
            TextBox text_name = (TextBox)e.Item.FindControl("TextBox2");


            if (e.CommandName == "Insert")
            {



                TextBox text_name_ins = (TextBox)e.Item.FindControl("TextBox5");
                SqlDataSource1.InsertParameters["name"].DefaultValue = text_name_ins.Text;
                // SqlDataSource1.InsertParameters["Price"].DefaultValue = text_class_ins.Text;
                SqlDataSource1.Insert();

            }
            //TextBox txt_Prod_Id = (TextBox)e.Item.FindControl("TextBox1"); TextBox txt_Prod_Name = (TextBox)e.Item.FindControl("TextBox2"); CheckBox chk = (CheckBox)e.Item.FindControl("CheckBox1");


            if (e.CommandName == "Update")

            {

                SqlDataSource1.UpdateParameters["name"].DefaultValue = text_name.Text;
             //   SqlDataSource1.UpdateParameters["emp_salary"].DefaultValue = txt_salary1.Text;
                SqlDataSource1.Update();

            }

            if (e.CommandName == "Delete")

            {

                SqlDataSource1.DeleteParameters["name"].DefaultValue = text_name.Text;
           //     SqlDataSource1.DeleteParameters["emp_salary"].DefaultValue = txt_salary1.Text;

                SqlDataSource1.Delete();

            }
        }

    }
}