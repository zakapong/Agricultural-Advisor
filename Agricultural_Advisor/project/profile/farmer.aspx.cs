using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.profile
{
    public partial class farmer : System.Web.UI.Page
    {

        String UserName= "", VoterId = "";
        protected void Page_Load(object sender, EventArgs e)
        {


            //showing farmers name and id

            UserName = (String)Session["Name"];
            VoterId= (String)Session["VoterId"];

            Label14.Text = UserName;
            Label16.Text = VoterId;

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

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            //saving farmers sell information and date.
            try
            {
                SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                connn.Open();
                string insCmdd = "Insert into FarmerService (ProductId, ProductName, Price, Availablity, DeliveryDate ) values (@Name, @CardNumber, @CropAmount, @Money, @Payment)";
                SqlCommand inserUse = new SqlCommand(insCmdd, connn);
                inserUse.Parameters.AddWithValue("@Name", TextBox1.Text);
                inserUse.Parameters.AddWithValue("@CardNumber", TextBox2.Text);
                inserUse.Parameters.AddWithValue("@CropAmount", TextBox3.Text);
                inserUse.Parameters.AddWithValue("@Money", TextBox4.Text);
               inserUse.Parameters.AddWithValue("@Payment", TextBox5.Text);

                inserUse.ExecuteNonQuery();
                connn.Close();

            }

            catch (Exception er)
            {

                Response.Write("something wrong");
            }

            try

                //Going farmers product directly to the market.
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insCmdd = "Insert into LocalProduct (ProductId, ProductName, Price, Availablity) values (@Name, @CardNumber, @CropAmount, @Money)";
                SqlCommand inser = new SqlCommand(insCmdd, conn);
                inser.Parameters.AddWithValue("@Name", TextBox1.Text);
                inser.Parameters.AddWithValue("@CardNumber", TextBox2.Text);
                inser.Parameters.AddWithValue("@CropAmount", TextBox3.Text);
                inser.Parameters.AddWithValue("@Money", TextBox4.Text);
             

                inser.ExecuteNonQuery();
                conn.Close();

            }

            catch (Exception er)
            {

                Response.Write("something wrong");
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/src/page1.aspx");
        }

    }


}