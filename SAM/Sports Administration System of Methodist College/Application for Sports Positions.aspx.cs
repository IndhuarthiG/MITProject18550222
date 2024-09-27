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
    public partial class Application_for_Sports_Positions : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("select *from Teams", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList3.DataBind();
                DropDownList3.DataTextField = "TeamName";
                DropDownList3.DataValueField = "Team_ID";
                DropDownList3.DataBind();

            }
            TextBox6.Text = DateTime.Now.ToString();
        }

        void clearForm()
        {
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox12.Text = "";

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Student_ApplyPosition(FirstName, Surname, AdmissionNo, SportName, Team_ID, TeamName, CurrentPosition, ApplyingPosition, Date) values('" + this.TextBox3.Text + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.TextBox12.Text + "','" + this.DropDownList3.SelectedValue + "','" + this.DropDownList3.SelectedItem.Text + "','" + this.DropDownList1.SelectedValue + "','" + this.DropDownList2.SelectedValue + "','" + this.TextBox6.Text + "')", con);

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

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            TextBox6.Text = DateTime.Now.ToString();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)//adminno link
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Sport_reg where AdmissionNo='" + TextBox5.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    //TextBox13.Text = dt.Rows[0][5].ToString();
                    //TextBox5.Text = dt.Rows[0][8].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Student ID. Enter Correct Admission No!');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}