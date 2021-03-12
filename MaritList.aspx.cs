using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CollegeAdmission
{
   
    public partial class MaritList : System.Web.UI.Page
    {
        static String CS = ConfigurationManager.ConnectionStrings["DATAMAIN"].ConnectionString;
        SqlConnection conn = new SqlConnection(CS);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MaritCheckBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand com = new SqlCommand("select Id , Firstname, LastName , Percentage from Marittable ", conn);
                conn.Open();
                IDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    GridView1.DataSource = com.ExecuteReader();
                    GridView1.DataBind();
                    conn.Close();
                    Panel1.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('there was an error Try again..!')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('there was an error Try again..!')</script>");
            }
          
        }
    }
}