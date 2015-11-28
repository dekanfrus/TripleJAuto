using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace TripleJAuto.App_Code
{
    public class ProductContext : DbContext
    {
           public ProductContext()
            : base ("TripleJAuto")
        {

        }
    }
}