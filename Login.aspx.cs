using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CollegeAdmission
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["DATAMAIN"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);

            SqlCommand cmd = new SqlCommand("select COUNT(1) from LoginTBL where User= '"+userText.Text.ToString()+"' and Password = '"+PasswordTxt.Text.ToString()+"'",conn);
            conn.Open();
            int count = Conert.ToInt32(cmd.ExecuteScaler());
            if (count==1)
            {
                Session["username"] = userText.Text;
                Response.Redirect("AdminWelcome.aspx");
            }
            else
            {
                ErrorLoginTxt.Text = "Invalid username or password";
            }

        }
    }
}