using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Firstproject_consoleapp_182
{
    class domestic : plane
    {
        public override void getRate()
        {
            Console.WriteLine("Enter the rate for Domestic Travel: ");
            rate = Convert.ToDouble(Console.ReadLine());
        }
        public override void calculate(int seats)
        {
            Console.WriteLine("Bill Amount for " + seats + " domestic seats is Rs " + rate * seats);
        }
    }
 }

