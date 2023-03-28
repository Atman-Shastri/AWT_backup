using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program_9
{
    public partial class Program_12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/image1/") + FileUpload1.FileName);
                Image1.ImageUrl = "~/image1/" + FileUpload1.FileName;
                Label1.Text = FileUpload1.FileName + "&nbsp" + "uploaded successfully";
            }
            else
            {
                Label1.Text = "select image first";
            }
        }
    }
}