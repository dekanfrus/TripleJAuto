using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TripleJAuto
{
    public partial class WebForm33 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MultiView1.ActiveViewIndex = 0;
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            FormViewAddCategory.ChangeMode(FormViewMode.Insert);
        }

        protected void btnAddParts_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            FormViewAddParts.ChangeMode(FormViewMode.Insert);
        }
    }
}