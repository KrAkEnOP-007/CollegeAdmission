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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(College_Addmission_Sys.Class1.cnstr);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("Select * from LoginTB where User_Name = '" + txtloginame.Text + "' and Password = '" + txtlogpwd.Text + "' and User_Type = '" + DDUtype.SelectedItem.ToString() + "'", cn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                
                
                if (DDUtype.SelectedValue == "Admin")
                {
                    Session["Aname"] = txtloginame.Text;
                    Response.Redirect("AdminWelcome.aspx");
                   
                }
                else
                {
                    Session["uname"] = txtloginame.Text;
                    Response.Redirect("UserWelcome.aspx");
                   
                }
            }
            else
            {
                lblmessage.Text = "Wrong User Name or Password.... Try Again..";
            }

            cn.Close();
        }

        protected void btnlogcan_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}
