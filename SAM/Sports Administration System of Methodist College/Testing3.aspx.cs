using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Testing3 : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        private SqlConnection con;

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
                qry = "Select * from Rosters where SportName='Athletics'";
            }
            else
            {
                qry = "Select * from Rosters where SportName= 'Athletics' AND Surname like '%" + searchText + "%'";
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

        protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chkAll =
           (CheckBox)GridView1.HeaderRow.FindControl("chkSelectAll");
            if (chkAll.Checked == true)
            {
                foreach (GridViewRow gvRow in GridView1.Rows)
                {
                    CheckBox chkSel =
                         (CheckBox)gvRow.FindControl("chkSelect");
                    chkSel.Checked = true;
                }
            }
            else
            {
                foreach (GridViewRow gvRow in GridView1.Rows)
                {
                    CheckBox chkSel = (CheckBox)gvRow.FindControl("chkSelect");
                    chkSel.Checked = false;
                }
            }
        }

        //private void SendEmailUsingGmail(string toEmailAddress)
        //{
        //    try
        //    {
        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Credentials = new NetworkCredential("yougmail@gmail.com", "your gmailpassword");
        //        smtp.Port = 587;
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.EnableSsl = true;
        //        MailMessage message = new MailMessage();
        //        message.From = new MailAddress("sport.metho@gmail.com");
        //        message.To.Add(toEmailAddress);
        //        message.Subject = "Sports Roster Reminder";
        //        message.Body = "so Enjoyed it self.";
        //        smtp.Send(message);
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("Error occured: " + ex.Message.ToString());
        //    }
        //}

        //private void SendEMail(MailMessage mail)
        //{
        //    SmtpClient client = new SmtpClient();
        //    client.Host = "smtp.gmail.com";
        //    client.Port = 587;
        //    client.EnableSsl = true;
        //    client.Credentials = new System.Net.NetworkCredential("@gmail.com", "password");

        //    try
        //    {
        //        client.Send(mail);
        //    }
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine("{0} Exception caught.", ex);
        //    }
        //}



        protected void SendMail(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            foreach (GridViewRow row in GridView1.Rows)
            {
                string currQty = row.Cells[1].Text;
                //GridViewRow row = btn.NamingContainer as GridViewRow;
                string message = "";
                    if (Button1.Text == "Alert")
                    {
                        message = "You have been rostered for athletic practices this month..";
                    }
                    if (Button3.Text == "Practice Cancelled")
                    {
                        message = "Athletic Practices have been cancelled.";
                    }
                    //string title = GridView1.Rows[i][j]
                    //string name = row.Cells[4].Text.Trim();
                    //string toEmail = row.Cells[5].Text.Trim();
                    //string date = row.Cells[8].Text.Trim();
                    //string time = row.Cells[9].Text.Trim();
                    //using (MailMessage mm = new MailMessage("sport.metho@gmail.com", toEmail))
                    //{
                    //    mm.Subject = "Reminder for Athletic Sports Roster";
                    //    mm.Body = "Hi " + title + name + ",<br /><br />" + message + "for " + date + time;
                    //    mm.IsBodyHtml = true;
                    //    SmtpClient smtp = new SmtpClient();
                    //    smtp.Host = "smtp.gmail.com";
                    //    smtp.EnableSsl = true;
                    //    NetworkCredential NetworkCred = new NetworkCredential("@gmail.com", "password");
                    //    smtp.UseDefaultCredentials = true;
                    //    smtp.Credentials = NetworkCred;
                    //    smtp.Port = 587;
                    //    smtp.Send(mm);
                    //}
                
            }
            Response.Write("<script>alert('Email sent')</script>");
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SendMail(sender, e);
        }



    }
}
