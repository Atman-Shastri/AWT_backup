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
    public partial class Student_Information : Form
    {

        public static string name, gender, hobbies, city;
        public static DateTime dob;
        public static int rollno;

        private void button2_Click(object sender, EventArgs e)
        {
            View v = new View();
            v.Show();
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                gender = radioButton1.Text;
            }
            else if (radioButton2.Checked)
            {
                gender = radioButton2.Text;
            }
            name = textBox2.Text; 
            rollno = Int32.Parse(textBox1.Text);
            dob = dateTimePicker1.Value.Date;

            if (checkBox1.Checked)
            {
                hobbies += checkBox1.Text;
            }
            else if (checkBox2.Checked)
            {
                hobbies += checkBox2.Text;
            }
            else if (checkBox3.Checked)
            {
                hobbies += checkBox3.Text;
            }

            city = comboBox1.SelectedItem.ToString();
        }

        

        public Student_Information()
        {
            InitializeComponent();
        }

        private void Student_Information_Load(object sender, EventArgs e)
        {

        }
    }
}
