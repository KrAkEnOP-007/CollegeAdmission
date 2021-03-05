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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(College_Addmission_Sys.Class1.cnstr);
        protected void Page_Load(object sender, EventArgs e)
        {
            btnsubmit.Enabled = false;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (txtfname.Text == "")
            {
                lblfname.Text = "Enter First Name";
                btnsubmit.Enabled = false;

            }
            else if (txtlname.Text == "")
            {
                lbllname.Text = "Enter Last Name";
                btnsubmit.Enabled = false;
            }
            else if (txtcity.Text == "")
            {
                lblcity.Text = "Enter City";
                btnsubmit.Enabled = false;
            }
            else if (txtmob.Text == "")
            {
                lblmob.Text = "Enter Phone No.";
                btnsubmit.Enabled = false;
            }
            else if (txtuname.Text == "")
            {
                lblid.Text = "Enter User Name";
                btnsubmit.Enabled = false;
            }
            else if (txtpwd.Text == "")
            {
                lblpwd.Text = "Enter Password";
                btnsubmit.Enabled = false;
            }
            else
            {
                int i;
                string type = "User";
                cn.Open();
                SqlCommand cmd = new SqlCommand("insert into Registration values('" + txtfname.Text.ToUpper() + "','" + txtlname.Text.ToUpper() + "','" + txtuname.Text + "','" + txtpwd.Text + "','" + RBgender.SelectedItem.ToString() + "','" + date1.Text + "'," + txtmob.Text + ",'" + txtcity.Text.ToUpper() + "')", cn);
                i = cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("insert into LoginTB values('" + txtuname.Text + "','" + txtpwd.Text + "','" + type.ToString() + "')", cn);

                i = cmd1.ExecuteNonQuery();
                if (i > 0)
                {
                    Session["rno"] = txtArno.Text;
                    Response.Redirect("Login.aspx");

                }
                else
                {
                    cn.Close();
                }
            }
        }

        protected void btncancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnavl_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select User_Name from LoginTB where User_Name = '" + txtuname.Text + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = "Already Exists..";
                btnsubmit.Enabled = false;
            }
            else
            {
                if (txtfname.Text == "")
                {
                    
                    btnsubmit.Enabled = false;

                }
                else if (txtlname.Text == "")
                {
                   
                    btnsubmit.Enabled = false;
                }
                else if (txtcity.Text == "")
                {
                   
                    btnsubmit.Enabled = false;
                }
                else if (txtmob.Text == "")
                {
                    
                    btnsubmit.Enabled = false;
                }
                else if (txtuname.Text == "")
                {
                   
                    btnsubmit.Enabled = false;
                }
                else if (txtpwd.Text == "")
                {
                    
                    btnsubmit.Enabled = false;
                }
                else
                {
                    btnsubmit.Enabled = true;
                    
                }
                Label1.Text = "Available..";
            }
            cn.Close();
        }

        protected void Validate_Numeric(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            if (args.IsValid == r.IsMatch(txtmob.Text))
            {
            }
            else
            {
                txtmob.Text = "";
                txtmob.Focus();
            }
        }

        protected void Validate_Numeric1(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[a-z,A-Z]+$");
            args.IsValid = r.IsMatch(txtfname.Text);
        }

        protected void Validate_Numeric2(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txtlname.Text);
        }

        protected void Validate_Numeric3(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txtcity.Text);
        }

        

        

        
    }
}
