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
    public partial class adminParticipantssquash : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData(string searchText = "")
        {

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Empty;
            if (string.IsNullOrEmpty(searchText))
            {
                qry = "Select * from Student_Sport where SportName='Squash'";
            }
            else
            {
                qry = "Select * from Student_Sport where SportName= 'Squash' AND FirstName like '%" + searchText + "%'";
            }
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            //DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            ViewState["dt"] = dt;
            ViewState["sort"] = "ASC";
            GridView1.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add new Participant.aspx");
        }

        //void getemail()
        //{
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);

        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("SELECT * FROM Student_Sport where Sport_Name='Squash'", con);

        //        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        /*DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        if (dt.Rows.Count >= 1)
        //        {
        //            TextBox1.Text = dt.Rows[0][6].ToString();//email

        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('Invalid');</script>");
        //        }*/
        //        //SqlCommand oCmd = new SqlCommand(oString, myConnection);
        //        // myConnection.Open();
        //        using (SqlDataReader oReader = cmd.ExecuteReader())
        //        {
        //            string emailAddresses = string.Empty;
        //            while (oReader.Read())
        //            {
        //                emailAddresses = emailAddresses + (emailAddresses == "" ? "" : ",") + oReader["Email"].ToString();

        //            }

        //            TextBox1.Text = emailAddresses;

        //            con.Close();
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }
        //}
        //protected void Button1_Click(object sender, EventArgs e)//emails
        //{
        //    getemail();
        //}

        
        //protected void Button3_Click1(object sender, EventArgs e)//send
        //{
        //    try
        //    {
        //        string to = TextBox1.Text;
        //        string from = TextBox2.Text;
        //        string password = TextBox3.Text;
        //        string[] Multiple = to.Split(',');
        //        MailMessage msg = new MailMessage();
        //        msg.Subject = TextBox5.Text;
        //        msg.From = new MailAddress(from);
        //        msg.Body = TextBox4.Text;
        //        foreach (string toEmail in Multiple)
        //        {
        //            msg.To.Add(new MailAddress(toEmail));
        //        }


        //        SmtpClient smtp = new SmtpClient();

        //        smtp.Host = "smtp.gmail.com";
        //        smtp.Port = 587;

        //        smtp.UseDefaultCredentials = false;

        //        smtp.EnableSsl = true;

        //        NetworkCredential nc = new NetworkCredential(from, password);

        //        smtp.Credentials = nc;

        //        smtp.Send(msg);

        //        Response.Write("<script>alert('Email Sent!')</script>");

        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            SqlConnection con = new SqlConnection(strcon);
            string qry = "Delete from Student_Sport Where ID = " + id;
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            int row = cmd.ExecuteNonQuery();
            con.Close();

            if (row > 0)
            {
                GetData();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetData();
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            DataTable result = (DataTable)ViewState["dt"];

            if (result.Rows.Count > 0)
            {
                if (Convert.ToString(ViewState["sort"]) == "ASC")
                {
                    result.DefaultView.Sort = e.SortExpression + " DESC";
                    ViewState["sort"] = " DESC";
                }
                else
                {
                    result.DefaultView.Sort = e.SortExpression + " ASC";
                    ViewState["sort"] = " ASC";
                }
                GridView1.DataSource = result;
                GridView1.DataBind();
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)//Search
        {
            GetData(TextBox6.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)//cancel alert
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select Email,FirstName, Surname from Student_Sport where SportName= 'Squash' ", con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    String email = (dr.GetString(0));
                    String fname = (dr.GetString(1));
                    String surname = (dr.GetString(2));


                    //SmtpClient c = new SmtpClient();

                    MailAddress addr = new MailAddress("sport.metho@gmail.com");
                    MailAddress add = new MailAddress(email);

                    string message = "Squash practices have been cancelled. Please check the practice schedules for more information.";
                    MailMessage msg = new MailMessage();
                    msg.To.Add(add);
                    msg.From = addr;
                    MailMessage mm = new MailMessage(addr, add);
                    mm.Subject = "Squash Practices have been cancelled";
                    mm.Body = "Dear " + fname + surname + ",<br /><br />" + message + "Regards" + ", <br />" + "Admin";
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    NetworkCredential NetworkCred = new NetworkCredential("sport.metho@gmail.com", "iahj kjyw gpiu lgos");
                    smtp.Credentials = NetworkCred;

                    //smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    //smtp.TargetName = "STARTTLS/smtp.gmail.com";
                    smtp.Send(mm);

                }
                con.Close();
                Response.Write("<script>alert('Email sent')</script>");
            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}