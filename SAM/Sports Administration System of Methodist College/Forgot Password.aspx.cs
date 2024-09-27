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
    public partial class Forgot_Password1 : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string randomcode;
        public static string to;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)//send code button
        {
            string from, pass,messagebody;
            Random rand = new Random();
            randomcode = (rand.Next(999999)).ToString();
            Session["randomcode"] = randomcode;
            MailMessage message = new MailMessage();
            to = (TextBox3.Text).ToString();
            from = "sports.metho@gmail.com";
            pass = "pnzlnuuqxhtgdlnd";
            messagebody = $"Your reset code is {randomcode}";
            message.To.Add(to);
            message.From = new MailAddress(from);
            message.Body = messagebody;
            message.Subject = "Password reset code";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(from, pass);
            try
            {
                smtp.Send(message);
                Response.Write("<script>alert('Code Sent Successfully')</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)//verify button
        {
            string randomcode = Session["randomcode"].ToString();
            if (randomcode == (TextBox1.Text))
            {
                to = TextBox3.Text;
                //Reset_Password rp = new Reset_Password();
                //this.Visible = false;
                //rp.Visible = true;
                Response.Redirect("Reset Password.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong code')</script>");
            }
        }

        //protected void Button2_Click(object sender, EventArgs e)//send code
        //{
        //    string from, pass, messagebody;
        //    Random rand = new Random();
        //    randomcode = (rand.Next(999999)).ToString();
        //    MailMessage message = new MailMessage();
        //    to = (TextBox3.Text).ToString();
        //    from = "";
        //    pass = "";
        //    messagebody = $"Your reset code is {randomcode}";
        //    message.To.Add(to);
        //    message.From = new MailAddress(from);
        //    message.Body = messagebody;
        //    message.Subject = "Password reset code";
        //    SmtpClient smtp = new SmtpClient("smtp.gmail.com");
        //    smtp.EnableSsl = true;
        //    smtp.Port = 587;
        //    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        //    smtp.Credentials = new NetworkCredential(from, pass);
        //    try
        //    {
        //        smtp.Send(message);
        //        Response.Write("<script>alert('Code Sent Successfully')</script>");
        //    }
        //    catch(Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }

        //}

        //protected void Button1_Click(object sender, EventArgs e)//verify
        //{
        //    if (randomcode== (TextBox1.Text).ToString())
        //    {
        //        to = TextBox3.Text;
        //        Reset_Password rp = new Reset_Password();
        //        this.hide();
        //        rp.show();

        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Wrong code')</script>");
        //    }

        //}

        //private void hide()
        //{
        //    throw new NotImplementedException();
        //}




    }
}