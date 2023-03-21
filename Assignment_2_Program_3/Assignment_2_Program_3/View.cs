using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Assignment_2_Program_3
{
    public partial class View : Form
    {

        public View()
        {
            InitializeComponent();
        }

        private void View_Load(object sender, EventArgs e)
        {
            label1.Text = "Roll No: " + Student_Information.rollno;
            label2.Text = "Name: " + Student_Information.name;
            label3.Text = "DOB: " + Student_Information.dob;
            label4.Text = "Hobbies: " + Student_Information.hobbies;
            label5.Text = "Gender: " + Student_Information.gender;
            label6.Text = "City: " + Student_Information.city;
        }
    }
}
