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
    public partial class UserMerit : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(College_Addmission_Sys.Class1.cnstr);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnmerit_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from MeritTB", cn);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            cn.Close();
        }
    }
}
