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
    public partial class Roster : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            Button5.Visible = false;
            Button6.Visible = false;
            Button7.Visible = false;
            Button8.Visible = false;
            Button9.Visible = false;
            Button10.Visible = false;
            Button11.Visible = false;

        }

        
        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(strcon);
            //string qry = "Select * from Rosters where Teacher_ID like '%" + TextBox6.Text + "%' AND Teacher_ID = '" + Session["UserName"].ToString() + "'";
            //SqlCommand cmd = new SqlCommand(qry, con);
            if (TextBox6.Text == "")
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Button5.Visible = false;
                Button6.Visible = false;
                Button7.Visible = false;
                Button8.Visible = false;
                Button9.Visible = false;
                Button10.Visible = false;
                Button11.Visible = false;


            }

            else if (TextBox6.Text == "Archery")
            {
                Button3.Visible = true;
            }
            else if (TextBox6.Text == "Athletics")
            {
                Button4.Visible = true;
            }
            else if (TextBox6.Text == "Basketball")
            {
                Button6.Visible = true;
            }
            else if (TextBox6.Text == "Badminton")
            {
                Button5.Visible = true;
            }
            else if (TextBox6.Text == "Chess")
            {
                Button7.Visible = true;
            }
            else if (TextBox6.Text == "Table Tennis")
            {
                Button2.Visible = true;
            }
            else if (TextBox6.Text == "Squash")
            {
                Button9.Visible = true;
            }
            else if (TextBox6.Text == "Volleyball")
            {
                Button11.Visible = true;
            }
            else if (TextBox6.Text == "Netball")
            {
                Button8.Visible = true;
            }
            else if (TextBox6.Text == "Swimming")
            {
                Button10.Visible = true;
            }
            else if (TextBox6.Text == "Tennis")
            {
                Button1.Visible = true;
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Athletics.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Archery.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Badminton.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Basketball.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Chess.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Netball.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Squash.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Swimming.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Tennis.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Table Tennis.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster Volleyball.aspx");
        }
    }


}
