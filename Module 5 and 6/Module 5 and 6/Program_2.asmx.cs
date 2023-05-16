using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Module_5_and_6
{
    /// <summary>
    /// Summary description for Program_2
    /// </summary>
    [WebService(Namespace = "Module_5_and_6")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Program_2 : System.Web.Services.WebService
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""E:\182\Module 5 and 6\Module 5 and 6\App_Data\student.mdf"";Integrated Security=True");

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public DataSet SelectData()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from stud", con);
            System.Data.DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        [WebMethod]
        public int insertData(string name, string classname)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into stud values('" + name + "', '" + classname + "')", con);
            int res = cmd.ExecuteNonQuery();
            return res;
        }

    }
}
