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
    public partial class Request_archery : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //if (!IsPostBack)
            //{
            //    foreach (GridViewRow r in GridView1.Rows)
            //    {

            //        r.Visible = r.Cells[2].Text != "0";
            //        //Or using ItemTemplate;
            //        r.Visible = (r.FindControl("id of label in column3") as Label).Text != "0";
            //    }
            //}
        }

        //protected void GridView_RowDataBound(Object sender, GridViewRowEventArgs e)
        //{
        //    string emailId = Session["email"].ToString();
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        string email = (((Label)e.Row.FindControl("Label9")).Text).ToString();
        //        string request = (((Label)e.Row.FindControl("Label10")).Text).ToString();
        //        if ((emailId != email) || (string.IsNullOrEmpty(request)))
        //        {
        //            e.Row.Visible = false;
        //        }
        //    }
        //}

        //protected void LinkButton1_Click(object sender, CommandEventArgs e)//accept
        //{
        //    try
        //    {
        //        string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
        //        string ID = commandArgs[0];
        //        string Sport_ID = commandArgs[1];
        //        string Sport_Name = commandArgs[2];
        //        string Teacher_ID = commandArgs[3];
        //        string AddedBy = commandArgs[4];

        //        SqlConnection con = new SqlConnection(strcon);

        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }
        //        string sql = String.Format("Insert into Resquests (ID, Sport_ID,SportName, Teacher_ID, ReStatus,Addedby) values ('{0}','{1}','{2}','{3}','Accepted','{4}')", ID, Sport_ID, Sport_Name, Teacher_ID,AddedBy).ToString();
        //        SqlCommand cmd = new SqlCommand(sql,con);

        //        cmd.ExecuteNonQuery();

        //        con.Close();

        //        Response.Write("<script>alert('Updated Successfully');</script>");
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }
        //}

        //protected void LinkButton2_Click(object sender, CommandEventArgs e)//reject
        //{
        //    try
        //    {
        //        string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
        //        string ID = commandArgs[0];
        //        string Sport_ID = commandArgs[1];
        //        string Sport_Name = commandArgs[2];
        //        string Teacher_ID = commandArgs[3];
        //        string AddedBy = commandArgs[4];

        //        SqlConnection con = new SqlConnection(strcon);

        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        string sqlQuery = String.Format("Select * from Resquests where ID={0}",ID).ToString();
        //        SqlCommand cmdSelect = new SqlCommand(sqlQuery, con);
        //        SqlDataReader reader = cmdSelect.ExecuteReader();
        //        string sql = string.Empty;
        //        if (reader.Read())
        //        {
        //            sql = String.Format("Update Resquests Set ReStatus='Rejected' where ID={0}", ID).ToString();

        //            // The command returns Row(s)
        //        }
        //        else
        //        {
        //            sql = String.Format("Insert into Resquests (ID, Sport_ID,SportName, Teacher_ID, ReStatus,Addedby) values ('{0}','{1}','{2}','{3}','Rejected','{4}')", ID, Sport_ID, Sport_Name, Teacher_ID, AddedBy).ToString();
        //            // No Row has been returned.
        //        }
        //        reader.Close();
        //        SqlCommand cmd = new SqlCommand(sql, con);

        //        cmd.ExecuteNonQuery();

        //        string sqlForRosters = String.Format("Update Rosters Set Requests='',Addedby='' where ID={0}", ID).ToString();
        //        SqlCommand cmd2 = new SqlCommand(sqlForRosters, con);

        //        cmd2.ExecuteNonQuery();

        //        con.Close();

        //        Response.Write("<script>alert('Updated Successfully');</script>");
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }
        //}

       

        protected void LinkButton1_Click(object sender, CommandEventArgs e)//accept
        {
            
            try
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
                string ID = commandArgs[0];
                string Sport_ID = commandArgs[1];
                string Sport_Name = commandArgs[2];
                string Teacher_ID = commandArgs[3];
                string AddedBy = commandArgs[4];
                string ReqName = commandArgs[5];
                string ExchangeWith = commandArgs[6];

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string sql = String.Format("Insert into Requests(ID, Sport_ID, SportName, Teacher_ID, ReStatus, Addedby, ReqFirstName, ExchangeWith) values ('{0}','{1}','{2}','{3}','Accepted','{4}','{5}','{6}')", ID, Sport_ID, Sport_Name, Teacher_ID, AddedBy, ReqName ,ExchangeWith).ToString();
                SqlCommand cmd = new SqlCommand(sql, con);

                cmd.ExecuteNonQuery();

                string sqlForRosters = String.Format("Update Rosters Set Requests='Accepted' where ID={0}", ID).ToString();
                SqlCommand cmd2 = new SqlCommand(sqlForRosters, con);

                cmd2.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Updated Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            EnableViewState = false;

        }

        protected void LinkButton2_Click(object sender, CommandEventArgs e)//reject
        {
            try
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
                string ID = commandArgs[0];
                string Sport_ID = commandArgs[1];
                string Sport_Name = commandArgs[2];
                string Teacher_ID = commandArgs[3];
                string AddedBy = commandArgs[4];
                string ReqName = commandArgs[5];
                string ExchangeWith = commandArgs[6];

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string sqlQuery = String.Format("Select * from Requests where ID={0}", ID).ToString();
                SqlCommand cmdSelect = new SqlCommand(sqlQuery, con);
                SqlDataReader reader = cmdSelect.ExecuteReader();
                string sql = string.Empty;
                if (reader.Read())
                {
                    sql = String.Format("Update Requests Set ReStatus='Rejected' where ID={0}", ID).ToString();

                    // The command returns Row(s)
                }
                else
                {
                    sql = String.Format("Insert into Requests (ID,Sport_ID,SportName,Teacher_ID,ReStatus,Addedby,ReqFirstName,ExchangeWith) values ('{0}','{1}','{2}','{3}','Rejected','{4}','{5}','{6}')", ID, Sport_ID, Sport_Name, Teacher_ID, AddedBy, ReqName, ExchangeWith).ToString();
                    // No Row has been returned.
                }
                reader.Close();
                SqlCommand cmd = new SqlCommand(sql, con);

                cmd.ExecuteNonQuery();

                string sqlForRosters = String.Format("Update Rosters Set Requests='Rejected' where ID={0}", ID).ToString();
                SqlCommand cmd2 = new SqlCommand(sqlForRosters, con);

                cmd2.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Updated Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            
        }
        
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            string emailId = Session["email"].ToString();
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string email = (((Label)e.Row.FindControl("Label9")).Text).ToString();
                string request = (((Label)e.Row.FindControl("Label10")).Text).ToString();
                if ((emailId != email) || (string.IsNullOrEmpty(request)))
                {
                    e.Row.Visible = false;
                }
            }
        }

    }
}