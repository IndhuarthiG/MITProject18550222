﻿using System;
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
    public partial class Test_Team : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            teamsdropdown();
            if (!IsPostBack)
            {
                dropdown();
                //BindGridview();
                string myquery = "Select * from Student_Attendance where SportName='Basketball' AND Attendance= '1'";
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
                //con.Close();
                GridView1.Columns[0].Visible = false;
                GridView1.Columns[4].Visible = false;
                GridView1.Columns[5].Visible = false;
                GridView1.Columns[6].Visible = false;
                GridView1.Columns[7].Visible = false;
                GridView1.Columns[9].Visible = false;
                GridView1.Columns[10].Visible = false;
                GridView1.Columns[1].Visible = false;
                //GridView3.Columns[0].Visible = false;
                //GridView3.Columns[1].Visible = false;
                //age();
                dropdownname();


            }


        }
        protected void dropdown()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("Select Distinct Category from Student_Attendance where SportName='Basketball'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            if (!IsPostBack)
            {
                //DropDownList3.DataBind();
                DropDownList3.DataTextField = "Category";
                DropDownList3.DataValueField = "Category";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("-Select Category-"));
                //GridViewBind();

            }
        }

        protected void teamsdropdown()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd1 = new SqlCommand("select * from Teams where SportName='Basketball'", con);
            // table name   
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da1.Fill(dt);
            DropDownList6.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList6.DataBind();
                DropDownList6.DataTextField = "TeamName";
                DropDownList6.DataValueField = "Team_ID";
                DropDownList6.DataBind();
                DropDownList6.Items.Insert(0, new ListItem("-Select Team-"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//display
        {
            GridView1.Visible = true;
            SqlConnection con = new SqlConnection(strcon);
            string myquery = "select distinct AdmissionNo, FirstName, Surname, Category from Student_Attendance where Category like '%" + DropDownList3.SelectedItem.Text + "%' AND SportName = 'Basketball'";
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
            TotalPoints();
            //age();
            DropDownList5.Visible = true;
            DropDownList6.Visible = true;
            //Label1.Visible = true;
            //TextBox1.Visible = true;
            //TextBox3.Visible = true;
            //TextBox4.Visible = true;
            //LinkButton2.Visible = true;
            //age();
            //dropdownname();
        }

        protected void TotalPoints()
        {
            SqlConnection con = new SqlConnection(strcon);
            string myquery2 = "SELECT DISTINCT AdmissionNo, SUM(Performance) AS Total_Points FROM Student_Attendance WHERE Category LIKE '%" + DropDownList3.SelectedItem.Text + "%' AND SportName = 'Basketball' GROUP BY AdmissionNo ORDER BY AdmissionNo ASC";
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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //Replace "ColumnName1" with the appropriate column name for summing.

                //int columnName = "Performance";

                int sum = 0;
                foreach (GridViewRow row in GridView1.Rows)
                {
                    int value;
                    if (int.TryParse(row.Cells[9].Text, out value))
                    {
                        sum += value;
                    }
                }
                // Set the sum value in the "SumColumnName" cell of the current row.
                Label sumLabel = (Label)e.Row.FindControl("lblTotal");
                sumLabel.Text = sum.ToString();


                // Assuming you want to calculate the sum of values in the first column (index 0)
                //int columnIndex = 9;

                //// Check if the data is numeric (you may need to modify this condition based on your data)
                //if (e.Row.Cells[columnIndex].Text != "&nbsp;")
                //{
                //    int cellValue = int.Parse(e.Row.Cells[columnIndex].Text);

                //    // Store the running total in a ViewState variable
                //    int runningTotal = ViewState["RunningTotal"] != null ? (int)ViewState["RunningTotal"] : 4;

                //    runningTotal += cellValue;

                //    // Update the ViewState variable with the new running total
                //    ViewState["RunningTotal"] = runningTotal;

                //    // Display the running total in a label or any other control
                //    Label lblTotal = (Label)e.Row.FindControl("lblTotal"); // Assuming you have a label to display the total
                //    if (lblTotal != null)
                //    {
                //        lblTotal.Text = runningTotal.ToString();
                //    }
                //}


            }
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

        
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                //string CommandName = e.CommandName;
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                if (e.CommandName == "Select")
                {

                    //Determine the RowIndex of the Row whose Button was clicked.
                    //int rowIndex = Convert.ToInt32(e.CommandArgument);

                    //Reference the GridView Row.
                    GridViewRow row = GridView1.Rows[rowIndex];
                    Label lblAdmissionNo = (Label)row.FindControl("Label1");
                    string AdmissionNo = lblAdmissionNo.Text;

                    Label lblFirstName = (Label)row.FindControl("Label2");
                    string FirstName = lblFirstName.Text;

                    Label lblSurname = (Label)row.FindControl("Label3");
                    string Surname = lblSurname.Text;

                    Label lblCategory = (Label)row.FindControl("Label4");
                    string Category = lblCategory.Text;

                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    string position = DropDownList5.SelectedValue;
                    //string teamid = DropDownList6.SelectedValue;
                    string teamName = DropDownList6.SelectedItem.Text;
                    if (position == "Captain" || position == "Vice Captain")
                    {
                        string qry = "SELECT * from Student_Team Where (Position ='" + position + "') AND TeamName ='" + teamName + "'";
                        SqlCommand cmd = new SqlCommand(qry, con);
                        cmd.ExecuteNonQuery();


                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        if (dt.Rows.Count >= 1)
                        {
                            Response.Write("<script>alert('Position already exists!')</script>");
                        }
                        else
                        {
                            //return false;

                            //check if player (admission no and on team already on table then update else insert 

                            if (AdmissionNo == lblAdmissionNo.Text)
                            {
                                string qry1 = "SELECT * from Student_Team Where AdmissionNo = " + AdmissionNo;
                                SqlCommand cmd1 = new SqlCommand(qry1, con);
                                cmd1.ExecuteNonQuery();
                                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                                DataTable dt1 = new DataTable();
                                da1.Fill(dt1);
                                if (dt1.Rows.Count >= 1)
                                {
                                    //Response.Write("<script>alert('Team member already Exists!')</script>");
                                    string qry2 = "Update Student_Team set Team_ID = '" + DropDownList6.SelectedValue + "', TeamName ='" + DropDownList6.SelectedItem.Text + "', Position = '" + DropDownList5.SelectedValue + "' Where AdmissionNo = " + AdmissionNo;
                                    SqlCommand cmd2 = new SqlCommand(qry2, con);
                                    cmd2.ExecuteNonQuery();
                                    Response.Write("<script>alert('Updated Record Successfully!')</script>");

                                }
                                else
                                {
                                    SqlCommand sqlcmd = new SqlCommand("INSERT INTO Student_Team(AdmissionNo, FirstName, Surname, Team_ID, TeamName, Category, Position) VALUES(@AdmissionNo, @FirstName, @Surname, @Team_ID, @TeamName, @Category, @Position)", con);


                                    // Adjust SqlDbType and size based on your database schema
                                    sqlcmd.Parameters.AddWithValue("@AdmissionNo", AdmissionNo);
                                    sqlcmd.Parameters.AddWithValue("@FirstName", FirstName);
                                    sqlcmd.Parameters.AddWithValue("@Surname", Surname);
                                    sqlcmd.Parameters.AddWithValue("@Team_ID", DropDownList6.SelectedValue);
                                    sqlcmd.Parameters.AddWithValue("@TeamName", DropDownList6.SelectedItem.Text);
                                    sqlcmd.Parameters.AddWithValue("@Category", Category);
                                    sqlcmd.Parameters.AddWithValue("@Position", DropDownList5.SelectedValue);


                                    sqlcmd.ExecuteNonQuery();
                                    Response.Write("<script>alert('Entry Successful')</script>");
                                }
                            }
                            //SqlCommand sqlcmd = new SqlCommand("INSERT INTO Student_Team(AdmissionNo, FirstName, Surname, Team_ID, TeamName, Category, Position) VALUES(@AdmissionNo, @FirstName, @Surname, @Team_ID, @TeamName, @Category, @Position)", con);


                            //// Adjust SqlDbType and size based on your database schema
                            //sqlcmd.Parameters.AddWithValue("@AdmissionNo", AdmissionNo);
                            //sqlcmd.Parameters.AddWithValue("@FirstName", FirstName);
                            //sqlcmd.Parameters.AddWithValue("@Surname", Surname);
                            //sqlcmd.Parameters.AddWithValue("@Team_ID", DropDownList6.SelectedValue);
                            //sqlcmd.Parameters.AddWithValue("@TeamName", DropDownList6.SelectedItem.Text);
                            //sqlcmd.Parameters.AddWithValue("@Category", Category);
                            //sqlcmd.Parameters.AddWithValue("@Position", DropDownList5.SelectedValue);


                            //sqlcmd.ExecuteNonQuery();
                            //Response.Write("<script>alert('Entry Successful')</script>");


                        }
                    }
                    else
                    {
                        //check if player (admission no and on team already on table then update else insert
                        if (AdmissionNo == lblAdmissionNo.Text)
                        {
                            string qry1 = "SELECT * from Student_Team Where AdmissionNo = " + AdmissionNo;
                            SqlCommand cmd1 = new SqlCommand(qry1, con);
                            cmd1.ExecuteNonQuery();
                            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                            DataTable dt1 = new DataTable();
                            da1.Fill(dt1);
                            if (dt1.Rows.Count >= 1)
                            {
                                //Response.Write("<script>alert('Team member already Exists!')</script>");
                                string qry2 = "Update Student_Team set Team_ID = '" + DropDownList6.SelectedValue + "', TeamName ='" + DropDownList6.SelectedItem.Text + "', Position = '" + DropDownList5.SelectedValue + "' Where AdmissionNo = " + AdmissionNo;
                                SqlCommand cmd2 = new SqlCommand(qry2, con);
                                cmd2.ExecuteNonQuery();
                                Response.Write("<script>alert('Updated Record Successfully!')</script>");
                            }
                            else
                            {
                                SqlCommand sqlcmd = new SqlCommand("INSERT INTO Student_Team(AdmissionNo, FirstName, Surname, Team_ID, TeamName, Category, Position) VALUES(@AdmissionNo, @FirstName, @Surname, @Team_ID, @TeamName, @Category, @Position)", con);


                                // Adjust SqlDbType and size based on your database schema
                                sqlcmd.Parameters.AddWithValue("@AdmissionNo", AdmissionNo);
                                sqlcmd.Parameters.AddWithValue("@FirstName", FirstName);
                                sqlcmd.Parameters.AddWithValue("@Surname", Surname);
                                sqlcmd.Parameters.AddWithValue("@Team_ID", DropDownList6.SelectedValue);
                                sqlcmd.Parameters.AddWithValue("@TeamName", DropDownList6.SelectedItem.Text);
                                sqlcmd.Parameters.AddWithValue("@Category", Category);
                                sqlcmd.Parameters.AddWithValue("@Position", DropDownList5.SelectedValue);


                                sqlcmd.ExecuteNonQuery();
                                Response.Write("<script>alert('Entry Successful')</script>");
                            }

                            //SqlCommand sqlcmd = new SqlCommand("INSERT INTO Student_Team(AdmissionNo, FirstName, Surname, Team_ID, TeamName, Category, Position) VALUES(@AdmissionNo, @FirstName, @Surname, @Team_ID, @TeamName, @Category, @Position)", con);


                            //// Adjust SqlDbType and size based on your database schema
                            //sqlcmd.Parameters.AddWithValue("@AdmissionNo", AdmissionNo);
                            //sqlcmd.Parameters.AddWithValue("@FirstName", FirstName);
                            //sqlcmd.Parameters.AddWithValue("@Surname", Surname);
                            //sqlcmd.Parameters.AddWithValue("@Team_ID", DropDownList6.SelectedValue);
                            //sqlcmd.Parameters.AddWithValue("@TeamName", DropDownList6.SelectedItem.Text);
                            //sqlcmd.Parameters.AddWithValue("@Category", Category);
                            //sqlcmd.Parameters.AddWithValue("@Position", DropDownList5.SelectedValue);


                            //sqlcmd.ExecuteNonQuery();
                            //Response.Write("<script>alert('Entry Successful')</script>");
                        }


                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
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

        protected void age()
        {
            SqlConnection con = new SqlConnection(strcon);
            string myquery3 = "Select distinct s.AdmissionNo, s.FirstName, s.Surname, DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age From Student s INNER JOIN Student_Attendance a ON s.AdmissionNo = a.AdmissionNo Where a.SportName = 'Basketball' AND a.Category like '%" + DropDownList3.SelectedItem.Text + "%' AND s.FirstName like '%" + DropDownList1.SelectedItem.Text + "%' ORDER BY AdmissionNo ASC";
            SqlCommand cmd3 = new SqlCommand();
            cmd3.CommandText = myquery3;
            cmd3.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd3;
            DataSet ds3 = new DataSet();
            da.Fill(ds3);
            GridView3.DataSource = ds3;
            GridView3.DataBind();
        }

        protected void dropdownname()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            //SqlCommand cmd = new SqlCommand("Select Distinct FirstName from Student_Sport where SportName='Basketball'", con);
            SqlCommand cmd = new SqlCommand("Select distinct s.AdmissionNo, s.FirstName, s.Surname, DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age From Student s INNER JOIN Student_Attendance a ON s.AdmissionNo = a.AdmissionNo Where a.SportName = 'Basketball' ORDER BY AdmissionNo ASC", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            if (!IsPostBack)
            {
                //DropDownList3.DataBind();
                DropDownList1.DataTextField = "FirstName";
                DropDownList1.DataValueField = "FirstName";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("-Select Name-"));
                //GridViewBind();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)//check Age
        {
            SqlConnection con = new SqlConnection(strcon);
            //string fname = DropDownList1.SelectedValue;
            //string category = DropDownList3.SelectedItem.Text;

            //if (fname == DropDownList1.SelectedValue && category == DropDownList3.SelectedItem.Text)
            //{
                GridView3.Visible = true;

                //string myquery = "select distinct AdmissionNo, FirstName, Surname from Student_Sport where FirstName like '%" + DropDownList1.SelectedItem.Text + "%' AND SportName = 'Basketball'";
                string myquery = "Select distinct s.AdmissionNo,s.FirstName, s.Surname, DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age From Student s INNER JOIN Student_Attendance a ON s.AdmissionNo = a.AdmissionNo Where a.SportName = 'Basketball' AND s.FirstName like '%" + DropDownList1.SelectedItem.Text + "%' AND a.Category like '%" + DropDownList3.SelectedItem.Text + "%' ORDER BY AdmissionNo ASC";


                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = myquery;

                cmd.Connection = con;

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;

                DataSet ds = new DataSet();
           
                da.Fill(ds);

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {

                GridView3.DataSource = ds;
                GridView3.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Select Correct Candidate!!!!')</script>");
                GridView3.DataSource = null;
                GridView3.DataBind();
            }
            //age();
            //dropdownname();
            //}




        }
    }
}