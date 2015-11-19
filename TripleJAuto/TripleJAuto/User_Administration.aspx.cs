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

        protected void Page_Prerender(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow == null)
            {
                DetailsView1.Visible = true;
            }
            else DetailsView1.Visible = true;
        }

        protected void btnViewUsers_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
            GridView1.SelectRow(-1);
        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            GridView1.DataBind();
            GridView1.SelectRow(-1);
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView1.DataBind();
            GridView1.SelectRow(-1);
        }
    }
}