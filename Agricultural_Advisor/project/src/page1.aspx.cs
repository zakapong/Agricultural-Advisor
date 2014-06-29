using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class page1 : System.Web.UI.Page
    {



        String nam = "", add = "";
        String na = "", ad = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string Name = "";
            string Pass = "";
            string ame = "";
            string ass = "";




            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //checking that member is valid or not

            if (Membership.ValidateUser(TextBox1.Text, TextBox2.Text))
            {

                //checking the roles
                if (Roles.IsUserInRole(TextBox1.Text, "Merchant"))
                {
                    //search the database to get the voter id and name

                        string insCmds = "select * from Registration where Name='"+TextBox1.Text+"'";
                        SqlCommand inserUsers = new SqlCommand(insCmds, con);

                        SqlDataReader drs = inserUsers.ExecuteReader();

                        while (drs.Read())
                        {

                            Name = drs["Name"].ToString();
                           Pass = drs["VoterId"].ToString();

                        }

                        nam = Name;
                        Session["nameO"] = nam;
                        add = Pass;
                        Session["addressO"] = add;

                        Response.Redirect("~/profile/merchant.aspx");

                     


                    }

                //checking admin role

                    if (Roles.IsUserInRole(TextBox1.Text, "Admin"))
                    {



                   


                        Response.Redirect("~/Admin/Admin.aspx");
                    }


                    if (Roles.IsUserInRole(TextBox1.Text, "Farmer"))
                    {
                        //search the database to get the voter id and name

                        string insCmd = "select * from Registration";
                        SqlCommand inserUser = new SqlCommand(insCmd, con);

                        SqlDataReader dr = inserUser.ExecuteReader();

                        while (dr.Read())
                        {

                            ame = dr["Name"].ToString();
                            ass = dr["VoterId"].ToString();

                        }

                        na = ame;
                        Session["nameOrder"] = na;
                        ad = ass;
                        Session["addressOrder"] = ad;

                        Response.Redirect("~/profile/farmer.aspx");






                       con.Close();



                }

                 
            }
        }
    }
}