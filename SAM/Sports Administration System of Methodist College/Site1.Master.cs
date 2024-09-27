using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("teacher"))
                {
                    LinkButton1.Visible = false; //login button
                    LinkButton4.Visible = true; //roster
                    LinkButton2.Visible = false; // schedule
                    LinkButton6.Visible = false; //program
                    LinkButton3.Visible = true; // logout
                    LinkButton5.Visible = true; // hello user
                    LinkButton7.Visible = false;//admin
                    LinkButton8.Visible = true;//requests
                    LinkButton9.Visible = true;//responses
                    LinkButton10.Visible = false;//teams student view
                    LinkButton11.Visible = false;//student form student view
                    LinkButton12.Visible = false;//cashier view to take payments
                    LinkButton13.Visible = false;//cashier view to take monthly payments
                    LinkButton14.Visible = true;//Announcements
                    LinkButton15.Visible = true;//complaints
                    LinkButton5.Text = "Hello " + Session["Name"].ToString();

                }
                else if (Session["role"].Equals("super admin"))
                {
                    LinkButton1.Visible = false; //login button
                    LinkButton4.Visible = false; //roster
                    LinkButton2.Visible = false; // schedule
                    LinkButton6.Visible = false; //program
                    LinkButton3.Visible = true; // logout
                    LinkButton5.Visible = true; // hello user
                    LinkButton7.Visible = true; //admin
                    LinkButton8.Visible = false;//requests
                    LinkButton9.Visible = false;//responses
                    LinkButton10.Visible = false;//teams student view
                    LinkButton11.Visible = false;//student form student view
                    LinkButton12.Visible = false;//cashier view to take payments
                    LinkButton13.Visible = false;//cashier view to take monthly payments
                    LinkButton14.Visible = true;//Announcements
                    LinkButton15.Visible = false;//complaints
                    LinkButton5.Text = "Hello " + Session["Name"].ToString();

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //login button
                    LinkButton4.Visible = false; //roster
                    LinkButton2.Visible = false; // schedule
                    LinkButton6.Visible = false; //program
                    LinkButton3.Visible = true; // logout
                    LinkButton5.Visible = true; // hello user
                    LinkButton7.Visible = true; //admin
                    LinkButton8.Visible = false;//requests
                    LinkButton9.Visible = false;//responses
                    LinkButton10.Visible = false;//teams student view
                    LinkButton11.Visible = false;//student form student view
                    LinkButton12.Visible = false;//cashier view to take payments
                    LinkButton13.Visible = false;//cashier view to take monthly payments
                    LinkButton14.Visible = true;//Announcements
                    LinkButton15.Visible = false;//complaints
                    LinkButton5.Text = "Hello " + Session["Name"].ToString();

                }

                else if (Session["role"].Equals("student"))
                {
                    LinkButton1.Visible = false; //login button
                    LinkButton4.Visible = false; //roster
                    LinkButton2.Visible = false; // schedule
                    LinkButton3.Visible = true; // logout
                    LinkButton5.Visible = true; // hello user
                    LinkButton6.Visible = true; //program
                    LinkButton7.Visible = false;//admin
                    LinkButton8.Visible = false;//requests
                    LinkButton9.Visible = false;//responses
                    LinkButton10.Visible = true;//teams student view
                    LinkButton11.Visible = true;//student form student view
                    LinkButton12.Visible = false;//cashier view to take payments
                    LinkButton13.Visible = false;//cashier view to take monthly payments
                    LinkButton14.Visible = true;//Announcements
                    LinkButton15.Visible = false;//complaints
                    LinkButton5.Text = "Hello " + Session["Name"].ToString();

                }

                else if (Session["role"].Equals("coach"))
                
                {
                    LinkButton1.Visible = false; //login button
                    LinkButton4.Visible = false; //roster
                    LinkButton2.Visible = true; // schedule
                    LinkButton3.Visible = true; // logout
                    LinkButton5.Visible = true; // hello user
                    LinkButton6.Visible = false; //program
                    LinkButton7.Visible = false;//admin
                    LinkButton8.Visible = false;//requests
                    LinkButton9.Visible = false;//responses
                    LinkButton10.Visible = false;//teams student view
                    LinkButton11.Visible = false;//student form student view
                    LinkButton12.Visible = false;//cashier view to take payments
                    LinkButton13.Visible = false;//cashier view to take monthly payments
                    LinkButton14.Visible = true;//Announcements
                    LinkButton15.Visible = false;//complaints
                    LinkButton5.Text = "Hello " + Session["Name"].ToString();

                }

                else if (Session["role"].Equals("cashier"))

                {
                    LinkButton1.Visible = false; //login button
                    LinkButton4.Visible = false; //roster
                    LinkButton2.Visible = false; // schedule
                    LinkButton3.Visible = true; // logout
                    LinkButton5.Visible = true; // hello user
                    LinkButton6.Visible = false; //program
                    LinkButton7.Visible = false;//admin
                    LinkButton8.Visible = false;//requests
                    LinkButton9.Visible = false;//responses
                    LinkButton10.Visible = false;//teams student view
                    LinkButton11.Visible = false;//student form student view
                    LinkButton12.Visible = true;//cashier view to take payments
                    LinkButton13.Visible = true;//cashier view to take monthly payments
                    LinkButton14.Visible = true;//Announcements
                    LinkButton15.Visible = false;//complaints
                    LinkButton5.Text = "Hello " + Session["Name"].ToString();

                }


            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sports Schedule.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Schedule.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminH.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)//log out
        {
            Session["UserName"] = "";
            Session["Name"] = "";
            Session["role"] = "";

            LinkButton1.Visible = false; //login button
            LinkButton4.Visible = false; //roster
            LinkButton2.Visible = false; // schedule
            LinkButton3.Visible = false; // logout
            LinkButton5.Visible = false; // hello user
            LinkButton6.Visible = false; //program
            LinkButton11.Visible = false;//student form
            LinkButton7.Visible = false;//admin
            LinkButton5.Visible = false;// hello user
            LinkButton14.Visible = false;//Announcements

            Response.Redirect("MethoTrial.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)//requests
        {
            Response.Redirect("Request.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)//responses
        {
            Response.Redirect("Responses.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)//Teams student view
        {
            Response.Redirect("Team details student view .aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Application for Sports Positions.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)//cashier monthly payment
        {
            Response.Redirect("Monthly Payment.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)//cashier 
        {
            Response.Redirect("CashierPage.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)//Announcements
        {
            Response.Redirect("Announcements.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)//Complaints
        {
            Response.Redirect("Complaints.aspx");
        }
    }
}