using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoredProcedure
{
    public partial class Program_16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses3DataContext data = new DataClasses3DataContext("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = F:\\182\\StoredProcedure\\StoredProcedure\\App_Data\\Employee.mdf; Integrated Security = True");
        }
    }
}