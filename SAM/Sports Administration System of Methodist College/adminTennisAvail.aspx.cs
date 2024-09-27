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
    public partial class adminTennisAvail : System.Web.UI.Page
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

            string myquery = "Select * from Rosters where SportName='Tennis' AND Date='' AND Time=''";
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
            GridView1.DataBind();
            con.Close();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetData(TextBox6.Text);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            string ddate = (GridView1.Rows[e.RowIndex].FindControl("Textbox1") as TextBox).Text;
            string ttime = (GridView1.Rows[e.RowIndex].FindControl("Textbox2") as TextBox).Text;
            string ttitle = (GridView1.Rows[e.RowIndex].FindControl("Textbox4") as TextBox).Text;
            string sname = (GridView1.Rows[e.RowIndex].FindControl("Textbox5") as TextBox).Text;
            string email = (GridView1.Rows[e.RowIndex].FindControl("Textbox7") as TextBox).Text;
            string status = (GridView1.Rows[e.RowIndex].FindControl("Textbox8") as TextBox).Text;
            string requests = (GridView1.Rows[e.RowIndex].FindControl("Textbox9") as TextBox).Text;
            string addedby = (GridView1.Rows[e.RowIndex].FindControl("Textbox10") as TextBox).Text;

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Format("Update Rosters set Date = '{0}', Time ='{1}', Title='{2}', Surname='{3}', EmailID='{4}', Status='{5}', Requests='{6}', Addedby='{7}' where ID='{8}'", ddate, ttime, ttitle, sname, email, status, requests, addedby, id);

            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            GetData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            SqlConnection con = new SqlConnection(strcon);
            string qry = "Delete from Rosters Where ID = " + id;
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            int row = cmd.ExecuteNonQuery();
            con.Close();

            if (row > 0)
            {
                GetData();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetData();
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminTennisroster.aspx");
        }
    }
}