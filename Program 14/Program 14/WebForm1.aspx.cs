using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program_14
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label10.ForeColor = System.Drawing.Color.Green;
                Label10.Text = "Data Registered successfully";
                Label10.Visible = true;
            }
            else
            {
                Label10.ForeColor = System.Drawing.Color.Red;
                Label10.Text = "Please follow all Validation Rules";
                Label10.Visible = true;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int len = args.Value.Length;
            if (len >= 8 && len <= 15)
            {
                args.IsValid = true;
            }
            else if (len == 0)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = false;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FullName.Text = string.Empty;
            Address.Text = string.Empty;
            MobileNumber.Text = string.Empty;
            DOB.Text = string.Empty;
            Email.Text = string.Empty;
            State.DataValueField = string.Empty;
            Password.Text = string.Empty;
            ConfirmPassword.Text = string.Empty;
        }

<<<<<<< HEAD
=======
        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            //DOB.Text = Calendar.SelectedDate.ToLongDateString();
            //Calendar.Visible = false;
        }
>>>>>>> c6de3607a223f239fd39fad7a1ef1235f86b04d6
    }
}