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
    public partial class coach_view_Tennis__Participants : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void getemail()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Student_Sport where Sport_Name='Tennis'", con);

                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                /*DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0][6].ToString();//email

                }
                else
                {
                    Response.Write("<script>alert('Invalid');</script>");
                }*/
                //SqlCommand oCmd = new SqlCommand(oString, myConnection);
                // myConnection.Open();
                using (SqlDataReader oReader = cmd.ExecuteReader())
                {
                    string emailAddresses = string.Empty;
                    while (oReader.Read())
                    {
                        emailAddresses = emailAddresses + (emailAddresses == "" ? "" : ",") + oReader["Email"].ToString();

                    }

                    TextBox1.Text = emailAddresses;

                    con.Close();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)//emails
        {
            getemail();
        }

        protected void Button1_Click(object sender, EventArgs e)//send
        {
            try
            {
                string to = TextBox1.Text;
                string from = TextBox2.Text;
                string password = TextBox3.Text;
                string[] Multiple = to.Split(',');
                MailMessage msg = new MailMessage();
                msg.Subject = TextBox5.Text;
                msg.From = new MailAddress(from);
                msg.Body = TextBox4.Text;
                foreach (string toEmail in Multiple)
                {
                    msg.To.Add(new MailAddress(toEmail));
                }


                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;

                smtp.UseDefaultCredentials = false;

                smtp.EnableSsl = true;

                NetworkCredential nc = new NetworkCredential(from, password);

                smtp.Credentials = nc;

                smtp.Send(msg);

                Response.Write("<script>alert('Email Sent!')</script>");

            }
            catch (Exception ex)
            {

            }
        }
    }
}