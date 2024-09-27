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
    public partial class CoachBBAttendance : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData()
        {

            SqlConnection con = new SqlConnection(strcon);
            string qry = string.Empty;
            qry = "Select AdmissionNo, FirstName, Surname, Sport_ID, SportName from Student_Sport where SportName='Basketball'";

            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            //DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView2.DataSource = dt;
            //ViewState["dt"] = dt;
            //ViewState["sort"] = "ASC";
            GridView2.DataBind();
            GridView2.Columns[3].Visible = false;
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)//Save button
        {
            try
            {
                string text = TextBox6.Text;
                if (!String.IsNullOrEmpty(text))
                {

                        foreach (GridViewRow row in GridView2.Rows)
                        {
                            string adminNo = row.Cells[0].Text;
                            string fname = row.Cells[1].Text;
                            string sname = row.Cells[2].Text;
                            int sportid = Convert.ToInt32(row.Cells[3].Text);
                            string sportname = row.Cells[4].Text;

                            DropDownList DropDownList1 = row.Cells[5].FindControl("DropDownList1") as DropDownList;
                            int attendance = int.Parse(DropDownList1.SelectedItem.Value);

                        ////string attendance = (row.Cells[5].FindControl("DropDownList1") as DropDownList).SelectedValue;
                                string category = (row.Cells[6].FindControl("DropDownList2") as DropDownList).SelectedValue;
                        //string performance = (row.Cells[7].FindControl("DropDownList3") as DropDownList).SelectedValue;
                                DropDownList DropDownList3 = row.Cells[7].FindControl("DropDownList3") as DropDownList;
                                int performance = int.Parse(DropDownList3.SelectedItem.Value);
                        save(adminNo, fname, sname, sportid, sportname, attendance, category, performance);

                            Response.Write("<script>alert('Entry Successful')</script>");
                        }
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;

                    Label1.Text = "Please Enter Date of Practice";
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }

        private void save(string adminNo, string fname, string sname, int sportid,string sportname, int attendance, string category, int performance)
        {
            SqlConnection con = new SqlConnection(strcon);
            string query = "INSERT INTO Student_Attendance(AdmissionNo,FirstName,Surname,Sport_ID,SportName,DateOfPractice,Attendance,Category,Performance) values('" + adminNo + "', '" + fname + "', '" + sname + "','"+sportid+"','" + sportname + "', '" + TextBox6.Text + "', '" + attendance + "','" + category + "','" + performance + "')";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
    }
}