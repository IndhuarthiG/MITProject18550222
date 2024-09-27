using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Reset_Password : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)//reset
        {
            try
            {
                string username = TextBox2.Text;
                string newpw = TextBox3.Text;
                string cnfpw = TextBox1.Text;

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                
                              
                
                SqlCommand cmd = new SqlCommand("select * from Login where UserName = '" + username + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    dr.Read();
                    con.Close();
                    if (newpw == cnfpw)
                    {
                        con.Open();
                        cmd = new SqlCommand("update Login set Password ='" + newpw + "' where UserName = '" + TextBox2.Text + "'", con);
                        cmd.ExecuteNonQuery();
                        con.Close();

                        Response.Write("<script>alert('Password successfully changed!')</script>");
                    }


                }
                else
                {
                    Response.Write("<script>alert('Invalid User Name!')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //userdefined method
       
        

        
    }
}