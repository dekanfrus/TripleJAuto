using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TripleJAuto
{
    public partial class WebForm35 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginUserFName = (string)Session["loginUserFName"];
            string loginUserLName = (string)Session["loginUserLName"];
            string loginUserAdmin = (string)Session["loginUserAdmin"];

            if (loginUserAdmin != "Admin")
            {
                GridView1.Visible = false;
                lblUserLogin.Text = "Admin not logged in";
            }
            else
            {
                lblUserLogin.Text = loginUserFName + " " + loginUserLName;
                GridView1.Visible = true;
            }
        }
    }
}