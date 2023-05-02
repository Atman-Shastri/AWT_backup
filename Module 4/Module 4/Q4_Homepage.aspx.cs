using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_4
{
    public partial class Q4_Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)//Session value is assign on the text box  
            {
                HttpCookie cookie = Request.Cookies["info"];
                Response.Write("Welcome to the college Fest " + cookie["name"].ToString() + ".....You are Successfully Registered for the Event!!!");
                // Response.Write("welcome " + Session["name"].ToString());
            }
            else
            {
                Response.Redirect("~/Program 4.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();//
            Session.Remove("name");
            Response.Redirect("~/Program 4.aspx");
        }
      }
}