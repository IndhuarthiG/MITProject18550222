using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Net;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("select *from Sport", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList3.DataBind();
                DropDownList3.DataTextField = "SportName";
                DropDownList3.DataValueField = "Sport_ID";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("Select Sport"));
            }
            TextBox6.Text = DateTime.Now.ToString();
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox3.Text = "";
            TextBox7.Text = "";
            TextBox4.Text = "";
            TextBox13.Text = "";
            TextBox5.Text = "";
            //Label1.Text = "";

        }

        

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    //try
        //    //{
        //    //    string sports = "";
        //    //    foreach (int i in ListBox1.GetSelectedIndices())
        //    //    {
        //    //        sports = sports + ListBox1.Items[i] + ",";
        //    //    }

        //    //    sports = sports.Remove(sports.Length - 1);

        //    //    SqlConnection con = new SqlConnection(strcon);

        //    //    if (con.State == ConnectionState.Closed)
        //    //    {
        //    //        con.Open();
        //    //    }
        //    //    SqlCommand cmd = new SqlCommand("INSERT INTO Registration(FirstName, Surname, Class, SelectedSport, ContactNo, Email, Date) values('" + this.TextBox3.Text + "', '" + this.TextBox4.Text + "', '" + this.TextBox5.Text + "', '" + sports + "', '" + this.TextBox12.Text + "','" + this.TextBox13.Text + "','" + this.TextBox6.Text + "')", con);



        //    //    cmd.ExecuteNonQuery();
        //    //    con.Close();

        //    //    Response.Write("<script>alert('Registration Successful. You will be notified soon')</script>");
        //    //    clearForm();

        //    //}

        //    //catch (Exception ex)
        //    //{
        //    //    Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    //}


        //}
        
        protected void Button2_Click1(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Queries(Name, Email, Subject, Message) values('" + this.TextBox1.Text + "', '" + this.TextBox2.Text + "', '" + this.TextBox7.Text + "', '" + this.TextBox8.Text + "')", con);



                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Message was sent Successfully. You will be notified soon')</script>");
                clearForm();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)//admission link
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Sport_reg where AdmissionNo='" + TextBox9.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox13.Text = dt.Rows[0][5].ToString();
                    TextBox5.Text = dt.Rows[0][10].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Student ID. Please make payment to complete registration');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//Register button
        {
            //try
            //{
            //    //using (Stream fs= FileUpload1.PostedFile.InputStream)

            //    //    using (BinaryReader br= new BinaryReader(fs))

            //    //byte[] bytes = br.ReadBytes((Int32)fs.Length);
            //    string extension = Path.GetExtension(FileUpload1.FileName);
            //    if (extension == ".pdf" || extension == ".jpg" || extension == ".png")
            //    {
            //        String filePath = Server.MapPath("~/Receipts/" + FileUpload1.FileName);

            //        FileUpload1.SaveAs(filePath);
            //        Path.GetFileName(FileUpload1.FileName).ToString();
            //        //string fname = Path.GetFileName(FileUpload1.FileName);
            //        //FileUpload1.SaveAs(Server.MapPath("Receipts/") + fname);
            //        SqlConnection con = new SqlConnection(strcon);
            //        con.Open();

            //        SqlCommand cmd = new SqlCommand();

            //        cmd.CommandText = "INSERT INTO Student_Sport values(@AdmissionNo,@FirstName,@Surname,@Sport_ID,@SportName,@Email,@Receipt,@DateJoined)";
            //        cmd.Parameters.AddWithValue("@AdmissionNo", TextBox9.Text);
            //        cmd.Parameters.AddWithValue("@FirstName", TextBox3.Text);
            //        cmd.Parameters.AddWithValue("@Surname", TextBox4.Text);
            //        cmd.Parameters.AddWithValue("@Sport_ID", DropDownList3.SelectedValue);
            //        cmd.Parameters.AddWithValue("@SportName", DropDownList3.SelectedItem.Text);
            //        cmd.Parameters.AddWithValue("@Email", TextBox13.Text);
            //        cmd.Parameters.AddWithValue("@Receipt", FileUpload1.FileName);
            //        cmd.Parameters.AddWithValue("@DateJoined", TextBox6.Text);
            //        cmd.Connection = con;

            //        //Label lbl = FileUpload1.FindControl("Label1") as Label;
            //        //lbl.Text = "";

            //        if (!FileUpload1.HasFile)
            //        {
            //            Label1.ForeColor = System.Drawing.Color.Red;

            //            Label1.Text = "Upload Payment Receipt";
            //        }

            //        else
            //        {

            //            int t = cmd.ExecuteNonQuery();

            //            con.Close();

            //            if (t > 0)
            //            {
            //                Response.Write("<script>alert('Entry Successful')</script>");
            //                clearForm();
            //            }

            //        }
            //    }
            //    else
            //    {
            //        Label1.Text = "Upload Only pdf, jpeg and png files";
            //        Label1.ForeColor = System.Drawing.Color.Red;
            //    }

            //}
            //catch (Exception ex)
            //{
            //    Response.Write("<script>alert('" + ex.Message + "');</script>");
            //}

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "INSERT INTO Student_Sport values(@AdmissionNo,@FirstName,@Surname,@Sport_ID,@SportName,@Email,@Receipt,@DateJoined)";
                cmd.Parameters.AddWithValue("@AdmissionNo", TextBox9.Text);
                cmd.Parameters.AddWithValue("@FirstName", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Surname", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Sport_ID", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@SportName", DropDownList3.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox13.Text);
                cmd.Parameters.AddWithValue("@Receipt", TextBox5.Text);
                cmd.Parameters.AddWithValue("@DateJoined", TextBox6.Text);
                
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Entry Successful')</script>");
                //clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            TextBox6.Text = DateTime.Now.ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)//Send alert
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select EmailID,Title, Surname, sport from Coach where SportName like '%" + DropDownList3.SelectedItem.Text + "%'", con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    String email = (dr.GetString(0));
                    String title = (dr.GetString(1));
                    String surname = (dr.GetString(2));
                    //String sport = (dr.GetString(3));
                    //String time = (dr.GetString(4));

                    //SmtpClient c = new SmtpClient();

                    MailAddress addr = new MailAddress("sports.metho@gmail.com");
                    MailAddress add = new MailAddress(email);

                    string message = "A new registration has been made.";
                    MailMessage msg = new MailMessage();
                    msg.To.Add(add);
                    msg.From = addr;
                    MailMessage mm = new MailMessage(addr, add);
                    mm.Subject = "New Registration";
                    mm.Body = "Dear " + title + " " + surname + ",<br /><br/>" + message +  ". <br /><br/>" + "Regards" + ", <br />" + "Admin";
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    NetworkCredential NetworkCred = new NetworkCredential("sports.metho@gmail.com", "iahj kjyw gpiu lgos");
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