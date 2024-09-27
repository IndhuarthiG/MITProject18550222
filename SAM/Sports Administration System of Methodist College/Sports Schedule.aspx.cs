using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Sports_Schedule : System.Web.UI.Page
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
            Button12.Visible = false;
            Button13.Visible = false;
            Button14.Visible = false;
            Button15.Visible = false;
            Button16.Visible = false;
            Button17.Visible = false;
            Button18.Visible = false;
            Button19.Visible = false;
            Button20.Visible = false;
            Button21.Visible = false;
            Button22.Visible = false;
            Button23.Visible = false;
            Button24.Visible = false;
            Button25.Visible = false;
            Button26.Visible = false;

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            GetData(TextBox6.Text);
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
                Button12.Visible = false;
                Button13.Visible = false;
                Button14.Visible = false;
                Button15.Visible = false;
                Button16.Visible = false;
                Button17.Visible = false;
                Button18.Visible = false;
                Button19.Visible = false;
                Button20.Visible = false;
                Button21.Visible = false;
                Button22.Visible = false;
                Button23.Visible = false;
                Button24.Visible = false;
                Button25.Visible = false;
                Button26.Visible = false;
                Button27.Visible = false;
                Button28.Visible = false;
            }

            else if (TextBox6.Text == "Archery")
            {
                Button3.Visible = true;
                Button12.Visible = true;
                GridView1.Visible = true;

            }
            else if (TextBox6.Text == "Athletics")
            {
                Button4.Visible = true;
                Button13.Visible = true;
                Button25.Visible = true;
                Button26.Visible = true;
                GridView1.Visible = true;

            }
            else if (TextBox6.Text == "Basketball")
            {
                Button6.Visible = true;
                Button14.Visible = true;
                Button23.Visible = true;
                Button24.Visible = true;
                GridView1.Visible = true;


            }
            else if (TextBox6.Text == "Badminton")
            {
                Button5.Visible = true;
                Button15.Visible = true;
                GridView1.Visible = true;

            }
            else if (TextBox6.Text == "Chess")
            {
                Button7.Visible = true;
                Button16.Visible = true;
                GridView1.Visible = true;

            }
            else if (TextBox6.Text == "Table Tennis")
            {
                Button2.Visible = true;
                Button21.Visible = true;
                GridView1.Visible = true;

            }
            else if (TextBox6.Text == "Squash")
            {
                Button9.Visible = true;
                Button18.Visible = true;
                GridView1.Visible = true;

            }
            else if (TextBox6.Text == "Volleyball")
            {
                Button11.Visible = true;
                Button22.Visible = true;
                GridView1.Visible = true;



            }
            else if (TextBox6.Text == "Netball")
            {
                Button8.Visible = true;
                Button17.Visible = true;
                Button27.Visible = true;
                Button28.Visible = true;
                GridView1.Visible = false;


            }
            else if (TextBox6.Text == "Swimming")
            {
                Button10.Visible = true;
                Button19.Visible = true;
                GridView1.Visible = true;


            }
            else if (TextBox6.Text == "Tennis")
            {
                Button1.Visible = true;
                Button20.Visible = true;
                GridView1.Visible = true;

            }
            
        }

        private void GetData(string searchText = "")
        {

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Empty;
            if (string.IsNullOrEmpty(searchText))
            {
                qry = " Select Coach.Coach_ID, Coach.Title,Coach.FirstName, Coach.Surname, Coach.SportName";
            }
            else
            {
                qry = "Select * from Coach where Coach_ID like '%" + searchText + "%' AND Coach_ID = '" + Session["UserName"].ToString() + "' AND SportName like '%" + searchText + "%' AND SportName ='Netball'";
            }
            
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            //DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view Archery.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view Athletics.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view Badminton.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view BB.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view Chess.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view Netball.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view squash.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view Swimming.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view Tennis.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view TT.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coach view Volleyball.aspx");
        }

        void clear()
        {
            TextBox6.Text = "";
        }

        

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("coach view athletics Participants.aspx");
        }

        protected void Button12_Click1(object sender, EventArgs e)
        {
            Response.Redirect("coach view archery Participants.aspx");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("coach view Badminton Participants.aspx");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("coach View BB Participants.aspx");
        }

        protected void Button16_Click(object sender, EventArgs e)//chess
        {
            Response.Redirect("coach view chess Participants.aspx");
        }

        protected void Button17_Click(object sender, EventArgs e)//netball
        {
            Response.Redirect("coach view NB Participants.aspx");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            Response.Redirect("coach view Squah Participants.aspx");
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Response.Redirect("coach view swi Participants.aspx");
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            Response.Redirect("coach view Tennis Participants.aspx");
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            Response.Redirect("coach view TT Participants.aspx");
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            Response.Redirect("coach view VB Participants.aspx");
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoahBBAttendance2.aspx");
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            Response.Redirect("Team member selection.aspx");
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoachAthAttendance.aspx");
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            Response.Redirect("AthTeammember selection.aspx");
        }

        protected void Button27_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoachNBAttendance.aspx");
        }

        protected void Button28_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoachNBTeamSelection.aspx");
        }
    }
    
}