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
    public partial class Add_Invenory : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("select *from Sport", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            if (!IsPostBack)
            {
                DropDownList3.DataBind();
                DropDownList3.DataTextField = "SportName";
                DropDownList3.DataValueField = "Sport_ID";
                DropDownList3.DataBind();

            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox8.Text = "";
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

                SqlCommand cmd = new SqlCommand("INSERT INTO Inventory(InventoryName, Colour, No_in_stock, Sport_ID, SportName) values('" + this.TextBox2.Text + "','" + this.TextBox8.Text + "' ,'" + this.TextBox1.Text + "' ,'" + this.DropDownList3.SelectedValue + "', '" + this.DropDownList3.SelectedItem.Text + "')", con);

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
    
}