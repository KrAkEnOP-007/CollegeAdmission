using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace College_Addmission_Sys
{
    public partial class date : System.Web.UI.UserControl
    {
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
        public string Text
        {
            get 
            {

                return mm.SelectedValue + "/" + dd.SelectedValue + "/" + yyyy.SelectedValue;
            }
            set { }
        
        }

        protected void dd_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void yyyy_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}