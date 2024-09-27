using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class adminRoster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Archery_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminrosterarchery.aspx");
        }

        protected void Athletics_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminathleticsroster.aspx");
        }

        protected void Badminton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminBadminroster.aspx");
        }

        protected void BB_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminBBroster.aspx");
        }

        protected void Chess_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminChessroster.aspx");
        }

        protected void NB_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminNBroster.aspx");
        }

        protected void Squash_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminSquashroster.aspx");
        }

        protected void Swimming_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminSwiroster.aspx");
        }

        protected void Tennis_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminTennisroster.aspx");
        }

        protected void TT_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminTTroster.aspx");
        }

        protected void VB_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminVBroster.aspx");
        }
    }
}