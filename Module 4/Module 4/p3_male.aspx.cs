using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_4
{
    public partial class p3_male : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int weight = 0;
            string name = Request.Cookies["data"].Values["name"];
            string age = Request.Cookies["data"].Values["age"];
            string height = Request.Cookies["data"].Values["height"];
            string email = Request.Cookies["data"].Values["email"];
            if (int.Parse(height) == 150)
            { weight = 60; }
            if (int.Parse(height) == 160)
            { weight = 65; }
            if (int.Parse(height) == 170)
            { weight = 70; }
            if (int.Parse(height) == 180)
            { weight = 75; }
            if (int.Parse(height) == 190)
            { weight = 80; }
            Label1.Text = "Name : " + name + "\nAge : " + age + "\nHeight : " + height +
            "\nIdeal Weight : " + weight;

        }
    }
}