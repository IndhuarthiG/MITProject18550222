using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
using System.Net.Mail;
using System.Net;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class CashierPage : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox6.Text = DateTime.Now.ToString();

            
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            TextBox6.Text = DateTime.Now.ToString();
        }

        bool checkstudentExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Student where AdmissionNo='" + TextBox9.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox9.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox13.Text = "";
            //TextBox7.Text = "";
            TextBox5.Text = "";
            Label1.Text = "";

        }

        protected void registernewstudent()
        {
            try
            {
                //using (Stream fs= FileUpload1.PostedFile.InputStream)

                //    using (BinaryReader br= new BinaryReader(fs))

                //byte[] bytes = br.ReadBytes((Int32)fs.Length);
                string extension = Path.GetExtension(FileUpload1.FileName);
                if (extension == ".pdf" || extension == ".jpg" || extension == ".png")
                {
                    String filePath = Server.MapPath("~/Receipts/" + FileUpload1.FileName);

                    FileUpload1.SaveAs(filePath);
                    Path.GetFileName(FileUpload1.FileName).ToString();
                    //string fname = Path.GetFileName(FileUpload1.FileName);
                    //FileUpload1.SaveAs(Server.MapPath("Receipts/") + fname);
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();

                    SqlCommand cmd = new SqlCommand();

                    cmd.CommandText = "INSERT INTO Sport_reg values(@AdmissionNo,@FirstName,@Surname,@DateOfBirth,@Email,@ContactNo,@Reason,@Description,@Fee,@Receipt,@DateOfRegistration)";
                    cmd.Parameters.AddWithValue("@AdmissionNo", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@FirstName", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Surname", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@DateOfBirth", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Email", TextBox13.Text);
                    cmd.Parameters.AddWithValue("@ContactNo", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Reason", DropDownList3.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Description", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@Fee", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@Receipt", FileUpload1.FileName);
                    cmd.Parameters.AddWithValue("@DateOfRegistration", TextBox6.Text);
                    cmd.Connection = con;

                    //Label lbl = FileUpload1.FindControl("Label1") as Label;
                    //lbl.Text = "";

                    if (!FileUpload1.HasFile)
                    {
                        Label1.ForeColor = System.Drawing.Color.Red;

                        Label1.Text = "Upload Payment Receipt";
                    }

                    else
                    {

                        int t = cmd.ExecuteNonQuery();

                        con.Close();

                        if (t > 0)
                        {
                            Response.Write("<script>alert('Entry Successful')</script>");
                            clearForm();
                        }

                    }
                }
                else
                {
                    Label1.Text = "Upload Only pdf, jpeg and png files";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)//registration
        {
            //if (checkstudentExists())
            //{
            //    Response.Write("<script>alert('This UserID already Exists. Try another ID')</script>");
            //}
            //else
            //{
            //    registernewstudent();
            //}

            registernewstudent();
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from(select EmailID, FirstName, Surname, Description, Fee, DateOfPayment, ROW_NUMBER() OVER(ORDER BY DateOfPayment DESC) As rn from RegReceipt) As subquery WHERE rn = 1", con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    String email = (dr.GetString(0));
                    String fname = (dr.GetString(1));
                    String surname = (dr.GetString(2));
                    String des = (dr.GetString(3));
                    String fee = (dr.GetString(4));
                    String dop = (dr.GetString(5));


                    //SmtpClient c = new SmtpClient();

                    MailAddress addr = new MailAddress("sports.metho@gmail.com");
                    MailAddress add = new MailAddress(email);

                    string message = "Payment of ";
                    MailMessage msg = new MailMessage();
                    msg.To.Add(add);
                    msg.From = addr;
                    MailMessage mm = new MailMessage(addr, add);
                    mm.Subject = "Sports Payment";
                    mm.Body = "Dear " + fname + " " + surname + ",<br /><br/>" + message + fee + " for " + des + " made" + " successfully" + " on " + dop + ". <br /><br/>" + "Regards" + ", <br />" + "Cashier";
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

        protected void LinkButton2_Click(object sender, EventArgs e)//admin no
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Students where AdmissionNo='" + TextBox9.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0][1].ToString();
                    TextBox4.Text = dt.Rows[0][2].ToString();
                    //TextBox1.Text = dt.Rows[0][3].ToString();
                    TextBox1.Text = Convert.ToDateTime(dt.Rows[0][3]).ToString("yyyy-MM-dd");
                    TextBox13.Text = dt.Rows[0][4].ToString();
                    TextBox2.Text = dt.Rows[0][5].ToString();

                }
                else
                {
                    //Response.Write("<script>alert('Invalid Student ID. Please make payment to complete registration');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        

        protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TextBox7.Text = DropDownList3.SelectedItem.Value;
        }

        protected void Button2_Click(object sender, EventArgs e)//enter button
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();

                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "INSERT INTO RegReceipt values(@AdmissionNo,@FirstName,@Surname,@DateOfBirth,@Email,@ContactNo,@Description,@Fee,@DateOfRegistration)";
                cmd.Parameters.AddWithValue("@AdmissionNo", TextBox9.Text);
                cmd.Parameters.AddWithValue("@FirstName", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Surname", TextBox4.Text);
                cmd.Parameters.AddWithValue("@DateOfBirth", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox13.Text);
                cmd.Parameters.AddWithValue("@ContactNo", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Description", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Fee", TextBox7.Text);
                cmd.Parameters.AddWithValue("@DateOfRegistration", TextBox6.Text);
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Receipt Ready!')</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Receipts.aspx");
        }

        //protected void Button4_Click(object sender, EventArgs e)//alert
        //{
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("select * from(select EmailID, FirstName, Surname, Description, Fee, DateOfPayment, ROW_NUMBER() OVER(ORDER BY DateOfPayment DESC) As rn from RegReceipt) As subquery WHERE rn = 1", con);

        //        SqlDataReader dr = cmd.ExecuteReader();

        //        while (dr.Read())
        //        {

        //            String email = (dr.GetString(0));
        //            String fname = (dr.GetString(1));
        //            String surname = (dr.GetString(2));
        //            String des = (dr.GetString(3));
        //            String fee = (dr.GetString(4));
        //            String dop = (dr.GetString(5));
                    

        //            //SmtpClient c = new SmtpClient();

        //            MailAddress addr = new MailAddress("sports.metho@gmail.com");
        //            MailAddress add = new MailAddress(email);

        //            string message = "Payment of ";
        //            MailMessage msg = new MailMessage();
        //            msg.To.Add(add);
        //            msg.From = addr;
        //            MailMessage mm = new MailMessage(addr, add);
        //            mm.Subject = "Sports Payment";
        //            mm.Body = "Dear " + fname + " " + surname + ",<br /><br/>" + message + fee + " for " + des + " made" + " successfully" + " on " + dop + ". <br /><br/>" + "Regards" + ", <br />" + "Cashier";
        //            mm.IsBodyHtml = true;
        //            SmtpClient smtp = new SmtpClient();
        //            smtp.Host = "smtp.gmail.com";
        //            smtp.Port = 587;
        //            smtp.EnableSsl = true;
        //            smtp.UseDefaultCredentials = false;
        //            NetworkCredential NetworkCred = new NetworkCredential("sports.metho@gmail.com", "iahj kjyw gpiu lgos");
        //            smtp.Credentials = NetworkCred;

        //            //smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        //            //smtp.TargetName = "STARTTLS/smtp.gmail.com";
        //            smtp.Send(mm);

        //        }
        //        con.Close();
        //        Response.Write("<script>alert('Email sent')</script>");
        //    }


        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }
        //}
    }
}