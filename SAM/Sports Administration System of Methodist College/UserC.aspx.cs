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
    public partial class UserC : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData(string searchText = "")
        {

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Empty;
            if (string.IsNullOrEmpty(searchText))
            {
                qry = "Select * from Complaints";
            }
            else
            {
                qry = "Select * from Complaints where UserName like '%" + searchText + "%'";
            }
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            //DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            //GridView1.Columns[0].HeaderText = "ForDate";
            //GridView1.Columns[1].HeaderText = "SportName";
            //GridView1.Columns[2].HeaderText = "RosteredTeacherName";
            //GridView1.Columns[3].HeaderText = "Response";
            //GridView1.Columns[4].HeaderText = "ReqestedTeacher";
            //GridView1.Columns[5].HeaderText = "ExchangeWith";
            //ViewState["dt"] = dt;

            ViewState["dt"] = dt;
            ViewState["sort"] = "ASC";
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
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
                GridView1.DataSource = result;
                GridView1.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            GetData(TextBox6.Text);
        }
    }
}