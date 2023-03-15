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
            listBox l = new listBox();
            checkBox c = new checkBox();
            int lh, lw, ch, cw;
            Console.WriteLine("Enter List Height: ");
            lh = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter List Width: ");
            lw = Convert.ToInt32(Console.ReadLine());
            l.height = lh;
            l.width = lw;
            Console.WriteLine("Enter Checkbox Height: ");
            ch = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Checkbox Width: ");
            cw = Convert.ToInt32(Console.ReadLine());
            c.height = ch;
            c.width = cw;
        }
    }
}
