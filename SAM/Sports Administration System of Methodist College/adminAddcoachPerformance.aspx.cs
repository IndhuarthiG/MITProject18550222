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
    public partial class adminAddcoachPerformance : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            //SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("select *from Sport", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList4.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList4.DataBind();
                DropDownList4.DataTextField = "SportName";
                DropDownList4.DataValueField = "Sport_ID";
                DropDownList4.DataBind();

            }
            if (!IsPostBack)
            {
                loaddata(0);

            }
            DropDownList4.Enabled = false;

            SqlCommand cmd2 = new SqlCommand("select *from Tournament", con);
            // table name   
            SqlDataAdapter da1 = new SqlDataAdapter(cmd2);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);
            DropDownList1.DataSource = dt1;
            if (!IsPostBack)
            {
                //DropDownList1.DataBind();
                DropDownList1.DataTextField = "TName";
                DropDownList1.DataValueField = "Year";
                DropDownList1.DataBind();

            }
        }

        private void loaddata(int position)// int position
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Coach order by Coach_ID offset " + position + " rows fetch next 1 row only", con);

            using (SqlDataReader reader = cmd.ExecuteReader())
            {

                while (reader.Read())
                {
                    TextBox6.Text = reader[0].ToString();
                    TextBox1.Text = reader[1].ToString();
                    TextBox2.Text = reader[2].ToString();
                    TextBox3.Text = reader[3].ToString();
                    DropDownList4.SelectedValue = reader[4].ToString();
                    DropDownList4.SelectedItem.Text = reader[5].ToString();
                    TextBox4.Text = reader[6].ToString();
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)//next button
        {
            int currentrow = Convert.ToInt32(HttpContext.Current.Session["currentRow"]);
            currentrow = currentrow + 1;
            loaddata(currentrow);
            HttpContext.Current.Session["currentRow"] = currentrow;
        }
    }
}