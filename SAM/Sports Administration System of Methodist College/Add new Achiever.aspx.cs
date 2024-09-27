using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Add_new_Achiever : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("select *from Students", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList3.DataBind();
                DropDownList3.DataTextField = "AdmissionNo";
                //DropDownList3.DataValueField = "Sport_ID";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("-Select-"));

            }
            SqlCommand cmd2 = new SqlCommand("select *from Tournament", con);
            // table name   
            SqlDataAdapter da1 = new SqlDataAdapter(cmd2);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            DropDownList2.DataSource = dt1;
            if (!IsPostBack)
            {
                DropDownList2.DataBind();
                DropDownList2.DataTextField = "TName";
                DropDownList2.DataValueField = "T_ID";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("Select"));
            }
            SqlCommand cmd3 = new SqlCommand("select *from Coach", con);
            // table name   
            SqlDataAdapter da2 = new SqlDataAdapter(cmd3);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            DropDownList1.DataSource = dt2;
            if (!IsPostBack)
            {
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "SportName";
                DropDownList1.DataValueField = "Sport_ID";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("Select Sport"));
            }
            TextBox11.Text = DateTime.Now.ToString();
            TextBox12.Text = DateTime.Now.ToString();
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox13.Text = "";

        }
        protected void Button2_Click(object sender, EventArgs e)//save all
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //SqlCommand cmd = new SqlCommand("INSERT INTO Achievements(Year, Type, Description, AdmissionNo) values('" + this.TextBox2.Text + "','" + this.TextBox8.Text + "' ,'" + this.TextBox1.Text + "' , '" + this.DropDownList3.SelectedItem.Text + "')", con);

                //cmd.ExecuteNonQuery();
                //con.Close();
                //Response.Write("<script>alert('Entry Successful')</script>");
                //clearForm();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT Into [Achievements] values(@Year,@Type,@Description,@AdmissionNo,@Date)";
                cmd.Parameters.AddWithValue("@Year", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Type", TextBox8.Text);
                cmd.Parameters.AddWithValue("@Description", TextBox1.Text);
                cmd.Parameters.AddWithValue("@AdmissionNo", DropDownList3.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Date", TextBox11.Text);

                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                cmd.CommandText = "INSERT INTO [Coach_Performance] values(@Coach_ID,@Title,@FirstName,@Surname,@Sport_ID,@SportName,@Type,@Year,@T_ID,@TName,@Result,@Performance,@DateRecorded)";
                cmd.Parameters.AddWithValue("@Coach_ID", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Title", TextBox9.Text);
                cmd.Parameters.AddWithValue("@FirstName", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Surname", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Sport_ID", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@SportName", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Type", TextBox7.Text);
                cmd.Parameters.AddWithValue("@Year", TextBox13.Text);
                cmd.Parameters.AddWithValue("@T_ID", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@TName", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Result", DropDownList5.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Performance", TextBox10.Text);
                cmd.Parameters.AddWithValue("@DateRecorded", TextBox12.Text);

                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                Response.Write("<script>alert('Entry Successful')</script>");
                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //protected void LinkButton2_Click(object sender, EventArgs e)// Coach details
        //{
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);

        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("SELECT * FROM Coach where Coach_ID='" + TextBox3.Text.Trim() + "';", con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        if (dt.Rows.Count >= 1)
        //        {
        //            TextBox9.Text = dt.Rows[0][1].ToString();
        //            TextBox4.Text = dt.Rows[0][2].ToString();
        //            TextBox5.Text = dt.Rows[0][3].ToString();
        //            TextBox7.Text = dt.Rows[0][6].ToString();

        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('Invalid Coach ID');</script>");
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }
        //}

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)//select result
        {
            TextBox10.Text = DropDownList5.SelectedItem.Value;

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)//select coach
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Coach where SportName='" + DropDownList1.SelectedItem.Text + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0][0].ToString();
                    TextBox9.Text = dt.Rows[0][1].ToString();
                    TextBox4.Text = dt.Rows[0][2].ToString();
                    TextBox5.Text = dt.Rows[0][3].ToString();
                    TextBox7.Text = dt.Rows[0][6].ToString();
                    //DropDownList2.Text = dt.Rows[0][5].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Coach ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)//date
        {
            TextBox11.Text = DateTime.Now.ToString();
        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)//date for coach performance
        {
            TextBox12.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)//save
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO [Coach_Performance] values(@Coach_ID,@Title,@FirstName,@Surname,@Sport_ID,@SportName,@Type,@Year,@T_ID,@TName,@Result,@Performance,@DateRecorded)";
                cmd.Parameters.AddWithValue("@Coach_ID", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Title", TextBox9.Text);
                cmd.Parameters.AddWithValue("@FirstName", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Surname", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Sport_ID", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@SportName", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Type", TextBox7.Text);
                cmd.Parameters.AddWithValue("@Year", TextBox13.Text);
                cmd.Parameters.AddWithValue("@T_ID", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@TName", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Result", DropDownList5.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Performance", TextBox10.Text);
                cmd.Parameters.AddWithValue("@DateRecorded", TextBox12.Text);

                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                Response.Write("<script>alert('Entry Successful')</script>");
                clearForm();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}