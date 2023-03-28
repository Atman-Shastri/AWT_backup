using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program_9
{
    public partial class Program_9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label4.Font.Name=DropDownList1.SelectedValue.ToString();
            
            
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label4.Font.Size = int.Parse(DropDownList2.SelectedValue);
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked==true)
            {
                Label4.Font.Bold=true;
            }
            else 
            {
                Label4.Font.Bold=false;
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked == true)
            {
                Label4.Font.Italic = true;
            }
            else
            {
                Label4.Font.Italic = false;
            }
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox3.Checked == true)
            {
                Label4.Font.Underline = true;
            }
            else
            {
                Label4.Font.Underline = false;
            }
        }
    }
}