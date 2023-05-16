using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WCF_Module_5_and_6
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Program_3" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Program_3.svc or Program_3.svc.cs at the Solution Explorer and start debugging.
    public class Program_3 : IProgram_3
    {
        int IProgram_3.Add(int a, int b)
        {
            return a + b;
        }

    }
}
