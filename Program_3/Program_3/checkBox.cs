using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Program_3
{
    class checkBox:iControl
    {
        internal int height;
        internal int width;
        int h, w;
        int iControl.height {
            get { return h; }
            set { h = value; }
        
        }
        int iControl.width {
            get { return w; }
            set { w = value; }

        }
    }
}
