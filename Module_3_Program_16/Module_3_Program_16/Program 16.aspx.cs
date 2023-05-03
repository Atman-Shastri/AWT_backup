using System;
using System.Collections.Generic;
using System.Linq;
using System.Timers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_3_Program_16
{
    public partial class Program_16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string con = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\182\\Module_3_Program_16\\Module_3_Program_16\\App_Data\\Employee.mdf;Integrated Security=True;Connect Timeout=30";
            empDataClasses1DataContext e1 = new empDataClasses1DataContext(con);
            GridView1.DataSource = (from empdata in e1.emps select empdata).ToList();
            GridView1.DataBind();

        }
    }
}