using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoredProcedure
{
    public partial class RepeaterControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
          //  TextBox txt_id = (TextBox)e.Item.FindControl("TextBox1");
         //   TextBox txt_salary = (TextBox)e.Item.FindControl("TextBox2");
          //  CheckBox chk = (CheckBox)e.Item.FindControl("CheckBox1");
            TextBox txt_name1 = (TextBox)e.Item.FindControl("Textbox3");
         //   TextBox txt_salary1 = (TextBox)e.Item.FindControl("Textbox4");


            if (e.CommandName == "Insert")
            {



                SqlDataSource1.InsertParameters["emp_name"].DefaultValue = txt_name1.Text;
              //  SqlDataSource1.InsertParameters["emp_salary"].DefaultValue = txt_salary1.Text;

                SqlDataSource1.Insert();
            }
            //TextBox txt_Prod_Id = (TextBox)e.Item.FindControl("TextBox1"); TextBox txt_Prod_Name = (TextBox)e.Item.FindControl("TextBox2"); CheckBox chk = (CheckBox)e.Item.FindControl("CheckBox1");


            if (e.CommandName == "Update")

            {

                SqlDataSource1.UpdateParameters["emp_name"].DefaultValue = txt_name1.Text;
             //   SqlDataSource1.UpdateParameters["emp_salary"].DefaultValue = txt_salary1.Text;
                SqlDataSource1.Update();

            }

            if (e.CommandName == "delete")

            {

                SqlDataSource1.DeleteParameters["emp_name"].DefaultValue = txt_name1.Text;
              //  SqlDataSource1.DeleteParameters["emp_salary"].DefaultValue = txt_salary1.Text;

                SqlDataSource1.Delete();

            }
        }

    }
}
