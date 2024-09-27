using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class CoachBBteammembers : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
                teamname();
            }
        }

        private void GetData(string dropdownText = "")
        {

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Empty;

            if (string.IsNullOrEmpty(dropdownText))
            {
                qry = "Select * from Student_Team where TeamName= 'BBU18' OR TeamName = 'BBU16' OR TeamName = 'BBU14' OR TeamName = 'BBU12' OR TeamName = 'BBU20'";
            }
            else
            {
                qry = "Select * from Student_Team where TeamName like '%" + dropdownText + "%'";
            }

            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            //DataSet ds = new DataSet();
            //DataTable dt = new DataTable();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            ViewState["dt"] = dt;
            ViewState["sort"] = "ASC";
            GridView1.DataBind();
            con.Close();
            GridView1.Columns[0].Visible = false;
            GridView1.Columns[4].Visible = false;
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetData(DropDownList3.SelectedItem.Text);
            //teamname();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string admissionNo = (GridView1.Rows[e.RowIndex].FindControl("Textbox1") as TextBox).Text;
            string fname = (GridView1.Rows[e.RowIndex].FindControl("Textbox2") as TextBox).Text;
            string surname = (GridView1.Rows[e.RowIndex].FindControl("Textbox3") as TextBox).Text;
            string teamname = (GridView1.Rows[e.RowIndex].FindControl("Textbox5") as TextBox).Text;
            string Category = (GridView1.Rows[e.RowIndex].FindControl("Textbox6") as TextBox).Text;
            string Position = (GridView1.Rows[e.RowIndex].FindControl("DropDownList1") as DropDownList).Text;
            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Format("Update Student_Team set AdmissionNo = '{0}',FirstName = '{1}', Surname = '{2}', TeamName = '{3}', Category = '{4}', Position ='{5}' where ID='{6}'", admissionNo, fname, surname, teamname, Category, Position, id);

            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            GetData(DropDownList3.SelectedItem.Text);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData(DropDownList3.SelectedItem.Text);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetData();
        }

        //protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        //{
        //    DataTable result = (DataTable)ViewState["dt"];

        //    if (result.Rows.Count > 0)
        //    {
        //        if (Convert.ToString(ViewState["sort"]) == "ASC")
        //        {
        //            result.DefaultView.Sort = e.SortExpression + " DESC";
        //            ViewState["sort"] = " DESC";
        //        }
        //        else
        //        {
        //            result.DefaultView.Sort = e.SortExpression + " ASC";
        //            ViewState["sort"] = " ASC";
        //        }
        //        GridView1.DataSource = result;
        //        GridView1.DataBind();
        //    }
        //}

        protected void teamname()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd1 = new SqlCommand("Select Distinct TeamName from Student_Team where TeamName= 'BBU18' OR TeamName = 'BBU16' OR TeamName = 'BBU14' OR TeamName = 'BBU12' OR TeamName = 'BBU20'", con);
            // table name   
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da1.Fill(dt);
            DropDownList3.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList3.DataBind();
                DropDownList3.DataTextField = "TeamName";
                DropDownList3.DataValueField = "TeamName";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("-Team-"));
                //DropDownList6.Items[0].Selected = true;
                DropDownList3.Items[0].Attributes["disabled"] = "disabled";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//display
        {
           
            SqlConnection con = new SqlConnection(strcon);
            string myquery = "select distinct ID, AdmissionNo, FirstName, Surname, Team_ID,TeamName, Category, Position from Student_Team where TeamName like '%" + DropDownList3.SelectedItem.Text + "%'";
            SqlCommand cmd = new SqlCommand();
            
            cmd.CommandText = myquery;
            
            cmd.Connection = con;
           
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GetData(DropDownList3.SelectedItem.Text);
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //GetData();
            teamname();
            GridView1.EditIndex = -1;
            
        }

        protected void GridView1_Sorting1(object sender, GridViewSortEventArgs e)
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

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    //string id = Convert.ToString(GridView1.DataKeys[e.RowIndex].Value);
        //    int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        //    SqlConnection con = new SqlConnection(strcon);
        //    string qry = "Delete from Student_Team Where AdmissionNo = " + id;
        //    SqlCommand cmd = new SqlCommand(qry, con);
        //    con.Open();
        //    int row = cmd.ExecuteNonQuery();
        //    con.Close();

        //    if (row > 0)
        //    {
        //        GetData(DropDownList3.SelectedItem.Text);
        //    }
        //}





    }
}