using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeAdmission.Extras
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/uploads/marksheets/") + "Nisarg122" + ".jpg");
            Response.Write("file uploaded");
            Image1.ImageUrl = "~/uploads/marksheets/nisarg122.jpg";
           
        }
    }
}