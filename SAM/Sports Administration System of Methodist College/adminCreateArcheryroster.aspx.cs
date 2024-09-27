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
    public partial class adminCreateArcheryroster : System.Web.UI.Page
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

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox8.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //try
            //{

            //    SqlConnection con = new SqlConnection(strcon);

            //    if (con.State == ConnectionState.Closed)
            //    {
            //        con.Open();
            //    }

            //    SqlCommand cmd = new SqlCommand("INSERT INTO Rosters(Teacher_ID, Title, FirstName, Surname, EmailID, Sport_ID, SportName, Date, Time, Status, Requests, Addedby, ReqName, ExchangeWith) values('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox2.Text + "','" + TextBox8.Text + "','" + TextBox13.Text + "','" + DropDownList3.SelectedValue + "','" + DropDownList3.SelectedItem.Text + "','','','','','','','')", con);
            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    Response.Write("<script>alert('Entry Successful')</script>");
            //    clearForm();


            //}
            //catch (Exception ex)
            //{
            //    Response.Write("<script>alert('" + ex.Message + "');</script>");
            //}

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
            cmd.Parameters.AddWithValue("@Date","");
            cmd.Parameters.AddWithValue("@Time", "");
            cmd.Parameters.AddWithValue("@Status", "");
            cmd.Parameters.AddWithValue("@Requests", "");
            cmd.Parameters.AddWithValue("@Addedby", "");
            cmd.Parameters.AddWithValue("@ReqName", "");
            cmd.Parameters.AddWithValue("@ExchangeWith", "");
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Entry Successful')</script>");
        }
    }
}