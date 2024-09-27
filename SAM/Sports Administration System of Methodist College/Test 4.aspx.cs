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
    public partial class Test_4 : System.Web.UI.Page
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

        //protected void sendmail(object sender, EventArgs e)
        //{

        //    Button btn = sender as Button;
        //    int rowIndex = 0;
        //    GridViewRow row = GridView1.Rows[rowIndex];
        //    //GridViewRow row = btn.NamingContainer as GridViewRow;


        //    string message = "";
        //    if (Button1.Text == "Alert")
        //    {
        //        message = "You have been rostered for athletic practices this month..";
        //    }
        //    if (Button3.Text == "Practice Cancelled")
        //    {
        //        message = "Athletic Practices have been cancelled.";
        //    }
        //    string from = "sport.metho@gmail.com";
        //    string title = row.Cells[0].Text.Trim();
        //    string name = row.Cells[1].Text.Trim();
        //    string toEmail = row.Cells[2].Text.Trim();
        //    string date = row.Cells[3].Text.Trim();
        //    string time = row.Cells[4].Text.Trim();
        //    using (MailMessage mm = new MailMessage(from, toEmail))
        //    {
        //        mm.Subject = "Athletic sports roster";
        //        mm.Body = "Hi " + title + name + ",<br /><br />" + message + "for " + date + time;
        //        mm.IsBodyHtml = true;
        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.EnableSsl = true;
        //        NetworkCredential NetworkCred = new NetworkCredential("sender@gmail.com", "senderpassword");
        //        smtp.UseDefaultCredentials = true;
        //        smtp.Credentials = NetworkCred;
        //        smtp.Port = 587;
        //        smtp.Send(mm);
        //    }
        //}
        protected void Button1_Click(object sender, EventArgs e)//send alert
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select EmailID,Title, Surname, Date, Time from Rosters where SportName= 'Athletics' ", con);

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

                    string message = "You have been rostered for athletic practices this month";
                    MailMessage msg = new MailMessage();
                    msg.To.Add(add);
                    msg.From = addr;
                    MailMessage mm = new MailMessage(addr, add);
                    mm.Subject = "Athletic sports roster";
                    mm.Body = "Dear " + title + surname + ",<br /><br />" + message + "on " + date + "from " + time + "Regards" + ", <br />" + "Admin";
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    NetworkCredential NetworkCred = new NetworkCredential("sport.metho@gmail.com", "bwph xvae cmsi rlhl");
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

        protected void Button3_Click(object sender, EventArgs e)//cancelled button
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select EmailID,Title, Surname, Date, Time from Rosters where SportName= 'Athletics' AND Status='Cancelled' ", con);

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

                    string message = "Athletic practices have been cancelled";
                    MailMessage msg = new MailMessage();
                    msg.To.Add(add);
                    msg.From = addr;
                    MailMessage mm = new MailMessage(addr, add);
                    mm.Subject = "Athletic sports roster";
                    mm.Body = "Dear " + title + surname + ",<br /><br />" + message + "for " + date + time + "Regards" + ", <br />" + "Admin";
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    NetworkCredential NetworkCred = new NetworkCredential("sport.metho@gmail.com", "bwph xvae cmsi rlhl");
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

        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        string cellValue = e.Row.Cells[e.Row.Cells.GetCellIndex(e.Row.Cells.Cast<DataControlFieldCell>().FirstOrDefault(cell => cell.ContainingField.HeaderText == "EmailID"))].Text;
        //    }
        //}
    }
}