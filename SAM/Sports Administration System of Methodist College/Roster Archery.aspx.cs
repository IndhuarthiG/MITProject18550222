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
    public partial class Archery_Roster : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from Rosters where Teacher_ID='" + Session["UserName"].ToString() + "' AND SportName='Archery'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList3.DataBind();
                DropDownList3.DataTextField = "Date";
                //DropDownList3.DataValueField = "ID";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("-Select Slot-"));
                DropDownList3.Items[0].Selected = true;
                DropDownList3.Items[0].Attributes["Disabled"] = "Disabled";

            }

        }

        

        //protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        //{
        //    foreach (GridViewRow row in GridView1.Rows)
        //    {
        //        ((LinkButton)row.FindControl("LinkButton1")).Visible = ((CheckBox)row.FindControl("CheckBox1")).Checked;

        //    }
        //}

        //protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        //{
        //    foreach (GridViewRow row in GridView1.Rows)
        //    {
        //        ((LinkButton)row.FindControl("LinkButton1")).Visible = ((CheckBox)row.FindControl("CheckBox1")).Checked;

        //    }
        //}

        protected bool CheckEnabled(String _email, String _teacherID)
        {
            bool retVal = true;
            if (Session["email"].ToString() == _email)
            {
                retVal = false;
            }
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from Rosters where Teacher_ID='" + _teacherID + "' AND SportName='Archery' AND Requests!=''", con);

            Int32 record = (Int32)cmd.ExecuteScalar();

            if (record > 0)
            {
                retVal = false;
            }

            con.Close();
            //Check in the database if the record is requested already, if it is requested then set retVal = false;
            return retVal;
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)//send request
        {
            try
            {
                int id = Convert.ToInt32(e.CommandArgument);

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update Rosters Set Requests = 'Requested', Addedby= '" + Session["UserName"].ToString() + "', ReqName='" + Session["Name"].ToString() + "', ExchangeWith='" + this.DropDownList3.SelectedItem.Text + "' where ID=" + id, con);

                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Updated Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}