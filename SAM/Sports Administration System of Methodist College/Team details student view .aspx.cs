using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Team_details_student_view : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void GetData(string searchText = "")
        {

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Empty;
            if (string.IsNullOrEmpty(searchText))
            {
                qry = " Select Student_Team.AdmissionNo, Student_Team.FirstName, Student_Team.Surname, Student_Team.TeamName, Student_Team.Category, Student_Team.Position from Student_Team";
            }
            else
            {
                qry = "Select * from Student_Team where AdmissionNo like '%" + searchText + "%' AND AdmissionNo = '" + Session["UserName"].ToString() + "'";
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

        protected void TextBox6_TextChanged(object sender, EventArgs e)//search
        {
            GetData(TextBox6.Text);
        }
    }
}