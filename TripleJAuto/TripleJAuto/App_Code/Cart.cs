using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TripleJAuto.App_Code
{
    public class Cart
    {
        public Cart() { }
        public Cart(Product product, int quantity)
        {
            this.Product = product;
            this.Quantity = quantity;
        }

        public Product Product { get; set; }
        public int Quantity { get; set; }

        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }

        public string Display()
        {
            string display = string.Format("{0} ({1} at {2} each)",
                Product.Name, Quantity.ToString(),
                Product.UnitPrice.ToString("c"));
            return display;
        }
    }
}