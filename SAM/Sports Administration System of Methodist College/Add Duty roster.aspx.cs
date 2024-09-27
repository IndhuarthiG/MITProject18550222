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
    public partial class Add_Duty_roster : System.Web.UI.Page
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
                DropDownList3.Items.Insert(0, new ListItem("-Select Sport-"));

            }
        }

        

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox8.Text = "";
            TextBox3.Text = "";
            TextBox13.Text = "";
            
            TextBox4.Text = "";
            TextBox5.Text = "";

        }

       

        //protected void Button2_Click1(object sender, EventArgs e)//add
        //{
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);

        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("INSERT INTO Rosters(Sport_ID, Sport_Name, Date, Time, Teacher_ID, Title, Surname, EmailID, Status) values('" + this.DropDownList3.SelectedValue + "', '" + this.DropDownList3.SelectedItem.Text + "', '" + this.TextBox1.Text + "', '" + this.TextBox2.Text + "','" + this.TextBox8.Text + "' , '" + this.TextBox5.Text + "','" + this.TextBox3.Text + "', '" + this.TextBox13.Text + "', '" + this.TextBox4.Text + "')", con);

        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //        Response.Write("<script>alert('Entry Successful')</script>");
        //        clearForm();



        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }
        //}

        protected void LinkButton2_Click1(object sender, EventArgs e)//T_ID
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Teachers where Teacher_ID='" + TextBox8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox5.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][3].ToString();

                    TextBox13.Text = dt.Rows[0][5].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Teacher name');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)//add button
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Rosters(Sport_ID, Sport_Name, Date, Time, Teacher_ID, Title, Surname, EmailID, Status, Requests, Addedby, ExchangeWith) values('" + this.DropDownList3.SelectedValue + "', '" + this.DropDownList3.SelectedItem.Text + "', '" + this.TextBox1.Text + "', '" + this.TextBox2.Text + "', '" + this.TextBox8.Text + "', '" + this.TextBox5.Text + "', '" + this.TextBox3.Text + "', '" + this.TextBox13.Text + "', '" + this.TextBox4.Text + "', '','','')", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Entry Successful')</script>");
                clearForm();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}