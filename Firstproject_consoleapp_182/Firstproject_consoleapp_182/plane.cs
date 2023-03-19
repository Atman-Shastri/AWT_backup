using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Firstproject_consoleapp_182
{
     abstract class plane
    {
        protected double rate;
        public abstract void getRate();
        public abstract void calculate(int seats);
        
    }
}
