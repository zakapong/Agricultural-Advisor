using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.market
{
    public partial class NationalBuyCon : System.Web.UI.Page
    {
        String name = "", address = "", phone = "", product = "";

        protected void Page_Load(object sender, EventArgs e)
        {
          
            //product information is comming from grid view from national market page

            name = (String)Session["nameOrder"];
            address = (String)Session["addressOrder"];
            phone = (String)Session["phoneOrder"];
            product = (String)Session["phoOrder"];

            Label1.Text = name;
            Label2.Text = address;
            Label3.Text = phone;
            Label4.Text = product;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            //checking is it master card or visa card

            if (RadioButtonList1.SelectedValue == "MasterCard")
            {

                Image1.ImageUrl = "~/images/master.jpg";
            }

            if (RadioButtonList1.SelectedValue == "Visa")
            {

                Image1.ImageUrl = "~/images/visa.jpg";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
              //inserting product selling information to the database
                
                SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                connn.Open();
                string insCmdd = "Insert into SellBuy (Name, CardNumber, CropAmount, Money) values (@Name, @CardNumber, @CropAmount, @Money)";
                SqlCommand inserUse = new SqlCommand(insCmdd, connn);
                inserUse.Parameters.AddWithValue("@Name", TextBox1.Text);
                inserUse.Parameters.AddWithValue("@CardNumber", TextBox2.Text);
                inserUse.Parameters.AddWithValue("@CropAmount", TextBox4.Text);
                inserUse.Parameters.AddWithValue("@Money", TextBox8.Text);
            

                inserUse.ExecuteNonQuery();
                connn.Close();

            }

            catch (Exception er)
            {

                Response.Write("something wrong");
            }
          

            //searching for the visa or master card number and checking the balance


            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(s);



            SqlCommand cmd = new SqlCommand("select * from MasterVisaa where CardNumber='" + TextBox2.Text + "'", con);

            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@card", TextBox2.Text);



            cmd.Connection = con;

            con.Open();

            string var = "";
            string fact = "";


            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {

               
                fact = dr["CardNumber"].ToString();

                var = dr["Money"].ToString();


            } con.Close();
            try
            {

                int balanc = Convert.ToInt32(var);

                int result;
                int bal = Convert.ToInt32(TextBox8.Text);

                result = balanc - bal;

                //updating the balance in the bank account

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insCmd = "update MasterVisaa set Money = '" + result + "' where CardNumber ='" + fact + "'";

                SqlCommand inserUser = new SqlCommand(insCmd, conn);

                inserUser.ExecuteNonQuery();
              
                conn.Close();

            }

            catch (SqlException er)
            {

                Response.Write(er);

            }


            //seraching the product amount from the market database

            string ss = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection cons = new SqlConnection(ss);

            SqlCommand cmds = new SqlCommand("select * from LocalProduct where ProductId='" + Label4.Text + "'", con);

            cmds.CommandType = CommandType.Text;

            cmds.Parameters.AddWithValue("@productId", Label4.Text);



            cmds.Connection = cons;

            cons.Open();

            string vars = "";
           


            SqlDataReader drs = cmds.ExecuteReader();

            while (drs.Read())
            {

               

                vars = drs["Availablity"].ToString();


            } cons.Close();
            try
            {

                int balancs = Convert.ToInt32(vars);

                int results;
                int bals = Convert.ToInt32(TextBox4.Text);

               //updating the product availablity in the market
                
                results = balancs - bals;

                SqlConnection conns = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conns.Open();
                string insCmds = "update LocalProduct set Availablity = '" + results + "' where ProductId ='" + Label4.Text + "'";

                SqlCommand inserUsers = new SqlCommand(insCmds, conns);

                inserUsers.ExecuteNonQuery();
                
                conns.Close();

            }

            catch (SqlException er)
            {

                Response.Write("Something wrong");

            }

         


            Label5.Text = "Succeslly transction";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            //inserting selling information to the database
            try
            {
                SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                connn.Open();
                string insCmdd = "Insert into SellBuy (Name, CardNumber, CropAmount, Money) values (@Name, @CardNumber, @CropAmount, @Money)";
                SqlCommand inserUse = new SqlCommand(insCmdd, connn);
                inserUse.Parameters.AddWithValue("@Name", TextBox5.Text);
                inserUse.Parameters.AddWithValue("@CardNumber", TextBox6.Text);
                inserUse.Parameters.AddWithValue("@CropAmount", TextBox7.Text);
                inserUse.Parameters.AddWithValue("@Money", TextBox8.Text);
             

                inserUse.ExecuteNonQuery();
                connn.Close();

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