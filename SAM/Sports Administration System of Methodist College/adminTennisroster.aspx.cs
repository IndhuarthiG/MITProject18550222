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
    public partial class adminTennisroster : System.Web.UI.Page
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
                qry = "Select * from Rosters where SportName='Tennis'";
            }
            else
            {
                qry = "Select * from Rosters where SportName= 'Tennis' AND Surname like '%" + searchText + "%'";
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
        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Add Duty roster.aspx");
        //}

        //void getemail()
        //{
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);

        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("SELECT * FROM Rosters where Sport_Name='Tennis'", con);

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
        //                emailAddresses = emailAddresses + (emailAddresses == "" ? "" : ",") + oReader["EmailID"].ToString();

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

        //protected void Button3_Click(object sender, EventArgs e)//send
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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetData(TextBox6.Text);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            string ddate = (GridView1.Rows[e.RowIndex].FindControl("Textbox1") as TextBox).Text;
            string ttime = (GridView1.Rows[e.RowIndex].FindControl("Textbox2") as TextBox).Text;
            string ttitle = (GridView1.Rows[e.RowIndex].FindControl("Textbox4") as TextBox).Text;
            string sname = (GridView1.Rows[e.RowIndex].FindControl("Textbox5") as TextBox).Text;
            string email = (GridView1.Rows[e.RowIndex].FindControl("Textbox7") as TextBox).Text;
            string status = (GridView1.Rows[e.RowIndex].FindControl("Textbox8") as TextBox).Text;
            string requests = (GridView1.Rows[e.RowIndex].FindControl("Textbox9") as TextBox).Text;
            string addedby = (GridView1.Rows[e.RowIndex].FindControl("Textbox10") as TextBox).Text;

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Format("Update Rosters set Date = '{0}', Time ='{1}', Title='{2}', Surname='{3}', EmailID='{4}', Status='{5}', Requests='{6}', Addedby='{7}' where ID='{8}'", ddate, ttime, ttitle, sname, email, status, requests, addedby, id);

            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            GetData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            SqlConnection con = new SqlConnection(strcon);
            string qry = "Delete from Rosters Where ID = " + id;
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            int row = cmd.ExecuteNonQuery();
            con.Close();

            if (row > 0)
            {
                GetData();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();
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

        protected void Unnamed_ServerClick(object sender, EventArgs e)//search
        {
            GetData(TextBox6.Text);
        }

        //protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
        //{
        //    CheckBox chkAll =
        //   (CheckBox)GridView1.HeaderRow.FindControl("chkSelectAll");
        //    if (chkAll.Checked == true)
        //    {
        //        foreach (GridViewRow gvRow in GridView1.Rows)
        //        {
        //            CheckBox chkSel =
        //                 (CheckBox)gvRow.FindControl("chkSelect");
        //            chkSel.Checked = true;
        //        }
        //    }
        //    else
        //    {
        //        foreach (GridViewRow gvRow in GridView1.Rows)
        //        {
        //            CheckBox chkSel = (CheckBox)gvRow.FindControl("chkSelect");
        //            chkSel.Checked = false;
        //        }
        //    }
        //}

        protected void btnSendMail_Click(object sender, EventArgs e)//roster alert
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select EmailID,Title, Surname, Date, Time from Rosters where SportName= 'Tennis' AND Status ='Active' ", con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    String email = (dr.GetString(0));
                    String title = (dr.GetString(1));
                    String surname = (dr.GetString(2));
                    String date = (dr.GetString(3));
                    String time = (dr.GetString(4));

                    //SmtpClient c = new SmtpClient();

                    MailAddress addr = new MailAddress("sport.metho@gmail.com");
                    MailAddress add = new MailAddress(email);

                    string message = "You have been rostered for Tennis practices this month";
                    MailMessage msg = new MailMessage();
                    msg.To.Add(add);
                    msg.From = addr;
                    MailMessage mm = new MailMessage(addr, add);
                    mm.Subject = "Tennis sports roster";
                    mm.Body = "Dear " + title + surname + ",<br /><br />" + message + "on " + date + "from " + time + "Regards" + ", <br />" + "Admin";
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

        protected void Button1_Click(object sender, EventArgs e)//cancel alert
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select EmailID,Title, Surname, Date, Time from Rosters where SportName= 'Tennis' AND Status='Cancelled' ", con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    String email = (dr.GetString(0));
                    String title = (dr.GetString(1));
                    String surname = (dr.GetString(2));
                    String date = (dr.GetString(3));
                    String time = (dr.GetString(4));

                    //SmtpClient c = new SmtpClient();

                    MailAddress addr = new MailAddress("sport.metho@gmail.com");
                    MailAddress add = new MailAddress(email);

                    string message = "Tennis practices have been cancelled";
                    MailMessage msg = new MailMessage();
                    msg.To.Add(add);
                    msg.From = addr;
                    MailMessage mm = new MailMessage(addr, add);
                    mm.Subject = "Tennis sports roster";
                    mm.Body = "Dear " + title + surname + ",<br /><br />" + message + "for " + date + time + "Regards" + ", <br />" + "Admin";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminTennisAvail.aspx");
        }
    }
}