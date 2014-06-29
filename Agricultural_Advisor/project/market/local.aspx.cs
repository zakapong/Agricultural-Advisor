using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.market
{
    public partial class local : System.Web.UI.Page
    {

        String name = "", address = "", phone = "", product="";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvCustomres_RowCommand(object sender, GridViewCommandEventArgs e)
        {


            //checking gridview row and column and taking the data and moving to next page

            if (e.CommandName == "buy")
            {

                Debug.WriteLine("ssssss");
                ImageButton ib = (ImageButton)e.CommandSource;
                int index = Convert.ToInt32(ib.CommandArgument);
                GridViewRow row = gvCustomres.Rows[index];
                name = row.Cells[1].Text;
                Session["nameOrder"] = name;
                address = row.Cells[2].Text;
                Session["addressOrder"] = address;
                phone = row.Cells[3].Text;
                Session["phoneOrder"] = phone;
                product = row.Cells[0].Text;
                Session["phoOrder"] = product;
                Response.Redirect("~/market/LocalBuyCon.aspx");
               
            }

          
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/src/page1.aspx");
        }
    }
}