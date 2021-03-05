using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace College_Addmission_System
{
    public partial class AdminChangePwd : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(College_Addmission_Sys.Class1.cnstr);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            int i;
            cn.Open();
            if (txtAClogname.Text == "" || txtAClogpwd.Text == "" || txtACRlogpwd.Text == "")
            {
                lblrmsg.Text = "Enter All Data";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("update LoginTB set Password = '" + txtACRlogpwd.Text + "' where User_Name='" + txtAClogname.Text + "' and Password = '" + txtAClogpwd.Text + "'", cn);
                i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    lblrmsg.Text = "Password Changed.";
                }
                else
                {
                    lblrmsg.Text = "Password Not Changed..";
                }
            }
            cn.Close();
        }

        protected void btnlogcal_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminWelcome.aspx");
        }
    }
}
