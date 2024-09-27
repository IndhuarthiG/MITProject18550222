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
    public partial class Testing_2 : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetData();
            }



            //GridView1.DataSource = cmd.ExecuteReader(); //commented because Reader does not allow indexing 
            //SqlDataAdapter ad = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //ad.Fill(dt);

            //GridView1.AutoGenerateColumns = true;
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            //con.Close();
        }

        private void GetData(string searchText = "")
        {

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Empty;
            if (string.IsNullOrEmpty(searchText))
            { 
                qry = "Select * from Student";
            }
            else
            {
                qry = "Select * from Student where FirstName like '%" + searchText + "%'";
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

        protected void gridview_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetData();
            //GridView1.DataBind();

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)//search
        {
            GetData(TextBox6.Text);
           /* SqlConnection con = new SqlConnection(strcon);
            string qry = "select * from Students Where FirstName like '%" + TextBox6.Text + "%'";
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            //GridView1.DataSourceID = "SqlDataSource1";

            //GridView1.AutoGenerateColumns = true;
            //GridView1.Columns.Clear();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();*/
        }

        protected void Button2_Click(object sender, EventArgs e)//add button
        {
            Response.Redirect("add new student.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //string qry = "Select * from Students where FirstName like '%" + TextBox6.Text + "%'";
            //SqlDataSource
            GridView1.EditIndex = e.NewEditIndex;
            GetData(TextBox6.Text);

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();
        }

        
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = Convert.ToString(GridView1.DataKeys[e.RowIndex].Value);

            string fname = (GridView1.Rows[e.RowIndex].FindControl("Textbox1") as TextBox).Text;
            string sname = (GridView1.Rows[e.RowIndex].FindControl("Textbox2") as TextBox).Text;
            string cclass = (GridView1.Rows[e.RowIndex].FindControl("Textbox3") as TextBox).Text;
            string email = (GridView1.Rows[e.RowIndex].FindControl("Textbox4") as TextBox).Text;
            

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Format("Update Student set FirstName = '{0}', Surname ='{1}', Class='{2}', EmailID='{3}' where AdmissionNo='{4}'", fname, sname,cclass, email,id);
                
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
            string qry = "Delete from Student Where AdmissionNo = " + id;
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            int row = cmd.ExecuteNonQuery();
            con.Close();

            if(row > 0)
            {
                GetData();
            }
        }

        //protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        //{
        //    GridView1.DataBind();
        //    if (ViewState["dt1"] != null)// check view state is null
        //    {
        //        DataTable dt = (DataTable)ViewState["dt1"]; // stores view state data into datatable
        //        DataView dv = new DataView(dt); //converts data table to dataview
        //        dv.Sort = e.SortExpression; //sort dataview
        //        GridView1.DataSource = dv;
        //        GridView1.DataBind(); //bind dataview to gridview

        //    }

        //}

        protected void GridView1_Sorting1(object sender, GridViewSortEventArgs e)
        {
            //var dataTableData = ViewState["dt1"];
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

        protected void ButtonSubmit(object sender, EventArgs e)//searh submit
        {
            GetData(TextBox6.Text);
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chkstatus = (CheckBox)sender;
            GridViewRow row = (GridViewRow)chkstatus.NamingContainer;

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)//checkbox header
        {
            CheckBox chkheader = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox1");
            foreach(GridViewRow row in GridView1.Rows)
            {
                CheckBox chkrow = (CheckBox)row.FindControl("CheckBox2");
                if(chkheader.Checked == true)
                {
                    chkrow.Checked = true;
                }
                else
                {
                    chkrow.Checked = false;
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            /*for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chkstatus = (CheckBox)GridView1.Rows[i].Cells[0].FindControl("Checkbox2");
                if (chkstatus.Checked == true)
                {
                    string id = Convert.ToString(GridView1.Rows[i].Cells[1].Text);

                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    //string qry = "Delete from Student Where AdmissionNo= " + id;
                    SqlCommand cmd = new SqlCommand("Delete from Student Where AdmissionNo='"+ id +"'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            foreach (GridViewRow row in GridView1.Rows)
            {
                if ((row.FindControl("Checkbox2") as CheckBox).Checked)
                {
                    string AdminNo = GridView1.DataKeys[row.RowIndex].Value.ToString();
                    using (SqlConnection con = new SqlConnection(strcon))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("DELETE FROM Student WHERE AdmissionNo=" + AdminNo, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }*/

            DataTable dt = new DataTable();
            dt = ViewState["dt"] as DataTable;
            GridViewRow row = GridView1.SelectedRow;
            int index = row.RowIndex;
            if (ViewState["dt"] != null)
            {
                dt.Rows[index].Delete();
            }

            GetData();

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string AdmissionNo = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "AdmissionNo"));
                ImageButton imageButton = ((ImageButton)e.Row.FindControl("btndel"));
                ImageButton imageButton2 = ((ImageButton)e.Row.FindControl("btnEdit"));
                if (imageButton != null && AdmissionNo == "18550")
                {
                    imageButton.Visible = false;
                    imageButton2.Visible = false;
                }
            }

            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    string AdmissionNo = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "AdmissionNo"));
            //    Button lnkbtndel = (Button)e.Row.FindControl("btndel");
            //    if (lnkbtndel != null && AdmissionNo == "0")
            //    {

            //        lnkbtndel.Visible = false;
            //    }
            //}
        }

        protected void Button3_Click(object sender, EventArgs e)//delete
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox checkboxdelete = ((CheckBox)GridView1.Rows[i].FindControl("CheckBox2"));

                if (checkboxdelete.Checked == true)
                {
                    string id = ((System.Web.UI.WebControls.Label)GridView1.Rows[i].Cells[1].Controls[1]).Text.ToString();

                    SqlConnection con = new SqlConnection(strcon);
                    SqlCommand cmd = new SqlCommand("delete from student where AdmissionNo = @id ", con);
                    cmd.CommandType = CommandType.Text;

                    SqlParameter param = new SqlParameter("@id", SqlDbType.VarChar);
                    param.Value = id;
                    cmd.Parameters.Add(param);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    cmd.Dispose();
                }
            }

            GetData();
        }
    }
}