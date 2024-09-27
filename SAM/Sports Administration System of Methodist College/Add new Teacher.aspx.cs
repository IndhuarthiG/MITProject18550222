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
    public partial class Add_new_Teacher : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
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
        }

        bool checkTeacherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Teachers where Teacher_ID='" + TextBox1.Text.Trim() + "';", con);
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
            TextBox8.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)//add button
        {
            try
            {
                if (checkTeacherExists())
                {
                    Response.Write("<script>alert('This UserID already Exists. Try another ID')</script>");
                }
                else if ((TextBox1.Text.Count(char.IsDigit) == 9) && (TextBox1.Text.EndsWith("X") || TextBox1.Text.EndsWith("V")) ||
                (TextBox1.Text.Count(char.IsDigit) == 12) && (TextBox1.Text[2] != '4' && TextBox1.Text[2] != '9'))
                {
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "INSERT Into [Teachers] values(@Teacher_ID,@Title,@FirstName,@Surname,@ContactNo,@EmailID)";
                    cmd.Parameters.AddWithValue("@Teacher_ID", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Title", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@FirstName", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Surname", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@ContactNo", TextBox12.Text);
                    cmd.Parameters.AddWithValue("@EmailID", TextBox13.Text);
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    cmd.Parameters.Clear();
                    cmd.CommandText = "INSERT INTO [Rosters] values(@Teacher_ID,@Title,@FirstName,@Surname,@EmailID,@Sport_ID,@SportName,@Date,@Time,@Status,@Requests,@Addedby,@ReqName,@ExchangeWith)";
                    cmd.Parameters.AddWithValue("@Teacher_ID", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Title", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@FirstName", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Surname", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@EmailID", TextBox13.Text);
                    cmd.Parameters.AddWithValue("@Sport_ID", DropDownList3.SelectedValue);
                    cmd.Parameters.AddWithValue("@SportName", DropDownList3.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Date", "");
                    cmd.Parameters.AddWithValue("@Time", "");
                    cmd.Parameters.AddWithValue("@Status", "");
                    cmd.Parameters.AddWithValue("@Requests", "");
                    cmd.Parameters.AddWithValue("@Addedby", "");
                    cmd.Parameters.AddWithValue("@ReqName", "");
                    cmd.Parameters.AddWithValue("@ExchangeWith", "");
                    cmd.ExecuteNonQuery();
                    cmd.Parameters.Clear();
                    Response.Write("<script>alert('Entry Successful')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Wrong Format!Enter correct NIC format')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)//Second Sport
        {
            try
            {
                if ((TextBox1.Text.Count(char.IsDigit) == 9) && (TextBox1.Text.EndsWith("X") || TextBox1.Text.EndsWith("V")) ||
                (TextBox1.Text.Count(char.IsDigit) == 12) && (TextBox1.Text[2] != '4' && TextBox1.Text[2] != '9'))
                {
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "INSERT INTO [Rosters] values(@Teacher_ID,@Title,@FirstName,@Surname,@EmailID,@Sport_ID,@SportName,@Date,@Time,@Status,@Requests,@Addedby,@ReqName,@ExchangeWith)";
                    cmd.Parameters.AddWithValue("@Teacher_ID", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Title", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@FirstName", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Surname", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@EmailID", TextBox13.Text);
                    cmd.Parameters.AddWithValue("@Sport_ID", DropDownList3.SelectedValue);
                    cmd.Parameters.AddWithValue("@SportName", DropDownList3.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Date", "");
                    cmd.Parameters.AddWithValue("@Time", "");
                    cmd.Parameters.AddWithValue("@Status", "");
                    cmd.Parameters.AddWithValue("@Requests", "");
                    cmd.Parameters.AddWithValue("@Addedby", "");
                    cmd.Parameters.AddWithValue("@ReqName", "");
                    cmd.Parameters.AddWithValue("@ExchangeWith", "");
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    cmd.Parameters.Clear();
                    Response.Write("<script>alert('Entry Successful')</script>");
                    clearForm();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Format!Enter correct NIC format')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void Button3_Click(object sender, EventArgs e)//clear
        {
            clearForm(); 
        }
    }    

}

