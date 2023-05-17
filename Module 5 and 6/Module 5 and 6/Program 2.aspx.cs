using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module_5_and_6
{
    public partial class Program_21 : System.Web.UI.Page
    {
        Program_2 ws = new Program_2();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            DataSet ds = new DataSet();
            ds = ws.SelectData();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int res = ws.insertData(TextBox1.Text, TextBox2.Text);
            if (res > 0)
            {
                Response.Write("Inserted");
            }
            this.BindGrid();

        }

    }
}

