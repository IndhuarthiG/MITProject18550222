using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class adminH : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            NewRegitrations();
            Queries();
            Tasks();
            RosterExchange();
            //Bindchart();
            Linechart();
        }

        private void NewRegitrations()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Registration", con);
            lblReg.Text = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
        }

        private void Queries()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Queries", con);
            lblQuery.Text = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
        }

        private void Tasks()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Student_ApplyPosition", con);
            lblTasks.Text = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
        }

        private void RosterExchange()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Requests", con);
            lblros.Text = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
        }

        private void Bindchart()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) count FROM Teachers UNION SELECT COUNT(*) count FROM Students UNION SELECT COUNT(*) count FROM Coach", con);
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            Chart1.Series[0].XValueMember = "count";
            Chart1.Series[0].YValueMembers = "count";
            Chart1.Series[0].ChartType = SeriesChartType.Doughnut;
            //Chart1.Legends[0].Enabled = true;
            
        }

        private void Linechart()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) count, SportName FROM Student_Sport Group by SportName;", con);
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            Chart2.Series[0].XValueMember = "SportName";
            Chart2.Series[0].YValueMembers = "count";
            Chart2.DataSource = sqlDataReader;
            Chart2.DataBind();
            Chart2.Series[0].ChartType = SeriesChartType.Pie;
            Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            Chart2.Legends[0].Enabled = true;
        }
    }
}