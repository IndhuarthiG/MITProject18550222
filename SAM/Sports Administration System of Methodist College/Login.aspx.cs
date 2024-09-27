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
    public partial class Login : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Request.Cookies["UNAME"]!=null && Request.Cookies["PWD"] != null)
                {
                    TextBox3.Text = Request.Cookies["UNAME"].Value;
                    TextBox1.Attributes["value"] = Request.Cookies["PWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)//login
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from Login where UserName ='" + TextBox3.Text.Trim() + "' AND Password='" + TextBox1.Text.Trim() + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = TextBox3.Text;
                        Response.Cookies["PWD"].Value = TextBox1.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    dr.Read();
                    {
                        Response.Write("<script>alert('Login Successful');</script>");
                        Session["UserName"] = dr.GetValue(1).ToString();
                        Session["Name"] = dr.GetValue(5).ToString();
                        Session["role"] = dr.GetValue(3).ToString().ToLower();
                        Session["email"]= dr.GetValue(4).ToString().ToLower();

                    }
                    Response.Redirect("Home Page.aspx");


                }
                //else if (dr.HasRows)
                //{
                //    dr.Read();
                //    {
                //        Response.Write("<script>alert('Login Successful');</script>");
                //        Session["UserName"] = dr.GetValue(1).ToString();
                //        Session["Name"] = dr.GetValue(5).ToString();
                //        Session["role"] = "staff";

                //    }
                //    Response.Redirect("Home Page.aspx");
                //}
                //else if (dr.HasRows)
                //{
                //    dr.Read();
                //    {
                //        Response.Write("<script>alert('Login Successful');</script>");
                //        Session["UserName"] = dr.GetValue(1).ToString();
                //        Session["Name"] = dr.GetValue(5).ToString();
                //        Session["role"] = "student";

                //    }
                //    Response.Redirect("Home Page.aspx");
                //}
                //else if (dr.HasRows)
                //{
                //    dr.Read();
                //    {
                //        Response.Write("<script>alert('Login Successful');</script>");
                //        Session["UserName"] = dr.GetValue(1).ToString();
                //        Session["Name"] = dr.GetValue(5).ToString();
                //        Session["role"] = "coach";

                //    }
                //    Response.Redirect("Home Page.aspx");
                //}
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }


            }
            catch (Exception ex)
            {

            }





        }
    }
 }
