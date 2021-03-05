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
    public partial class AdminMerit : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(College_Addmission_Sys.Class1.cnstr);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from MeritTB", cn);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            cn.Close();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            int i;
            cn.Open();
            string str = "Y";
            SqlCommand cmd = new SqlCommand("insert into MeritTB(Form_No,Name,Percentage,Mobile_No) select Form_No,Name,Per,Phone_No from Form_Registration where Per > 60 and Merit_status = 'N'", cn);
            i = cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("update Form_Registration set Merit_Status = '" + str.ToString() + "' where Per > 60 ", cn);
            i = cmd1.ExecuteNonQuery();
            if (i > 0)
            {
                lblmes.Text = "Merit Procedure Done..";
            }
            else
            {
                cn.Close();
            }
        }
    }
}
