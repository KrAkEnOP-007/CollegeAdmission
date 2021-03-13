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
    // class Binddata
    //{
    //    int id;
    //    string FirstName;
    //    string lastName;
    //    string FatherName;
    //    string fatherOcc;
    //    string MobileNo;
    //    string gender;
    //    string email;
    //    string address;
    //    string city;
    //    string bdate;
    //    string pincode;
    //    string category;
    //    string sscmarks;
    //    string sscAttempts;
    //    string hscmarks;
    //    string hscAttemots;
    //    string percentage;
    //    string hscmsheet;
    //    string Studpic;
    //}
    public partial class AdminWelcome : System.Web.UI.Page
    {
        static String CS = ConfigurationManager.ConnectionStrings["DATAMAIN"].ConnectionString;
        SqlConnection conn = new SqlConnection(CS);

        protected void Page_Load(object sender, EventArgs e)
        {
          ////  MultiView1.ActiveViewIndex = 0;
          if(Session["username"]!= null){

          }
          else{
              Response.Redirect("Login.aspx");
          }
        }

        protected void Marit_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void getMarit_Click(object sender, EventArgs e)
        {
            /* try
             {
                 conn.Open();
                 //  SqlCommand cmd = new SqlCommand("insert into MeritTable(id,FirstName,LastName,HSCPercentage,MobileNo) select id,FirstName,LastName,Percentage,MobileNo from RegistrationTable where Percentage > 60 and Merit_status = 'N'", cn);
                 //  cmd.ExecuteNonQuery();
                 SqlCommand cmd2 = new SqlCommand("select * from RegistrationTable where Percentage >=60.00", conn);
                 MaritListGrid.DataSource = cmd2.ExecuteReader();
                 MaritListGrid.DataBind();
                 MaritListPanel.Visible = true;
                 conn.Close();
             }
             catch
             {
                 Response.Write("<script>alert('there was an error Try again..!')</script>");
             }
             finally
             {
                 conn.Close();
             }*/
            PublishMaritList.Visible = true;
            MaritListPanel.Visible = true;
            
        }

        protected void ChamgePass_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }
      
       
        protected void AdmissionWindow_Click(object sender, EventArgs e)
        {
            try
            {
               
                MultiView1.ActiveViewIndex = 0;
            }
            catch
            {

            }
        }

        protected void PublishMaritList_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from MaritTable",conn);
            conn.Open();
            SqlDataReader dr =  cmd.ExecuteReader();
            if (dr.Read()) 
            {
                Response.Write("<script>alert('Already Published')</script>");
                return;
            }


            try
            {
                 cmd = new SqlCommand("insert into MaritTable select Id,FirstName,LastName,MobileNo,Percentage from RegistrationTable where Percentage >= 60.00", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>Inserted in marit database Successfully</script>");
            }
            catch
            {
                Response.Write("<script>alert('there was an error Try again..!')</script>");
            }
            finally
            {
                conn.Close();
            }
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select Password from LoginTBL where UserName=@user",conn);
            cmd.Parameters.AddWithValue("@user", Session["username"].ToString());
            conn.Open();
            string str = cmd.ExecuteScalar().ToString();
            if(OldPasswordText.Text == str)
            {
                if (NewPassw1.Text == NewPassw2.Text && NewPassw1.Text != "" && NewPassw2.Text!= "")
                {
                    cmd = new SqlCommand("Update LoginTBL set Password = '" + NewPassw1.Text.ToString() + "' where UserName = 'Admin'", conn);
                   
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("There was an error");
                }
            }
            else
            {
                Response.Write("wrong password");
            }

        }
    }
}