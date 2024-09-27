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
    public partial class Add_new_Sports : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void clearForm()
        {
            TextBox12.Text = "";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sport(SportName) values('" + this.TextBox12.Text + "')", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Entry Successful')</script>");
                clearForm();
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }




    //  protected void Page_Load(object sender, EventArgs e)
    //  {
    //      if (IsPostBack)
    //      {
    //          GenerateAutoID();
    //      }
    //  }

    //void GenerateAutoID()
    //  {
    //      try
    //      {
    //          SqlConnection con = new SqlConnection(strcon);

    //          if (con.State == ConnectionState.Closed)
    //          {
    //              con.Open();
    //          }

    //          SqlCommand cmd = new SqlCommand("select Count(Sport_ID) from Sport", con);
    //          int i = Convert.ToInt32(cmd.ExecuteScalar());
    //          con.Close();
    //          i++;
    //          TextBox1.Text = i.ToString();

    //      }
    //      catch (Exception ex)
    //      {

    //      }



    //  }

    //  void enternewsport()
    //  {
    //      try
    //      {
    //          SqlConnection con = new SqlConnection(strcon);

    //          if (con.State == ConnectionState.Closed)
    //          {
    //              con.Open();
    //          }
    //          SqlCommand cmd = new SqlCommand("INSERT INTO Sports(Sport_ID, SportName) values(NULL,'" + this.TextBox12.Text + "')", con);

    //          cmd.ExecuteNonQuery();
    //          con.Close();
    //          GenerateAutoID();
    //          Response.Write("<script>alert('Entry Successful')</script>");
    //          clearForm();

    //      }
    //      catch (Exception ex)
    //      {
    //          Response.Write("<script>alert('" + ex.Message + "');</script>");
    //      }
    //  }

    


}
 




