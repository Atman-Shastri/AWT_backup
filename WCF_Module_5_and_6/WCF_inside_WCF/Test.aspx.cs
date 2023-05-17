using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WCF_inside_WCF
{
    public partial class Test : System.Web.UI.Page
    {
        private ServiceReference1.Program_4Client sc = new ServiceReference1.Program_4Client();
        private void BindGrid()
        {
            DataSet ds = new DataSet();
            ds = sc.selectdata();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int res = sc.insertData(TextBox1.Text, TextBox2.Text);
            if (res > 0)
            {
                Response.Write("Inserted");
            }
            this.BindGrid();

        }
    }
}