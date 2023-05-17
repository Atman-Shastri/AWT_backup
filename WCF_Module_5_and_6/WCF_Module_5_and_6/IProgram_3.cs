using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WCF_Module_5_and_6
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IProgram_3" in both code and config file together.
    [ServiceContract]
    public interface IProgram_3
    {
        [OperationContract]
        int Add(int a, int b);

    }
}
