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
    public partial class CoachPerformance : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropdown();
                string myquery = "Select * from Coach_Performance";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                ViewState["dt"] = dt;
                ViewState["sort"] = "ASC";
                //DataSet ds = new DataSet();
                //da.Fill(ds);
                //GridView1.DataSource = ds;
                GridView1.DataBind();
                //int totalrows = ds.Tables[0].Rows.Count;
                //int c = 0;
                //while (c > totalrows)
                //{
                //    DropDownList3.Items.Add(ds.Tables[0].Rows[c]["Category"].ToString());
                //    c++;
                //}
                con.Close();
                GridView1.Columns[0].Visible = false;
                GridView1.Columns[1].Visible = false;
                GridView1.Columns[5].Visible = false;
                GridView1.Visible = false;          
            }
        }

        protected void dropdown()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("Select Distinct Result from Coach_Performance", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            if (!IsPostBack)
            {
                //DropDownList3.DataBind();
                DropDownList3.DataTextField = "Result";
                DropDownList3.DataValueField = "Result";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("-Select Result-"));
                //GridViewBind();

            }
        }
        protected void TotalPoints()
        {
            SqlConnection con = new SqlConnection(strcon);
            string myquery2 = "SELECT DISTINCT Coach_ID, SUM(Performance) AS Total FROM Coach_Performance WHERE Result LIKE '%" + DropDownList3.SelectedItem.Text + "%' GROUP BY Coach_ID ORDER BY Coach_ID ASC";
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = myquery2;
            cmd2.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd2;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)//Display
        {
            TotalPoints();
            SqlConnection con = new SqlConnection(strcon);
            string myquery = "select distinct Coach_ID, Title, FirstName, Surname, SportName, Type, Year,TName from Coach_Performance where Result like '%" + DropDownList3.SelectedItem.Text + "%'";
            //string myquery2 = "SELECT DISTINCT AdmissionNo, SUM(Performance) AS total_score FROM Student_Attendance WHERE Category LIKE '%" + DropDownList3.SelectedItem.Text + "%' GROUP BY AdmissionNo";
            SqlCommand cmd = new SqlCommand();
            //SqlCommand cmd2 = new SqlCommand();
            cmd.CommandText = myquery;
            //cmd2.CommandText = myquery2;
            cmd.Connection = con;
            //cmd2.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            //da.SelectCommand = cmd2;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
        }

        protected void GridView2_Sorting(object sender, GridViewSortEventArgs e)
        {
            DataTable result = (DataTable)ViewState["dt"];

            if (result.Rows.Count > 0)
            {
                if (Convert.ToString(ViewState["sort"]) == "ASC")
                {
                    result.DefaultView.Sort = e.SortExpression + " DESC";
                    ViewState["sort"] = " DESC";
                }
                else
                {
                    result.DefaultView.Sort = e.SortExpression + " ASC";
                    ViewState["sort"] = " ASC";
                }
                GridView2.DataSource = result;
                GridView2.DataBind();
            }
        }
    }
}