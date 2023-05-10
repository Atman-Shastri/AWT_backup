using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_4
{
    public partial class Program_10 : System.Web.UI.Page
    {
        static int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (i == 0)
            {
                Image1.ImageUrl = "~/images/1.png";
                i = 1;
            }
            else if (i == 1)
            {
                Image1.ImageUrl = "~/images/adiss.png";
                i = 2;
            }
            else
            {
                Image1.ImageUrl = "~/images/2.png";
                i = 0;
            }
        }
    }
}