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
    public partial class Athletics_Coach_view : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData()
        {

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Empty;
            qry = "Select * from Rosters where SportName='Athletics' AND Status='Active' OR Status='Cancelled'";

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
            GetData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);


            string status = (GridView1.Rows[e.RowIndex].FindControl("Textbox6") as TextBox).Text;

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Format("Update Rosters set Status = '{0}' where ID='{1}'", status, id);

            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            GetData();
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

        protected void Button1_Click(object sender, EventArgs e)//Cancel alert
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select Date, Time from Rosters where SportName= 'Athletics' AND Status='Cancelled' ", con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    String date = (dr.GetString(0));
                    String time = (dr.GetString(1));

                    //SmtpClient c = new SmtpClient();

                    MailAddress addr = new MailAddress("archery.metho@gmail.com");
                    MailAddress add = new MailAddress("sport.metho@gmail.com");

                    string message = "Please note that Archery practices have been cancelled";
                    MailMessage msg = new MailMessage();
                    msg.To.Add(add);
                    msg.From = addr;
                    MailMessage mm = new MailMessage(addr, add);
                    mm.Subject = "Archery practices have been cancelled";
                    mm.Body = "Dear " + "Admin " + ",<br /><br />" + message + "for " + date + time + "Regards" + ", <br />" + "Coach";
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
    }
}