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
    public partial class WebForm36 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbUsername.Visible = false;
            lbPassword.Visible = false;
            lbConfirm.Visible = false;
            lbFName.Visible = false;
            lbLName.Visible = false;
            lbEmail.Visible = false;
            lbAddress.Visible = false;
            lbCity.Visible = false;
            lbCountry.Visible = false;
            lbPhone.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "") lbUsername.Visible = true; else lbUsername.Visible = false;
            if (txtPassword.Text == "") lbPassword.Visible = true; else lbPassword.Visible = false;
            if (txtConfirm.Text == "") lbConfirm.Visible = true; else lbConfirm.Visible = false;
            if (txtFName.Text == "") lbFName.Visible = true; else lbFName.Visible = false;
            if (txtLName.Text == "") lbLName.Visible = true; else lbLName.Visible = false;
            if (txtEmail.Text == "") lbEmail.Visible = true; else lbEmail.Visible = false;
            if (txtAddress.Text == "") lbAddress.Visible = true; else lbAddress.Visible = false;
            if (txtCity.Text == "") lbCity.Visible = true; else lbCity.Visible = false;
            if (txtCountry.Text == "") lbCountry.Visible = true; else lbCountry.Visible = false;
            if (txtPhone.Text == "") lbPhone.Visible = true; else lbPhone.Visible = false;

            if (txtPassword.Text != txtConfirm.Text)
            {
                lbConfirm.Text = "*Passwords do not match.";
                lbConfirm.Visible = true;
            }

            string UName = txtUsername.Text;
            string Password = txtPassword.Text;
            string FName = txtFName.Text;
            string LName = txtLName.Text;
            string Email = txtEmail.Text;
            string Address = txtAddress.Text;
            string City = txtCity.Text;
            string Zip = txtZip.Text;
            string Country = txtCountry.Text;
            string Phone = txtPhone.Text;

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            db.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserStreet, UserCity, UserZip, UserCountry, UserPhone) VALUES ('" + UName + "','" + Password + "','" + Email + "','" + FName + "','" + LName + "','" + Address + "','" + City + "','" + Zip + "','" + Country + "','" + Phone + "')";
            cmd.Connection = db;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                lberror.Text = "An error ocurred writing into the database";
                lberror.Visible = true;
            }
            finally
            {
                db.Close();
                Response.Redirect("/Home.aspx");
            }


        }
    }
}