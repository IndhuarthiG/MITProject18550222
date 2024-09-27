using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class adminMPview : System.Web.UI.Page
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
                qry = "Select * from StudentSport_Fee";
            }
            else
            {
                qry = "Select * from StudentSport_Fee where FirstName like '%" + searchText + "%'";
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
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = Convert.ToString(GridView1.DataKeys[e.RowIndex].Value);

            SqlConnection con = new SqlConnection(strcon);
            string qry = "Delete from StudentSport_Fee Where ID = " + id;
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

        protected void LinkButton1_Click(object sender, EventArgs e)//dwonload link
        {
            try
            {
                var element = (LinkButton)sender;

                String filename = element.Text.ToString();
                String filepath = Server.MapPath("MonthlyFee/" + filename);

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

        //protected void LinkButton1_Click(object sender, EventArgs e)//view pdf receipt
        //{
        //    //int rowIndex = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
        //    //string filelocation = GridView1.Rows[rowIndex].Cells[6].Text;
        //    //string FilePath = Server.MapPath(filelocation);//to get file path

        //    //WebClient User = new WebClient();

        //    //Byte[] FileBuffer = User.DownloadData(FilePath);//convert to byte

        //    //if (FileBuffer != null)
        //    //{
        //    //    Response.ContentType = "application/pdf";
        //    //    Response.AddHeader("content-length", FileBuffer.Length.ToString());
        //    //    Response.BinaryWrite(FileBuffer);
        //    //}
        //    //LinkButton linkdownload = sender as LinkButton;
        //    //GridViewRow gridViewRow = linkdownload.NamingContainer as GridViewRow;
        //    //string downloadfile = GridView1.DataKeys[gridViewRow.RowIndex].Value.ToString();
        //    //Response.ContentType = "application/pdf";
        //    //Response.AddHeader("Content-Disposition", "attachment;filename=\""+downloadfile+"\"" );
        //    //Response.TransmitFile(Server.MapPath(downloadfile));
        //    //Response.End();



        //}

        //protected void btnDownload_Click(object sender, EventArgs e)//download link
        //{
        //    // Get the file path from the CommandArgument
        //    string filePath = (sender as LinkButton).CommandArgument;

        //    if (!string.IsNullOrEmpty(filePath))
        //    {
        //        // Set the content type and headers for the response
        //        Response.ContentType = "application/pdf";
        //        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));

        //        // Write the file to the response stream
        //        Response.TransmitFile(Server.MapPath(filePath));
        //        Response.End();
        //    }
        //}


    }
}