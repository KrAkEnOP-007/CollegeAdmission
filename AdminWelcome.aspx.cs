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
    public partial class AdminWelcome : System.Web.UI.Page
    {
        static String CS = ConfigurationManager.ConnectionStrings["DATAMAIN"].ConnectionString;
        SqlConnection conn = new SqlConnection(CS);

        protected void Page_Load(object sender, EventArgs e)
        {
          ////  MultiView1.ActiveViewIndex = 0;
        }

        protected void Marit_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void getMarit_Click(object sender, EventArgs e)
        {
            conn.Open();
          //  SqlCommand cmd = new SqlCommand("insert into MeritTable(id,FirstName,LastName,HSCPercentage,MobileNo) select id,FirstName,LastName,Percentage,MobileNo from RegistrationTable where Percentage > 60 and Merit_status = 'N'", cn);
          //  cmd.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("select * from RegistrationTable where Percentage >=60", conn);
            MaritListGrid.DataSource = cmd2.ExecuteReader();
            MaritListGrid.DataBind();
            MaritListPanel.Visible = true;
            conn.Close();
        }

        protected void ChamgePass_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void AdmissionWindow_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void PublishMaritList_Click(object sender, EventArgs e)
        {
             SqlCommand cmd = new SqlCommand("insert into MeritTable(id,FirstName,LastName,HSCPercentage,MobileNo) select id,FirstName,LastName,Percentage,MobileNo from RegistrationTable where Percentage > 60 and Merit_status = 'N'", cn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Inserted in marit database Successfully");
        }
    }
}