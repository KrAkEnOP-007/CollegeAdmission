using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Windows;
using System.Configuration;


namespace CollegeAdmission
{
    
    public partial class Registration : System.Web.UI.Page
    {
        //SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Divyang\Desktop\project\CollegeAdmission\App_Data\CollegeDb.mdf;Integrated Security=True");
        // SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\projects\Project\KrAkEnOP-007\CollegeAdmission\App_Data\CollegeDb.mdf;Integrated Security=True");
        static String CS = ConfigurationManager.ConnectionStrings["DATAMAIN"].ConnectionString;
        SqlConnection conn = new SqlConnection(CS);
        string str_NewID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                int y = DateTime.Now.Year;
                for (int i = 1; i <= 31; i++)
                    dd.Items.Add(i.ToString());
                for (int i = 1; i <= 12; i++)
                    mm.Items.Add(i.ToString());
                for (int i = 1950; i <= y; i++)
                    yyyy.Items.Add(i.ToString());
            }

              SqlCommand com = new SqlCommand("SELECT MAX(id)+1 from RegistrationTable " ,conn);
            conn.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                str_NewID = dr.GetValue(0).ToString();
                Response.Write(str_NewID);
            }
            conn.Close();

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
         //  RegularExpressionValidator val = new RegularExpressionValidator
        }

        protected void AttemptsTxtSSc_TextChanged(object sender, EventArgs e)
        {

        }

        protected void FormSubmitBtn_Click(object sender, EventArgs e)
        {
            string res = MarksheetImgSave();
            string res2 = StudentImgSave();
            if (res == "n" || res2 =="n") return;
         //   string query = "INSERT INTO RegistrationTable VALUES( @id,N'@fname' ,N'@lname' ,N'@fathern' , N'@focc' , N'@Mno' , N'@gender' ,N'@Birthdate' , N'@Email' ,N'@address' ,N'@city' , N'@pin', N'@category' , @sscm ,@sscAtt , @hscm , @hscAtt , N'@per' , N'@hscMsheet' , N'@studPic' ) ";
            SqlCommand cmd = new SqlCommand("insert into RegistrationTable values(@id,@fname, @lname, @fathern, @focc, @Mno, @gender, @Birthdate,@Email, @address, @city, @pin, @category, @sscm, @sscAtt, @hscm, @hscAtt, @per, @hscMsheet, @studPic) ", conn);
            cmd.Parameters.AddWithValue("@id" , int.Parse(str_NewID));
            cmd.Parameters.AddWithValue("@fname" , FirstName.Text.ToUpper());
            cmd.Parameters.AddWithValue("@lname", LastName.Text.ToUpper());
            cmd.Parameters.AddWithValue("@fathern", FatherName.Text.ToUpper());
            cmd.Parameters.AddWithValue("@focc", FatherOcc.Text.ToUpper());
            cmd.Parameters.AddWithValue("@Mno", MobileText.Text.ToUpper());
            cmd.Parameters.AddWithValue("@gender", RBgender.SelectedValue.ToUpper());
            string Bday = dd.SelectedValue.ToString() + "/" + mm.SelectedValue.ToString() + "/" + yyyy.SelectedValue.ToString();
            cmd.Parameters.AddWithValue("@Birthdate", Bday );
            cmd.Parameters.AddWithValue("@Email", emailText.Text.ToUpper());
            cmd.Parameters.AddWithValue("@address", AddressText.Text.ToUpper());
            cmd.Parameters.AddWithValue("@city", CityTxt.Text.ToUpper());
            cmd.Parameters.AddWithValue("@pin", PincodeTxt.Text.ToUpper());
            cmd.Parameters.AddWithValue("@Category", CategoryList.Text.ToUpper());
            cmd.Parameters.AddWithValue("@sscm", int.Parse(SSCMarks.Text));
            cmd.Parameters.AddWithValue("@sscAtt", int.Parse(AttemptsTxtSSc.Text));
            cmd.Parameters.AddWithValue("@hscm", int.Parse(HSCMarksTxt.Text));
            cmd.Parameters.AddWithValue("@hscAtt", int.Parse(AttemptsTxtHsc.Text));
            cmd.Parameters.AddWithValue("@per", PercentageTxt.Text.ToUpper());
            cmd.Parameters.AddWithValue("@hscMsheet", "None");
            cmd.Parameters.AddWithValue("@studPic", "None");
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Your Admission form is submitted successfully");
            }
            catch
            {
                Response.Write("error");
            }
            finally
            {
                conn.Close();
                // Response.Write("done");
            }
        
        }
        private int checkValidation()
        {
            // if(FirstName.Text=="" || LastName.Text== "" || RBgender.SelectedIndex == -1 || )
            return 0;
        }
        protected void dd_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void yyyy_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private string MarksheetImgSave(){
             if(HSCmarksheet.HasFile)
             {
                string fileext = System.IO.Path.GetExtension(HSCmarksheet.FileName);
                if (fileext.ToLower() != ".jpg" && fileext.ToLower() != ".png" && fileext.ToLower() != ".jpeg")
                {
                    MarkSheetErrorLbl.Text = "Only file with .jpg , .png or . jpeg are allowed";
                    return "n";
                }

                else
                {
                    int filesize = HSCmarksheet.PostedFile.ContentLength;
                    if (filesize > 2097152)
                    {
                        MarkSheetErrorLbl.Text = "File is too big";
                        return "n";
                    }
                    else
                    {
                        HSCmarksheet.SaveAs(Server.MapPath("~/images/" + FirstName.Text.Trim() + str_NewID + ".jpg"));
                        MarkSheetErrorLbl.Text = "File uploaded";

                        return "/ uploads / marksheets / " + FirstName.Text.Trim()+"_Marksheet" + str_NewID + ".jpg";
                    }

                }
                }
            else
            {
                return "n";
            }
             
        }
        private string StudentImgSave()
        {
            if (StudentPhoto.HasFile)
            {
                string fileext = System.IO.Path.GetExtension(StudentPhoto.FileName);
                if (fileext.ToLower() != ".jpg" && fileext.ToLower() != ".png" && fileext.ToLower() != ".jpeg")
                {
                    StudPicErrorLbl.Text = "Only file with .jpg , .png or . jpeg are allowed";
                    return "n";
                }

                else
                {
                    int filesize = StudentPhoto.PostedFile.ContentLength;
                    if (filesize > 2097152)
                    {
                        StudPicErrorLbl.Text = "File is too big";
                        return "n";
                    }
                    else
                    {
                        StudentPhoto.SaveAs(Server.MapPath("~/uploads/studentPic/" + FirstName.Text.Trim() + str_NewID + ".jpg"));
                        MarkSheetErrorLbl.Text = "File uploaded";

                        return "~/uploads/studentPic/" + FirstName.Text.Trim() + str_NewID + ".jpg";
                    }

                }
            }
            else
            {
                return "n";
            }

        }

    }
}