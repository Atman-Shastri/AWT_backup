using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Program_3
{
    public class mainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Atman Shastri, 182");
            listBox listBox = new listBox();
            checkBox checkBox = new checkBox();
            Console.WriteLine("Enter listBox Height: ");
            int listBoxHeight = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter listBox Width: ");
            int listBoxWidth = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter checkBox Height: ");
            int checkBoxHeight = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter checkBox Width: ");
            int checkBox1Width = Convert.ToInt32(Console.ReadLine());
            listBox.Height = listBoxHeight;
            listBox.Width = listBoxWidth;
            checkBox.Height = checkBoxHeight;
            checkBox.Width = checkBox1Width;

            Console.WriteLine("listBox Height: " + listBox.Height);
            Console.WriteLine("listBox Width: " + listBox.Width);
            Console.WriteLine("checkBox Height: " + checkBox.Height);
            Console.WriteLine("checkBox Width: " + checkBox.Width);

        }
    }
}
