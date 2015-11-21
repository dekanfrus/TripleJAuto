using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace TripleJAuto
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserLogged.Text = "Restricted to Site Administrators, unauthorized use prohibited";
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            if (btnLogin.Text == "Logout")
            {
                lblUserLogged.Text = "User logged out";
                btnLogin.Text = "Login";
                txtPassword.Visible = true;
                txtUsername.Visible = true;
                Session.Remove("loginUsername");
                Session.Remove("loginPassword");
                Session.Remove("loginUserFName");
                Session.Remove("loginUserLName");
                Session["LoginStatus"] = "LoggedOut";

                Response.Redirect("/Home.aspx");
            }

            else
            {
                if (emptyFields() == true)
                {
                    lblCheckUser.Text = "Please enter a username and password";
                    lblCheckUser.Visible = true;
                }

                else
                {
                    if (checkAdmin() == true)
                    {
                        string adminName = txtUsername.Text;
                        string administrator = "Admin";

                        SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);

                        //SELECT [UserUsername], [UserPassword], [UserFName], [UserLName] FROM [User]

                        string getAdminFName = "SELECT UserFName FROM [User] WHERE UserUsername = '" + adminName + "'";
                        string getAdminLName = "SELECT UserLName FROM [User] WHERE UserUsername = '" + adminName + "'";

                        SqlCommand cmdGetFName = new SqlCommand(getAdminFName, db);
                        SqlCommand cmdGetLName = new SqlCommand(getAdminLName, db);

                        db.Open();

                        var adminFirstName = cmdGetFName.ExecuteScalar();
                        var adminLastName = cmdGetLName.ExecuteScalar();

                        adminFirstName = adminFirstName.ToString();
                        adminLastName = adminLastName.ToString();

                        Session["loginUsername"] = txtUsername.Text;
                        Session["loginPassword"] = txtPassword.Text;
                        Session["loginUserFName"] = adminFirstName;
                        Session["loginUserLName"] = adminLastName;
                        Session["loginUserAdmin"] = administrator;
                        Session["loginStatus"] = "LoggedIn";

                        db.Close();

                        //btnViewUsers.Visible = true;
                        lblUserLogged.Text = adminFirstName + " " + adminLastName;
                        txtPassword.Visible = false;
                        txtUsername.Visible = false;
                        btnLogin.Text = "Logout";
                        Response.Redirect("~/User_Administration.aspx");
                    }

                    else
                    {
                        lblCheckUser.Text = "Wrong username or password";
                        lblCheckUser.Visible = true;
                    }
                }
            }


        }

        protected bool emptyFields()
        {
            if (txtUsername.Text == "" || txtPassword.Text == "")
            {
                if (txtUsername.Text == "") lblCheckUser.Visible = true; else lblCheckUser.Visible = false;
                if (txtPassword.Text == "") lblCheckUser.Visible = true; else lblCheckUser.Visible = false;
                return true;
            }

            else return false;
        }

        protected bool checkAdmin()
        {
            string adminName = txtUsername.Text;
            string adminPassword = txtPassword.Text;
            string adminTrue = "true";
            bool adminExists = false;

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            db.Open();

            //SELECT[UserUsername], [UserPassword], [UserFName], [UserLName], [UserAdmin] FROM[User]

            string adminExist = "SELECT COUNT(*) FROM [User] WHERE UserUsername = '" + adminName + "'";
            adminExist += "AND UserPassword = '" + adminPassword + "' AND userAdmin = '" + adminTrue + "'";

            SqlCommand cmd = new SqlCommand(adminExist, db);

            int checkAdminExists = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            db.Close();

            if (checkAdminExists == 1) { adminExists = true; }

            else adminExists = false;

            return adminExists;
        }


    }
}