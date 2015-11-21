using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TripleJAuto
{
    public partial class WebForm34 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginUserFName = (string)Session["loginUserFName"];
            string loginUserLName = (string)Session["loginUserLName"];
            string loginUserAdmin = (string)Session["loginUserAdmin"];

            if (loginUserAdmin != "Admin")
            {
                DetailsView1.Visible = false;
                lblUserLogin.Text = "Admin not logged in";
                btnLogout.Text = "Login";
            }
            else
            {
                lblUserLogin.Text = loginUserFName + " " + loginUserLName;
                btnLogout.Text = "Logout";
                DetailsView1.Visible = true;
            }
        }

        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            //Logout admin user
            if (lblUserLogin.Text == "Admin not logged in")
            {
                Response.Redirect("~/AdminLogin.aspx");
            }
            else
            {
                btnLogout.Text = "Logout";

                Session.Remove("loginUserFName");
                Session.Remove("loginUserLName");
                Session.Remove("loginUserAdmin");
                DetailsView1.Visible = false;
                Response.Redirect("~/Home.aspx");
            }
        }
    }
}