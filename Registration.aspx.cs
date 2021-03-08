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
        static String CS = ConfigurationManager.ConnectionStrings["conn1"].ConnectionString;
        SqlConnection conn = new SqlConnection(CS);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            
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
           // int check = checkValidation();

        }

        private int checkValidation()
        {
            // if(FirstName.Text=="" || LastName.Text== "" || RBgender.SelectedIndex == -1 || )
            return 0;
        }
    }
}