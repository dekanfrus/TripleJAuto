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

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (txtUsername.Text == "")
            {
                txtUsername.Text = "User Name Required";
            }

            if (txtPassword.Text == "")
            {
                txtPassword.Text = "User Name Required";
            }

            bool flag = false;
            string UName = txtUsername.Text;
            string Password = txtPassword.Text;

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "SELECT [UserUsername], [UserPassword] FROM [User]";
            cmd.Connection = db;

            try
            {
                db.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    if (rd[0].ToString() == txtUsername.Text)
                    {                    
                        if (rd[1].ToString() == txtPassword.Text)
                        {
                            flag = true;
                            break;
                        }

                    }
                }

                if (flag == true)
                {
                    Response.Redirect("/Home.aspx");
                }
                else
                {
                    Response.Redirect("SignUp.aspx");
                }
            }
            catch
            {

            }
            finally
            {
                db.Close();
            }
        }
    }
}