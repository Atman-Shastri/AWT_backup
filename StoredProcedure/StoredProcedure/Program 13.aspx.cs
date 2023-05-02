using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoredProcedure
{
    public partial class Program_13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            TextBox txt_id = (TextBox)e.Item.FindControl("TextBox1");
            TextBox txt_salary = (TextBox)e.Item.FindControl("TextBox2");
            CheckBox chk = (CheckBox)e.Item.FindControl("CheckBox1");


            if (e.CommandName == "Insert")
            {

                TextBox txt_name1 = (TextBox)e.Item.FindControl("Textbox3");

                SqlDataSource1.InsertParameters["emp_name"].DefaultValue = txt_name1.Text;
                SqlDataSource1.Insert();
            }

        }
    }
}