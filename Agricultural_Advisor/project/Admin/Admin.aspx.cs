using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.Admin
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //admin control panel

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/profile/farmer.aspx");
           
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/profile/merchant.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/market/local.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/market/national.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/JavaWeb.asmx");
        }

       

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/src/page1.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/TextChange.aspx");
        }
    }
}