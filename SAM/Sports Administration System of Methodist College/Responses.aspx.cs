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
    public partial class Responses : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void GridView_RowDataBound(Object sender, GridViewRowEventArgs e)
        //{
        //    string userName = Session["UserName"].ToString();
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        string uName = (((Label)e.Row.FindControl("Label4")).Text).ToString();
        //        if (userName != uName)
        //        {
        //            e.Row.Visible = false;
        //        }
        //    }
        //}

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            string userName = Session["UserName"].ToString();
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string uName = (((Label)e.Row.FindControl("Label6")).Text).ToString();
                if (userName != uName)
                {
                    e.Row.Visible = false;
                }
            }
        }
    }
}