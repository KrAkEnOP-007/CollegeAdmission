﻿using System;
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
            string query = "INSERT INTO RegistrationTable VALUES( @id,N'@fname' ,N'@lname' ,N'@fathern' , N'@focc' , n'@Mno' , N'@gender' ,N'@Birthdate' , N'@Email' ,N'@address' ,N'@city' , n'@pin', N'@category' , @sscm ,@sscAtt , @hscm , @hscAtt , n'@per' , N'@hscMsheet' , N'@studPic' ) ";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id" , 5);
            cmd.Parameters.AddWithValue("@fname" , FirstName.Text.ToString());
            cmd.Parameters.AddWithValue("@lname", LastName.Text.ToString());
            cmd.Parameters.AddWithValue("@fathern", FatherName.Text.ToString());
            cmd.Parameters.AddWithValue("@focc", FatherOcc.Text.ToString());
            cmd.Parameters.AddWithValue("@Mno", MobileText.Text);
            cmd.Parameters.AddWithValue("@gender", RBgender.SelectedValue.ToString());
       
            cmd.Parameters.AddWithValue("@Birthdate", " " );
            cmd.Parameters.AddWithValue("@Email", emailText.Text.ToString());
            cmd.Parameters.AddWithValue("@address", AddressText.Text.ToString());
            cmd.Parameters.AddWithValue("@city", CityTxt.Text.ToString());
            cmd.Parameters.AddWithValue("@pin", PincodeTxt.Text.ToString());
            cmd.Parameters.AddWithValue("@Category", CategoryList.Text.ToString());
            cmd.Parameters.AddWithValue("@sscm", SSCMarks.Text);
            cmd.Parameters.AddWithValue("@sscAtt", AttemptsTxtSSc.Text);
            cmd.Parameters.AddWithValue("@hscm", HSCMarksTxt.Text);
            cmd.Parameters.AddWithValue("@hscAtt", AttemptsTxtHsc.Text);
            cmd.Parameters.AddWithValue("@per", PercentageTxt.Text);
            cmd.Parameters.AddWithValue("@hscMsheet", "None");
            cmd.Parameters.AddWithValue("@studPic", "None");
         
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("data entered successfully");
            
         
                Response.Write("error");
          
                conn.Close();
                Response.Write("done");
            
        
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

    }
}