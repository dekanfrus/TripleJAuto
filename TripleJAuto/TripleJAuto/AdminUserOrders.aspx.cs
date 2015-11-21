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
            string loginStatus = (string)Session["loginStatus"];

            if (loginUserAdmin != "Admin" || loginStatus == "LoggedOut")
            {
                GridView1.Visible = false;
                lblUserLogin.Text = "Admin not logged in";
                btnLogout.Text = "Login";

                btnViewOrders.Visible = false;
                lblSearchOrder.Visible = false;
                btnExecFind.Visible = false;
                txtSearchOrder.Visible = false;

            }
            else
            {
                loginStatus = "LoggedIn";
                lblUserLogin.Text = loginUserFName + " " + loginUserLName;
                btnLogout.Text = "Logout";
                GridView1.Visible = true;

                btnViewOrders.Visible = true;
                lblSearchOrder.Visible = true;
                btnExecFind.Visible = true;
                txtSearchOrder.Visible = true;
            }
        }

        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            //Logout admin user
            if (lblUserLogin.Text == "Admin not logged in")
            {
                Response.Redirect("~/User_administration.aspx");
            }
            else
            {
                btnLogout.Text = "Logout";

                Session.Remove("loginUserFName");
                Session.Remove("loginUserLName");
                Session.Remove("loginUserAdmin");
                GridView1.Visible = false;
                Response.Redirect("~/Home.aspx");
            }
        }

        protected void btnViewOrders_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnExecFind_Click(object sender, EventArgs e)
        {
            if (lblUserLogin.Text == "Admin not logged in")
            {
                btnViewOrders.Visible = false;
                lblSearchOrder.Visible = false;
                btnExecFind.Visible = false;
                txtSearchOrder.Visible = false;
            }
            else
            {
                MultiView1.Visible = true;
                MultiView1.ActiveViewIndex = 1;
            }
        }
    }
}