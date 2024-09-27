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

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Monthly_Payment : System.Web.UI.Page
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
            
            TextBox9.Text = "";
            TextBox3.Text = "";
            TextBox6.Text = "";
            TextBox4.Text = "";
            Label1.Text = "";

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            TextBox6.Text = DateTime.Now.ToString();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)//Admission No
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
                    


                }
                else
                {
                    Response.Write("<script>alert('Invalid Admission No');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//Submit
        {
            //string fname = FileUpload1.FileName;
            //string flocation = "MonthlyFee/";
            //string pathstring = System.IO.Path.Combine(flocation, fname);
            //var st = new 
            //{
            //    FileLocation = pathstring,
            //};
            //SqlConnection con = new SqlConnection(strcon);

            try
            {
                string extension = Path.GetExtension(FileUpload1.FileName);
                if (extension == ".pdf" || extension == ".jpg" || extension == ".png")
                {
                    String filePath = Server.MapPath("~/MonthlyFee/" + FileUpload1.FileName);

                    FileUpload1.SaveAs(filePath);
                    Path.GetFileName(FileUpload1.FileName).ToString();
                    //string fname = Path.GetFileName(FileUpload1.FileName);
                    //FileUpload1.SaveAs(Server.MapPath("~/MonthlyFee/") + fname);
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();

                    SqlCommand cmd = new SqlCommand();

                    cmd.CommandText = "INSERT INTO StudentSport_Fee values(@AdmissionNo,@FirstName,@Surname,@Sport_ID,@SportName,@Month,@DateOfPayment,@Receipt)";
                    cmd.Parameters.AddWithValue("@AdmissionNo", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@FirstName", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Surname", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Sport_ID", DropDownList3.SelectedValue);
                    cmd.Parameters.AddWithValue("@SportName", DropDownList3.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Month", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@DateOfPayment", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@Receipt", FileUpload1.FileName);

                    cmd.Connection = con;
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

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox7.Text = DropDownList2.SelectedItem.Value;
        }

        protected void Button2_Click(object sender, EventArgs e)//Enter
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();

                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "INSERT INTO MonthlyReceipt values(@AdmissionNo,@FirstName,@Surname,@Month,@Reason,@Fee,@Description,@Date)";
                cmd.Parameters.AddWithValue("@AdmissionNo", TextBox9.Text);
                cmd.Parameters.AddWithValue("@FirstName", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Surname", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Month", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Reason", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Fee", TextBox7.Text);
                cmd.Parameters.AddWithValue("@Description", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Date", TextBox6.Text);
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Receipt Ready!')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Receipts.aspx");
        }
    }
}