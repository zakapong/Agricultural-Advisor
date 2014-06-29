using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace project
{
    public class DataHandle
    {
      
        //search the product price in kilogram  //web service
        
        public static string searchhh(string id)
        {

            string name = "";
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string insCmd = ("Select Price from LocalProduct where ProductName='" + id + "'");
            SqlCommand cmd = new SqlCommand(insCmd, con);


            try
            {
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    name = dr["Price"].ToString();
                }
                con.Close();
              

            }
            catch (Exception er)
            {
               
            }
            finally
            {


            }


            return name;
        }

    }
}