using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WCF_Module_5_and_6
{
    public partial class Program_31 : System.Web.UI.Page
    {
        ServiceReference1.Program_3Client sc = new ServiceReference1.Program_3Client();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int result = sc.Add(Convert.ToInt32(TextBox1.Text), Convert.ToInt32(TextBox2.Text));
            Label1.Text = result.ToString();

        }
    }
}