using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeAdmission
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                int i =0;
                //string type = "User";

               // i = cmd1.ExecuteNonQuery();
                if (i > 0)
                {
                    Session["rno"] = txtArno.Text;
                    Response.Redirect("Login.aspx");

                }
                else
                {
                    
                }
            }
        }

        protected void btncancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnavl_Click(object sender, EventArgs e)
        {
            
          /*  if (dr.Read())
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
*/           
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