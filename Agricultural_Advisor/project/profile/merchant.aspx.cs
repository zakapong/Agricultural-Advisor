using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.profile
{
    public partial class merchant : System.Web.UI.Page
    {
        String UserName = "", VoterId = "";


        protected void Page_Load(object sender, EventArgs e)
        {
           
            //showing merchants name and id

            UserName= (String)Session["Name"];
            VoterId= (String)Session["VoterId"];

            Label1.Text = UserName;
            Label4.Text = VoterId;
        
        }

        //showing the highest market share

        protected void Chart1_Load(object sender, EventArgs e)
        {
            Chart1.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;
            Chart1.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;
        }

        protected void gvHover_RowCreated(object sender, GridViewRowEventArgs e)
        {
            //Add CSS class on header row.
            if (e.Row.RowType == DataControlRowType.Header)
                e.Row.CssClass = "header";

            //Add CSS class on normal row.
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowState == DataControlRowState.Normal)
                e.Row.CssClass = "normal";

            //Add CSS class on alternate row.
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowState == DataControlRowState.Alternate)
                e.Row.CssClass = "alternate";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/market/national.aspx");
        }


        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/market/local.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/src/page1.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/profile/TermsCondition.aspx");
        }
    }
}