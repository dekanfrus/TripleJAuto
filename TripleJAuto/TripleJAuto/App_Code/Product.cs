using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TripleJAuto.App_Code
{
    public class Product
    {
        public string ProductID { get; set; }
        public string Name { get; set;  }
        public string ShortDescription { get; set; }
        public decimal UnitPrice { get; set; }
    }
}