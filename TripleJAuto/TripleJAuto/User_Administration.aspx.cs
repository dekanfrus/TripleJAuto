using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TripleJAuto
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             // Load User Login Cookie
             // Put Username from Cookie into SQL Query
             // Use Query to check for admin rights
             // If user is not admin, redirect to home page           
        }

        protected void btnViewUsers_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnViewEdit_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
}