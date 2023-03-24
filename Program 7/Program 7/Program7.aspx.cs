using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program_7
{
    public partial class Program7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Atman Shastri, 182";
            Label1.CssClass = "red-bg";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "Atman Shastri, 182";
            Label1.CssClass = "blue-bg";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "Atman Shastri, 182";
            Label1.CssClass = "green-bg";
        }
    }
}