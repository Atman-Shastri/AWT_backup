using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program_9
{
    public partial class Program10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            if (e.PostBackValue == "center")
            {
                Label1.Text = "Success";
                Label1.ForeColor = System.Drawing.Color.DarkViolet;
            }
            else if(e.PostBackValue == "notcenter")
            {
                Label1.Text = "Not successful";
                Label1.ForeColor = System.Drawing.Color.IndianRed;
            }
        }
    }
}