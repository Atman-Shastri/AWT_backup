using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_5_and_6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            WebService1 S1 = new WebService1();
            int result = S1.ADD(Convert.ToInt32(TextBox1.Text), Convert.ToInt32(TextBox2.Text));
            Label1.Text = result.ToString();

        }
    }
}