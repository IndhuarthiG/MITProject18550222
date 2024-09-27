using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class adminEmail : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string to = TextBox1.Text;
                string from = "sports.metho@gmail.com";
                string password = "iahj kjyw gpiu lgos";
                string[] Multiple = to.Split(',');
                MailMessage msg = new MailMessage();
                msg.Subject = TextBox5.Text;
                msg.From = new MailAddress(from);
                msg.Body = TextBox4.Text;
                foreach (string toEmail in Multiple)
                {
                    msg.To.Add(new MailAddress(toEmail));
                }

                if (FileUpload1.HasFile)
                {
                    msg.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
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