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
    public partial class UserAddmission : System.Web.UI.Page
    {
        string path;

        

        SqlConnection cn = new SqlConnection(College_Addmission_Sys.Class1.cnstr);

        protected void Page_Load(object sender, EventArgs e)
        {
            string   s;
            path = "~/Photo/" + txtaname.Text + ".jpg";
            SqlCommand cmdzs = new SqlCommand("SELECT MAX (Form_No)+1  FROM Form_Registration ", cn);
            cmdzs.CommandType = CommandType.Text;
            cn.Open();

            txtfno.Text = cmdzs.ExecuteScalar().ToString();
          
            cn.Close();
        }

        protected void btnfsubmit_Click(object sender, EventArgs e)
        {
            if (txtaname.Text == "")
            {
                lblname.Text = "Enter Name";
            }
            else if (txtaadd.Text == "")
            {
                lbladd.Text = "Enter Address";
            }
            else if (txtabirth.Text == "")
            {
                lblbplace.Text = "Enter Birth Place";
            }
            else if(txtapin.Text == "")
            {
                lblpin.Text = "Enter Pin";
            }
            else if(txtafather.Text == "")
            {
                lblfname.Text = "Enter Father Name";
            }
            else if(txtfocc.Text == "")
            {
                lblfoccu.Text = "Enter Occupation";
            }
            else if(txtaphone.Text == "")
            {
                lblmob.Text = "Enter Mobile Name";
            }
            else if(txtanati.Text == "")
            {
                lblnationality.Text = "Enter Nationality";
            }
            else if(txtssc.Text == "")
            {
                lblssc.Text = "Enter Marks";
            }
            else if(txtstotal.Text == "")
            {
                lblstotal.Text = "Enter Total Marks";
            }
            else if(txtsatt.Text == "")
            {
                lblsattempt.Text = "Enter Attempts";
            }
            else if(txtsboard.Text == "")
            {
                lblsboard.Text = "Enter Board Name";
            }
            else if(txthsc.Text == "")
            {
                lblhsc.Text = "Enter Marks";
            }
            else if(txthtotal.Text == "")
            {
                lblhtotal.Text = "Enter Total Marks";
            }
            else if(txthatt.Text == "")
            {
                lblhattempt.Text = "Enter Attempts";
            }
            else if(txthper.Text == "")
            {
                lblhper.Text = "Enter Per(%)";
            }
            else if (txthboard.Text == "")
            {
                lblhboard.Text = "Enter Board Name";
            }
            else
            {
                int i;
                cn.Open();
                string status = "N";
                SqlCommand cmd = new SqlCommand("insert into Form_Registration values('" + txtaname.Text.ToUpper() + "','" + date1.Text + "','" + txtabirth.Text + "','" + RBagender.SelectedItem.ToString() + "','" + txtaadd.Text.ToUpper() + "'," + txtapin.Text + "," + txtaphone.Text + ",'" + txtanati.Text.ToUpper() + "','" + checkacategorey.SelectedValue.ToString() + "','" + txtafather.Text.ToUpper() + "','" + txtfocc.Text.ToUpper() + "'," + txtaphone.Text + "," + txtssc.Text + "," + txtstotal.Text + "," + txtsatt.Text + ",'" + txtsboard.Text.ToUpper() + "'," + txthsc.Text + "," + txthtotal.Text + "," + txthatt.Text + ",'" + txthboard.Text.ToUpper() + "','" + txthper.Text + "','" + status.ToString() + "','" + status.ToString() + "','" + path + "')", cn);
                SqlCommand cmd1 = new SqlCommand("insert into MeritTB values('" + txtfno.Text.ToUpper() + "','" + txtaname.Text + "','" + txthper.Text + "','" + txtaphone.Text + "')", cn);
                i = cmd.ExecuteNonQuery();
                cmd1.ExecuteNonQuery();
                if (i > 0)
                {
                    lblmsg.Text = "Form SuccessFully Submited....";
                }
                else
                {
                    cn.Close();
                }
            }
        }

        protected void btnimage_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile == true)
            {
                //path = "~/Photo/" + txtaname.Text + ".jpg";
                FileUpload1.SaveAs(MapPath("Photo/") + txtaname.Text + ".jpg");
                Image1.ImageUrl = path;

            }
            else
            {
                lblmsg.Text = "Please select Image";
            }
        }

        protected void Validate_Numeric(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            if(args.IsValid = r.IsMatch(txtaphone.Text))
            {
            }
            else
            {
                txtaphone.Text = "";
                txtaphone.Focus();
            }
        }

        protected void Validate_Numeric1(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            args.IsValid = r.IsMatch(txtssc.Text);
        }

        protected void Validate_Numeric2(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            args.IsValid = r.IsMatch(txtstotal.Text);
        }

        protected void Validate_Numeric3(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            args.IsValid = r.IsMatch(txtsatt.Text);
        }

        protected void Validate_Numeric4(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            args.IsValid = r.IsMatch(txthsc.Text);
        }

        protected void Validate_Numeric5(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            args.IsValid = r.IsMatch(txthtotal.Text);
        }

        protected void Validate_Numeric6(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            args.IsValid = r.IsMatch(txthatt.Text);
        }

        protected void Validate_Numeric7(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            args.IsValid = r.IsMatch(txthper.Text);
        }

        protected void Validate_Numeric8(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txtaname.Text);
        }

        protected void Validate_Numeric9(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txtaadd.Text);
        }

        protected void Validate_Numeric10(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txtabirth.Text);
        }

        protected void Validate_Numeric11(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txtafather.Text);
        }

        protected void Validate_Numeric12(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txtanati.Text);
        }

        protected void Validate_Numeric13(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txtsboard.Text);
        }

        protected void Validate_Numeric14(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txthboard.Text);
        }

        protected void Validate_Numeric15(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            if (args.IsValid = r.IsMatch(txtapin.Text))
            {
            }
            else
            {
                txtapin.Text = "";
                txtapin.Focus();
            }
        }

        protected void Validate_Numeric16(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[A-Z,a-z]+$");
            args.IsValid = r.IsMatch(txtfocc.Text);
        }

        

    }
}
