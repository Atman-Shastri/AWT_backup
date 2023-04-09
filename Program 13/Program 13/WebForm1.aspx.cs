using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program_13
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime d1 = new DateTime(2023, 5, 1);
            if(e.Day.Date.ToString() == d1.ToString())
            {
                e.Cell.Controls.Add(new LiteralControl("\n Maharastra Day")); e.Cell.BackColor = System.Drawing.Color.Pink; e.Cell.Font.Bold = true;
                e.Cell.ForeColor = System.Drawing.Color.Black;
            }
        }
    }
}