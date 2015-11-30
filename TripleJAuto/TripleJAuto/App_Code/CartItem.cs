using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TripleJAuto.App_Code
{
    public class CartItem
    {
        //constructors that create an empty CartItem object or one with values 
        public CartItem() { }
        public CartItem(Product product, int quantity)
        {
            this.Product = product;
            this.Quantity = quantity;
        }

        //public properties for a cartitem object 
        public Product Product { get; set; }
        public int Quantity { get; set; }

        //method that adds the quatity to the current quatity 
        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }

        //method that formats an item's name, quantity and price in one line
        public string Display()
        {
            string displayString = string.Format("{0} ({1} at {2} each)", Product.Name, Quantity.ToString(), Product.UnitPrice.ToString("c"));
            return displayString;
        }


    }
}