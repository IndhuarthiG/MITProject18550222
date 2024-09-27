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
    public partial class Achievements : System.Web.UI.Page
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
                qry = "Select Students.AdmissionNo, Students.FirstName, Students.Surname, Students.DateOfBirth From Students"; 
            }
            else
            {
                qry = "Select * from Students where FirstName like '%" + searchText + "%'";
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

        protected void Unnamed_ServerClick(object sender, EventArgs e)//search button
        {
            GetData(TextBox6.Text);
        }

               

        protected void Unnamed_Command(object sender, CommandEventArgs e)//view button
        {
            try
            {
                var ID = ((GridViewRow)((Control)sender).NamingContainer).RowIndex;
                string AdmNo = GridView1.DataKeys[ID]["AdmissionNo"].ToString();

                

                Response.Redirect("Achievement results.aspx?AdmissionNo=" +AdmNo);
                //Response.Write("<script>alert('Updated Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
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
            Response.Redirect("Add new Achiever.aspx");
        }
    }
}