using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.homepage
{
    public partial class local_news : System.Web.UI.Page
    {

        string text, title;
        protected void Page_Load(object sender, EventArgs e)
        {

            // only local news in text format
            
            
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            
            string insCmd = "Select * from Article WHERE ArticleID='1'";
            string insCmd2 = "Select * from Article WHERE ArticleID='2'";
            string insCmd3 = "Select * from Article WHERE ArticleID='3'";
            string insCmd4 = "Select * from Article WHERE ArticleID='4'";
            
            SqlCommand inserUser = new SqlCommand(insCmd, con);
            

            try
            {
                SqlDataReader dr = inserUser.ExecuteReader();
                

                while (dr.Read())
                {

                    text = dr["Text"].ToString();
                    title= dr["Title"].ToString();

                    Label2.Text = title;
                    Label4.Text = text;

                }

                con.Close();
                

            }
            catch (Exception er)
            {
            }
            finally
            {


            }

            

        }
    }
}