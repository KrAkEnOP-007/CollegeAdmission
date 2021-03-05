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
    public partial class UserPayment : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(College_Addmission_Sys.Class1.cnstr);
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from MeritTB where Name='" + Session["uname"].ToString() + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            { 
            txtmerit.Text=dr["Merit_ID"].ToString();
            txtpname.Text = dr["Name"].ToString();
            }
            dr.Close();
            cn.Close();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            if (txtmerit.Text == "")
            {
                lblpaymsg.Text = "Your Name Is Not In The Merit List.. You Are Not Qualified..";
            }
            else
            {
                int i;
                string str = "Y";
                cn.Open();
                SqlCommand cmd1 = new SqlCommand("insert into PaymentTB(Receipt_NO,Merit_ID,Name,Fees,Date,Year,Pay_Type,Number) values ("+txtreceipt.Text+",'" + txtmerit.Text + "','" + txtpname.Text + "'," + txtfees.Text + ",'" + date1.Text + "','" + txtyear.Text + "','" + DDpaytype.SelectedItem.ToString() + "','" + txtno.Text + "')", cn);
                i = cmd1.ExecuteNonQuery();
                SqlCommand cmd2 = new SqlCommand("update Form_Registration set Admit_Status = '" + str.ToString() + "' where Per > 60 ", cn);
                i = cmd2.ExecuteNonQuery();
                if (i > 0)
                {
                    lblpaymsg.Text = "Payment Done..";
                }
                else
                {
                    lblpaymsg.Text = "Payment Not Done..";
                }
            }

        }

        protected void btncan_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserWelcome.aspx");
        }

        

        protected void Validate_Numeric(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            if (args.IsValid = r.IsMatch(txtno.Text))
            {
            }
            else
            {
                txtyear.Text = "";
                txtyear.Focus();
            }
        }

        protected void Validate_Numeric1(object source, ServerValidateEventArgs args)
        {
            System.Text.RegularExpressions.Regex r = new System.Text.RegularExpressions.Regex("^[0-9]+$");
            if (args.IsValid = r.IsMatch(txtyear.Text))
            {
                
            }
            else
            {
                txtyear.Text = "";
                txtyear.Focus();
            }

        }

        protected void txtpname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtreceipt_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
