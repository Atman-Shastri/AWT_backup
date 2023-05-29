﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoredProcedure
{
    public partial class Program_15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\182\\StoredProcedure\\StoredProcedure\\App_Data\\Employee.mdf;Integrated Security=True");
            DataClasses3DataContext db = new DataClasses3DataContext(con);
            var data = from c in db.emps select c.name;
            foreach (var name in data)
                Label1.Text += String.Format("{0} <br />", name);
        }
    }
}