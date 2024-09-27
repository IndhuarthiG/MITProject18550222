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
    public partial class CoachAthAttendanceView : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropdown();
                string myquery = "Select * from Student_Attendance where SportName='Athletics'";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                //ViewState["dt"] = dt;
                //ViewState["sort"] = "ASC";
                GridView1.DataBind();
                con.Close();
                GridView1.Columns[0].Visible = false;
                GridView1.Columns[4].Visible = false;
                GridView1.Columns[5].Visible = false;
                //GridView1.Columns[6].Visible = false;
                //GridView1.Columns[7].Visible = false;
                //GridView1.Columns[9].Visible = false;
                //GridView1.Columns[10].Visible = false;
                //GridView1.Columns[1].Visible = false;
            }
        }

        protected void dropdown()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("Select Distinct DateOfPractice from Student_Attendance where SportName='Athletics'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            if (!IsPostBack)
            {
                //DropDownList3.DataBind();
                DropDownList3.DataTextField = "DateOfPractice";
                DropDownList3.DataValueField = "DateOfPractice";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("-Select Date Of Practice-"));
                //GridViewBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)//display
        {
            GridView1.Visible = true;
            SqlConnection con = new SqlConnection(strcon);
            string myquery = "select distinct AdmissionNo, FirstName, Surname, Attendance, Category, Performance, DateOfPractice from Student_Attendance where DateOfPractice like '%" + DropDownList3.SelectedItem.Text + "%' AND SportName = 'Athletics'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}