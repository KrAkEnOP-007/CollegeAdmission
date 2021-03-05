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
    public partial class UserChangePwd : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(College_Addmission_Sys.Class1.cnstr);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            int i;
            cn.Open();
            if (txtClogname.Text == "" || txtClogpwd.Text == "" || txtCRlogpwd.Text == "")
            {
                lblrmsg.Text = "Enter All Data";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("update LoginTB set Password = '" + txtCRlogpwd.Text + "' where User_Name='" + txtClogname.Text + "' and Password = '" + txtClogpwd.Text + "'", cn);
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

        protected void btnlogcan_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserWelcome.aspx");
        }
    }
}
