using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_4
{
    public partial class Program_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("data");//Creates and names a new cookie.
                                                       //The HttpCookie class gets and sets properties of individual cookies
            cookie.Values["name"] = TextBox1.Text;
            cookie.Values["age"] = TextBox2.Text;
            cookie.Values["height"] = TextBox3.Text;
            cookie.Values["email"] = TextBox4.Text;
            string gender = "";
            if (RadioButton1.Checked)
            { gender = "Male"; }
            if (RadioButton2.Checked)
            { gender = "Female"; }
            cookie.Values["gender"] = gender;
            Response.Cookies.Add(cookie);//add the specified cookie in cookies collection
            if (gender == "Male")
                Response.Redirect("~/p3_male.aspx");//Response. Redirect method redirects a request to a new URL and specifies the new URL 
            else
                Response.Redirect("~/p3_female.aspx");//Response. Redirect method redirects a request to a new URL and specifies the new URL

        }
    }
}