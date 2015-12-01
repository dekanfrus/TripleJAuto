using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TripleJAuto
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Username = (string)Session["Username"];
            lblUsername.Visible = false;

            if(Username != null)
            {
                btnLogin.Visible = false;
                btnSignup.Visible = false;
                lblUsername.Visible = true;
                lblUsername.Text = "Logged on as: " + Username;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("/UserLogin.aspx");
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SignUp.aspx");
        }
    }
}