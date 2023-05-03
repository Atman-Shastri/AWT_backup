using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_4
{
    public partial class Program_1 : System.Web.UI.Page
    {
        public string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ViewState["name"] = TextBox1.Text;
            ViewState["password"] = TextBox2.Text;

            TextBox1.Text = TextBox2.Text = string.Empty;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (ViewState["name"] != null)
            {
                TextBox1.Text = ViewState["name"].ToString();
            }
            if (ViewState["password"] != null)
            {
                TextBox2.Text = ViewState["password"].ToString();
            }


        }
    }
}