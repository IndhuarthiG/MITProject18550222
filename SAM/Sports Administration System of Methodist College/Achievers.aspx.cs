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
    public partial class Achievers : System.Web.UI.Page
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
                qry = "Select * From Achievements";
            }
            else
            {
                qry = "Select * from Achievements where Year like '%" + searchText + "%'";
            }
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            //DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            ViewState["dt"] = dt;
            ViewState["sort"] = "ASC";
            GridView1.DataBind();
            con.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add new Achiever.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetData(TextBox6.Text);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            string year = (GridView1.Rows[e.RowIndex].FindControl("Textbox4") as TextBox).Text;
            string type = (GridView1.Rows[e.RowIndex].FindControl("Textbox1") as TextBox).Text;
            string description = (GridView1.Rows[e.RowIndex].FindControl("Textbox2") as TextBox).Text;
            string adno = (GridView1.Rows[e.RowIndex].FindControl("Textbox3") as TextBox).Text;


            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Format("Update Achievements set Year = '{0}', Type = '{1}', Description = '{2}', AdmissionNo ='{3}' where ID='{4}'", year, type, description, adno, id);

            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            GetData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = Convert.ToString(GridView1.DataKeys[e.RowIndex].Value);

            SqlConnection con = new SqlConnection(strcon);
            string qry = "Delete from Achievements Where ID = " + id;
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

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            GetData(TextBox6.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Achievements.aspx");
        }
    }
}