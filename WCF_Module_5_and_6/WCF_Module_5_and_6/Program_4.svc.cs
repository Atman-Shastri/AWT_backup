using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WCF_Module_5_and_6
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Program_4" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Program_4.svc or Program_4.svc.cs at the Solution Explorer and start debugging.
    public class Program_4 : IProgram_4
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\182\\WCF_Module_5_and_6\\WCF_Module_5_and_6\\App_Data\\Database1.mdf;Integrated Security=True");
        public int insertData(string name, string classname)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into student values('" + name + "', '" + classname + "')", con);
            int res = cmd.ExecuteNonQuery();
            return res;

        }

        public DataSet selectdata()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from student", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
    }
}
