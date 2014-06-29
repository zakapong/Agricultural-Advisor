using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.profile
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

           

            con.Open();

            //creating membership
            MembershipCreateStatus status;
            MembershipUser newuser = Membership.CreateUser(TextBox11.Text, TextBox1.Text, "hello@sek.com", "none",
                  "none", false, out status);

            Debug.WriteLine("stus :" + status);
          
            
            string roleName = DropDownList4.SelectedValue.Trim();
            
            //creating role if not exits

            if (!Roles.RoleExists(roleName))
            {
                Roles.CreateRole(roleName);

            }

            //add user to role
            Roles.AddUserToRole(TextBox11.Text, DropDownList4.SelectedValue);

            //registering new user information
            con.Open();
            string insCmd = "Insert into Registration (Name, Password, VoterId, City, onion, ZoneId, Address, Email, Phone, Mobile, Landarea, Role ) values (@UserName, @Password, @voterId, @city, @onion, @zoneId, @address, @email, @phone, @mobile, @landarea, @role)";
            SqlCommand inserUser = new SqlCommand(insCmd, con);

         

            inserUser.Parameters.AddWithValue("@username", TextBox11.Text);
            inserUser.Parameters.AddWithValue("@password", TextBox1.Text);
            inserUser.Parameters.AddWithValue("@voterId", TextBox2.Text);
            inserUser.Parameters.AddWithValue("@city", DropDownList1.SelectedValue);
            inserUser.Parameters.AddWithValue("@onion", DropDownList2.SelectedValue);
            inserUser.Parameters.AddWithValue("@zoneId", DropDownList3.SelectedValue);
            inserUser.Parameters.AddWithValue("@address", TextBox6.Text);
            inserUser.Parameters.AddWithValue("@email", TextBox7.Text);
            inserUser.Parameters.AddWithValue("@phone", TextBox8.Text);
            inserUser.Parameters.AddWithValue("@mobile", TextBox7.Text);
            inserUser.Parameters.AddWithValue("@landarea", TextBox8.Text);
            inserUser.Parameters.AddWithValue("@role", DropDownList4.SelectedValue);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                inserUser.ExecuteNonQuery();
                con.Close();
                
                Response.Redirect("~/src/page1.aspx");

            }
            else {
               
                lblmsg.Text = "Register Again";
            
            }
            
        }

        
    }
}