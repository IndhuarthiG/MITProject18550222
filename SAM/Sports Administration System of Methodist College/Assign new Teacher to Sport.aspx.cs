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
    public partial class Assign_new_Teacher_to_Sport : System.Web.UI.Page
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
                DropDownList3.Items.Insert(0, new ListItem("Select Sport"));
            }

            //_ = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "Select * from Teachers";
            //cmd.ExecuteNonQuery();
            //_ = new DataTable();
            //_ = new SqlDataAdapter(cmd);
            //da.Fill(dt);
            //foreach (DataRow dr in dt.Rows)
            //{
            //    DropDownList2.Items.Add(dr["Teacher_ID"].ToString());
            //}

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

                SqlCommand cmd = new SqlCommand("INSERT INTO Teacher_Sport(Teacher_ID, Title,FirstName, Surname, Sport_Name, Sport_ID) values('" + this.TextBox3.Text + "', '" + this.TextBox1.Text + "','" + this.TextBox2.Text + "' ,'" + this.TextBox8.Text + "', '" + this.DropDownList3.SelectedItem.Text + "' ,'" + this.DropDownList3.SelectedValue + "')", con);

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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Teachers where Teacher_ID='" + TextBox3.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0][1].ToString();
                    TextBox2.Text = dt.Rows[0][2].ToString();
                    TextBox8.Text = dt.Rows[0][3].ToString();
                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid Teacher name');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox8.Text = "";

        }

       
    }

        //protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection(strcon);
        //    SqlCommand cmd = new SqlCommand("Select * from Teachers where Teacher_ID = '" + DropDownList2.SelectedValue.ToString()+ "'", con);
        //    con.Open();
        //    cmd.ExecuteNonQuery();
        //    SqlDataReader dr;
        //    dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        string Title = (string)dr["Title"].ToString();
        //        TextBox1.Text = Title;

        //        string FirstName = (string)dr["FirstName"].ToString();
        //        TextBox2.Text = FirstName;

        //        string Surame = (string)dr["Surname"].ToString();
        //        TextBox8.Text = Surame;
        //    }


            
        //    //SqlConnection con = new SqlConnection(strcon);
        //    //con.Open();
        //    //SqlCommand cmd = con.CreateCommand();
        //    //cmd.CommandType = CommandType.Text;
        //    //cmd.CommandText = "Select * from Teachers where Teacher_ID = '"+DropDownList2.SelectedItem.Text.ToString()+"'";
        //    //cmd.ExecuteNonQuery();
        //    //DataTable dt = new DataTable();
        //    //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    //da.Fill(dt);
        //    //foreach (DataRow dr in dt.Rows)
        //    //{
        //    //    TextBox1.Text = dr["Title"].ToString();
        //    //    TextBox2.Text = dr["FirstName"].ToString();
        //    //    TextBox8.Text = dr["Surname"].ToString();
        //    //}
        //    //con.Close();
        //}
 }

