using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Add_notification : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = DateTime.Now.ToString();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            TextBox1.Text = DateTime.Now.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)//add
        {
            String query = "insert into Notification(date, message) values('" + TextBox1.Text + "', '" + TextBox2.Text + "' )";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Entry Successful')</script>");
            TextBox2.Text = "";
        }
    }
}