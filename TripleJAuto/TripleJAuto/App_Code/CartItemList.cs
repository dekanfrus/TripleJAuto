using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TripleJAuto.App_Code
{
    public class CartItemList
    {
        //internal list of items and the constructor that instatiates it 
        private List<CartItem> cartItems;
        public CartItemList()
        {
            cartItems = new List<CartItem>();
        }

        //read-only property that returns the number of items in the internal list
        public int Count
        {
            get { return cartItems.Count; }
        }

        //indexers that locate items in the internal list by index or product id 
        public CartItem this[int index]
        {
            get { return cartItems[index]; }
            set { cartItems[index] = value; }
        }
        public CartItem this[string id]
        {
            get { return cartItems.FirstOrDefault(c => c.Product.ProductID == id); }
        }

        //static method to get the cart object from seesion state 
        public static CartItemList GetCart()
        {
            CartItemList cart = (CartItemList)HttpContext.Current.Session["Cart"];
            if (cart == null)
                HttpContext.Current.Session["Cart"] = new CartItemList();
            return (CartItemList)HttpContext.Current.Session["Cart"];
        }

        //methods that add, remove and clear items in the internal list
        public void AddItem(Product product, int quantity)
        {
            CartItem c = new CartItem(product, quantity);
            cartItems.Add(c);
        }
        public void RemoveAt(int index)
        {
            cartItems.RemoveAt(index);
        }
        public void Clear()
        {
            cartItems.Clear();
        }
    }
}