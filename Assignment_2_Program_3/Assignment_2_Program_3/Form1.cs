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
    public partial class Form1 : Form
    {
        Student_Information sf = new Student_Information();
        public Form1()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(textBox1.Text == "Atman Shastri" && textBox2.Text == "1234")
            { 
                sf.Show();
            }
            else
            { label3.Text = "Invalid Login Credentials"; }
        }
    }
}
