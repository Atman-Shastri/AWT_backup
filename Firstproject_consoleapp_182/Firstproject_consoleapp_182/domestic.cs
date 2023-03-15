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
            Console.WriteLine("Enter the rate: ");
            rate = Convert.ToDouble(Console.ReadLine());
        }
    }
    }
}
