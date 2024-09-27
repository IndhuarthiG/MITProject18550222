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
    public partial class Add_new_Participant : System.Web.UI.Page
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

       
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Student_Sport(AdmissionNo, FirstName, Surname, Sport_ID, Sport_Name, Email) values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "' ,'" + this.TextBox8.Text + "' ,'" + this.DropDownList3.SelectedValue + "', '" + this.DropDownList3.SelectedItem.Text + "', '" + this.TextBox13.Text + "')", con);

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

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Students where AdmissionNo='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox8.Text = dt.Rows[0][2].ToString();
                    TextBox13.Text = dt.Rows[0][4].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Student name');</script>");
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
            TextBox13.Text = "";
            TextBox8.Text = "";

        }
    }
}