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
    public partial class adminRegistrations_view : System.Web.UI.Page
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
                qry = "Select * from Student_Sport";
            }
            else
            {
                qry = "Select * from Student_Sport where FirstName like '%" + searchText + "%'";
            }
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            //DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            ViewState["dt"] = dt;
            ViewState["sort"] = "DESC";
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = Convert.ToString(GridView1.DataKeys[e.RowIndex].Value);

            SqlConnection con = new SqlConnection(strcon);
            string qry = "Delete from Student_Sport Where ID = " + id;
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            int row = cmd.ExecuteNonQuery();
            con.Close();

            if (row > 0)
            {
                GetData();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.EditIndex = -1;
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

        protected void Button2_Click(object sender, EventArgs e)// Go to reports
        {
            Response.Redirect("AdminReports.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)//download link
        {
            try
            {
                var element = (LinkButton)sender;

                String filename = element.Text.ToString();
                String filepath = Server.MapPath("Receipts/" + filename);

                Response.Clear();
                Response.ClearHeaders();
                Response.ClearContent();
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
                Response.Flush();

                Response.TransmitFile(filepath);
                Response.End();
            }
            catch (Exception ex)
            {

            }
        }

        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)//zoom image
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        Image imgThumbnail = (Image)e.Row.FindControl("imgThumbnail");
        //        if (imgThumbnail != null)
        //        {
        //            // Add attributes for modal/lightbox
        //            imgThumbnail.Attributes["data-toggle"] = "modal"; // for Bootstrap Modal
        //            imgThumbnail.Attributes["data-target"] = "#imageModal"; // ID of the modal element
        //            imgThumbnail.Attributes["data-imgsrc"] = imgThumbnail.ImageUrl; // URL of the large image
        //        }
        //    }
        //}


    }
}