using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Assignment2_Program_2
{
    public partial class Form1 : Form
    {
        student std = new student();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(radioButton1.Checked)
            {
                std.Gender = radioButton1.Text;

            }
            else if(radioButton2.Checked)
            {
                std.Gender = radioButton2.Text;
            }

            std.Id=Int32.Parse(textBox1.Text);
            std.Name=textBox2.Text;
            std.Percentage = double.Parse(textBox3.Text);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            radioButton1.Checked = false;
            radioButton2.Checked = false;
            listBox1.Items.Add(std.Id);
            listBox1.Items.Add(std.Name);
            listBox1.Items.Add(std.Percentage);
            listBox1.Items.Add(std.Gender);
        }
    }
}
