using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_4
{
    public partial class Program_8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {
                Label1.Text += "page is posted back";

            }
            else
            {
                Label1.Text += "page is created";
            }
            if (Cache["item"] == null)
            {
                Label1.Text += " Now item is created";
                DateTime item = DateTime.Now;
                Label1.Text += " Item is Stored";
                Cache.Insert("item", item, null, DateTime.Now.AddSeconds(20),
                TimeSpan.Zero);
            }
            else
            {
                Label1.Text += " Item is accessed";
                DateTime item = (DateTime)Cache["item"];
                Label1.Text += " Time is : " + item.ToString();
            }
            Label1.Text += "<br/>";

        }
    }
}