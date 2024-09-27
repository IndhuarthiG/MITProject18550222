using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class adminParticipants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Archery_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantarchery.aspx");
        }

        protected void Athletics_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantathletics.aspx");
        }

        protected void Badminton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantsBadminton.aspx");
        }

        protected void BB_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantsBB.aspx");
        }

        protected void Chess_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantsChess.aspx");
        }

        protected void Squash_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantssquash.aspx");
        }

        protected void Swimming_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantsswim.aspx");
        }

        protected void Tennis_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantsTennis.aspx");
        }

        protected void TT_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantsTT.aspx");
        }

        protected void VB_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantsVB.aspx");
        }

        protected void NB_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminParticipantsNB.aspx");
        }
    }
}