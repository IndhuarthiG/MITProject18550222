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
    public partial class Add_Match : System.Web.UI.Page
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
            DropDownList2.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList2.DataBind();
                DropDownList2.DataTextField = "TeamName";
                DropDownList2.DataValueField = "Team_ID";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("-Select Team-"));
                               
            }

            
            
        }

        void clearForm()
        {
            TextBox4.Text = "";
            TextBox2.Text = "";
            TextBox8.Text = "";
            TextBox3.Text = "";
            TextBox1.Text = "";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Matches(TName, Team_ID, TeamName, OpponentTeam, Date, Time, Venue) values('" + this.TextBox4.Text + "', '" + this.DropDownList2.SelectedValue + "', '" + this.DropDownList2.SelectedItem.Text + "','" + this.TextBox8.Text + "','" + this.TextBox1.Text + "' ,'" + this.TextBox2.Text + "', '" + this.TextBox3.Text + "')", con);

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