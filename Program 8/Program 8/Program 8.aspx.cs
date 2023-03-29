using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program_8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string name,order,time;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            name= TextBox1.Text;
            if (CheckBox1.Checked)
            {
                order += CheckBox1.Text + ",";
            }
            if (CheckBox2.Checked)
            {
                order += " " + CheckBox2.Text + " ";
            }
            if (CheckBox3.Checked)
            {
                order += "& " + CheckBox3.Text;
            }
            if(RadioButton1.Checked)
            {
                time = RadioButton1.Text;
            }
            else if (RadioButton2.Checked)
            {
                time = RadioButton2.Text;
            }

            Label4.Text = "Thank You Very Much for Ordering " + name + "." +
                "<br> You have chosen to eat " + order +
                " as your breakfast." +
                "<br> I will prepare it for you " +
                time + ".";
            Label4.Visible = true;
        }
    }
}