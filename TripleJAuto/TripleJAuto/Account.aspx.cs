using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TripleJAuto
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormView1.Visible = false;

            try
            {
                string userUsername = (string)Session["Username"];
                string userUserFName = (string)Session["FName"];
                string userUserLName = (string)Session["LName"];
                int userID = (int)Session["UserID"];

                lblUserFName.Text = "Welcome " + userUserFName;

                FormView1.Visible = true;
            }
            catch
            {
                FormView1.Visible = false;
                lblUserFName.Text = "You must be logged in to edit your account";

            }
        }
    }
}