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
    public partial class Coach_view_BBPart : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)//row checkboxes
        {
            CheckBox chkstatus = (CheckBox)sender;
            GridViewRow row = (GridViewRow)chkstatus.NamingContainer;
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)//header checkbox
        {
            CheckBox chkheader = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox2");
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chkrow = (CheckBox)row.FindControl("CheckBox1");
                if (chkheader.Checked == true)
                {
                    chkrow.Checked = true;
                }
                else
                {
                    chkrow.Checked = false;
                }
            }

            //CheckBox chkAll =(CheckBox)GridView1.HeaderRow.FindControl("chkSelectAll");
            //if (chkAll.Checked == true)
            //{
            //    foreach (GridViewRow row in GridView1.Rows)
            //    {
            //        CheckBox chkSel = (CheckBox)row.FindControl("chkSelect");
            //        chkSel.Checked = true;
            //    }
            //}
            //else
            //{
            //    foreach (GridViewRow row in GridView1.Rows)
            //    {
            //        CheckBox chkSel = (CheckBox)row.FindControl("chkSelect");
            //        chkSel.Checked = false;
            //    }
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)//send mail
        {
            //foreach(GridViewRow row in GridView1.Rows)
            //{
            //    CheckBox status = (row.Cells[2].FindControl("Checkbox2") as CheckBox);
            //    String emailadd = row.Cells[6].Text;
            //    if (status.Checked)
            //    {
            //        sendstudentmail(emailadd);
            //    }
            //}
            CheckBox chkheader = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox2");
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chkrow = (CheckBox)row.FindControl("CheckBox1");
                if (chkheader.Checked == true)
                {
                    chkrow.Checked = true;
                    //String emailadd = row.Cells[6].Text;
                    //sendstudentemail(emailadd);
                }
                else
                {
                    chkrow.Checked = false;
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)//report
        {
            Response.Redirect("");
        }

        //private static void sendstudentemail(string emailadd1)
        //{

        //    SmtpClient smtp = new SmtpClient();
        //    smtp.Host = "smtp.gmail.com";
        //    smtp.Port = 587;
        //    smtp.Credentials = new System.Net.NetworkCredential("", "");
        //    smtp.EnableSsl = true;
        //    MailMessage msg = new MailMessage();
        //    msg.Subject = TextBox5.Text;
        //    msg.Body = TextBox4.Text;
        //    string toaddress = emailadd1;
        //    msg.To.Add(toaddress);
        //    string fromaddress = "";
        //    msg.From = new MailAddress(fromaddress);
        //    try
        //    {
        //        smtp.Send.(msg);

        //    }
        //    catch
        //    {
        //        throw;
        //    }






    }
    }