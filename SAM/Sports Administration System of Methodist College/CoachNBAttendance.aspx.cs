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
    public partial class CoachNBAttendance : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            //SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("select *from Sport", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList4.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList4.DataBind();
                DropDownList4.DataTextField = "SportName";
                DropDownList4.DataValueField = "Sport_ID";
                DropDownList4.DataBind();

            }
            if (!IsPostBack)
            {
                loaddata(0);

            }
            DropDownList4.Enabled = false;
        }

        private void loaddata(int position)// int position
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Student_Sport where SportName='Netball' order by id offset " + position + " rows fetch next 1 row only", con);

            using (SqlDataReader reader = cmd.ExecuteReader())
            {

                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();
                    TextBox2.Text = reader[2].ToString();
                    TextBox3.Text = reader[3].ToString();
                    DropDownList4.SelectedValue = reader[4].ToString();
                    DropDownList4.SelectedItem.Text = reader[5].ToString();
                }
            }

        }
        protected void Button2_Click(object sender, EventArgs e)//next
        {
            int currentrow = Convert.ToInt32(HttpContext.Current.Session["currentRow"]);
            currentrow = currentrow + 1;
            loaddata(currentrow);
            HttpContext.Current.Session["currentRow"] = currentrow;
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

                SqlCommand cmd = new SqlCommand("INSERT INTO Student_Attendance(AdmissionNo,FirstName,Surname,Sport_ID,SportName,DateOfPractice,Attendance,Category,Performance) values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "' ,'" + this.TextBox3.Text + "' ,'" + this.DropDownList4.SelectedValue + "', '" + this.DropDownList4.SelectedItem.Text + "','" + this.TextBox6.Text + "','" + this.DropDownList1.SelectedValue + "', '" + this.DropDownList2.SelectedValue + "', '" + this.DropDownList3.SelectedValue + "')", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Attendance Entry Successful')</script>");
                //clearForm();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)//view
        {
            Response.Redirect("CoachNBAttendanceView.aspx");
        }
    }
}