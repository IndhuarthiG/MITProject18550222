using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
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
    public partial class AdminReports : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void Button1_Click(object sender, EventArgs e)//Inventory
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from Inventory", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Inventory.rpt"));
            r.SetDataSource(s.Tables["Inventory"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Inventory Report");
        }

        protected void Button15_Click(object sender, EventArgs e)//Teachers List
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from Teacher_Sport", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Sports duty Teacher List.rpt"));
            r.SetDataSource(s.Tables["Teacher_Sport"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Sports Duty Teacher Report");
        }

        protected void Button4_Click(object sender, EventArgs e)//Athletics
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Athletics')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Athletics roster.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Athletics Roster ");
        }

        protected void Button16_Click(object sender, EventArgs e)// Students report
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from Students", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Students Report.rpt"));
            r.SetDataSource(s.Tables["Students"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Students Report");
        }

        protected void Button3_Click(object sender, EventArgs e)//Archery report
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Archery')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Archery roster.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Archery Roster ");
        }

        protected void Button5_Click(object sender, EventArgs e)//badminton
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Badminton')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Badminton roster.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Badminton Roster ");
        }

        protected void Button6_Click(object sender, EventArgs e)//bb
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Basketball')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Basketball.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Basketball Roster ");
        }

        protected void Button7_Click(object sender, EventArgs e)//netball
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Netball')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Netball roster.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Netball Roster ");
        }

        protected void Button8_Click(object sender, EventArgs e)//swimming
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Swimming')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Swimming roster.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Swimming Roster ");
        }

        protected void Button9_Click(object sender, EventArgs e)//TT
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Table Tennis')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Table Tennis.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Table Tennis Roster ");
        }

        protected void Button10_Click(object sender, EventArgs e)//Tennis
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Tennis')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Tennis roster.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Tennis Roster ");
        }

        protected void Button17_Click(object sender, EventArgs e)//chess
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Chess')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Chess roster.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Chess Roster ");
        }

        protected void Button18_Click(object sender, EventArgs e)//squash
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Squash')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Squash roster.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Squash Roster ");
        }

        protected void Button19_Click(object sender, EventArgs e)//volleball
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Rosters] WHERE (SportName = 'Volleyball')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Volleyball roster.rpt"));
            r.SetDataSource(s.Tables["Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Volleyball Roster ");
        }

        protected void Button20_Click(object sender, EventArgs e)//Under 10
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Student_Team.AdmissionNo, Student_Team.FirstName, Student_Team.Surname, Student_Team.TeamName, Teams.AgeCategory FROM Test.dbo.Student_Team Student_Team INNER JOIN Test.dbo.Teams Teams ON Student_Team.Team_ID = Teams.Team_ID WHERE Teams.AgeCategory = 'Under 10' ORDER BY Student_Team.TeamName", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Under 10 Team members.rpt"));
            r.SetDataSource(s.Tables["Student_Team, Teams"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Under 10 Team members");
        }

        protected void Button11_Click(object sender, EventArgs e)//under 12
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Student_Team.AdmissionNo, Student_Team.FirstName, Student_Team.Surname, Student_Team.TeamName, Teams.AgeCategory FROM Test.dbo.Student_Team Student_Team INNER JOIN Test.dbo.Teams Teams ON Student_Team.Team_ID = Teams.Team_ID WHERE Teams.AgeCategory = 'Under 10' ORDER BY Student_Team.TeamName", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Under 12 Team members.rpt"));
            r.SetDataSource(s.Tables["Student_Team, Teams"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Under 12 Team members");
        }

        protected void Button12_Click(object sender, EventArgs e)//Under 14
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Student_Team.AdmissionNo, Student_Team.FirstName, Student_Team.Surname, Student_Team.TeamName, Teams.AgeCategory FROM Test.dbo.Student_Team Student_Team INNER JOIN Test.dbo.Teams Teams ON Student_Team.Team_ID = Teams.Team_ID WHERE Teams.AgeCategory = 'Under 10' ORDER BY Student_Team.TeamName", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Under 14 Team members.rpt"));
            r.SetDataSource(s.Tables["Student_Team, Teams"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Under 14 Team members");
        }

        protected void Button13_Click(object sender, EventArgs e)//Under 16
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Student_Team.AdmissionNo, Student_Team.FirstName, Student_Team.Surname, Student_Team.TeamName, Teams.AgeCategory FROM Test.dbo.Student_Team Student_Team INNER JOIN Test.dbo.Teams Teams ON Student_Team.Team_ID = Teams.Team_ID WHERE Teams.AgeCategory = 'Under 10' ORDER BY Student_Team.TeamName", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Under 16 team members.rpt"));
            r.SetDataSource(s.Tables["Student_Team, Teams"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Under 16 Team members");
        }

        protected void Button14_Click(object sender, EventArgs e)//Under 18
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Student_Team.AdmissionNo, Student_Team.FirstName, Student_Team.Surname, Student_Team.TeamName, Teams.AgeCategory FROM Test.dbo.Student_Team Student_Team INNER JOIN Test.dbo.Teams Teams ON Student_Team.Team_ID = Teams.Team_ID WHERE Teams.AgeCategory = 'Under 10' ORDER BY Student_Team.TeamName", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Under 18 Team members.rpt"));
            r.SetDataSource(s.Tables["Student_Team, Teams"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Under 18 Team members");
        }

        protected void Button2_Click(object sender, EventArgs e)//coach list
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from Coach", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Coach List.rpt"));
            r.SetDataSource(s.Tables["Coach"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Coach Report");
        }

        protected void Button25_Click(object sender, EventArgs e)//sports application NB
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Netball')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/NB Sports Position application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "NB Sports Position application report.rpt");
        }

        protected void Button24_Click(object sender, EventArgs e)//sports application BB
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Basketball')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/BB Sports Position application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "BB Sports Position application report.rpt");
        }

        protected void Button21_Click(object sender, EventArgs e)//sports application Archery
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Archery')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Arch Sports Position application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Arch Sports Position application report.rpt");
        }

        protected void Button22_Click(object sender, EventArgs e)//sports application Athletics
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Athletics')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Athle Sports Position application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Athle Sports Position application report.rpt");
        }

        protected void Button23_Click(object sender, EventArgs e)//sports application Badminton
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Badminton')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Badminton Sports Position application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Badminton Sports Position application report.rpt");
        }

        protected void Button26_Click(object sender, EventArgs e)//sports application swimming 
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Swimming')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Swimming Sports Position application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Swimming Sports Position application report.rpt");
        }

        protected void Button27_Click(object sender, EventArgs e)//sports application TT
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Table Tennis')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/TT Sports Position application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "TT Sports Position application report.rpt");
        }

        protected void Button28_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Tennis')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Tennis Sports Position Application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Tennis Sports Position Application report.rpt");
        }

        

        protected void Button29_Click(object sender, EventArgs e)//Chess sports application report
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Chess')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Chess Sports Position Application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Chess Sports Position Application report.rpt");
        }

        protected void Button30_Click(object sender, EventArgs e)//Squash sports application report
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Squash')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Squash Sports Position application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Squash Sports Position application report.rpt");
        }

        protected void Button31_Click(object sender, EventArgs e)//volleyball sports application report
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Student_ApplyPosition] WHERE (SportName = 'Volleyball')", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/VB Sports Position application report.rpt"));
            r.SetDataSource(s.Tables["Student_ApplyPosition"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "VB Sports Position application report.rpt");
        }

        protected void Button32_Click(object sender, EventArgs e)//Exchange Roster report
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Rosters.Date As ForDate,Requests.SportName, Rosters.FirstName As RosteredTeacherName, Requests.ReStatus As Response,Requests.ReqFirstName As ReqestedTeacher, Requests.ExchangeWith FROM Requests JOIN Rosters ON Rosters.ID = Requests.ID; ", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/Exchange Roster.rpt"));
            r.SetDataSource(s.Tables["Requests, Rosters"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Exchange Roster Report.rpt");
        }

        protected void Button37_Click(object sender, EventArgs e)//NewRegArchery
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Student_Sport WHERE DateJoined >= DATEADD(day, -7, GETDATE()) AND SportName = 'Archery'; ", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/NewRegArchery.rpt"));
            r.SetDataSource(s.Tables["Student_Sport"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Archery New Registration report.rpt");
        }

        protected void Button40_Click(object sender, EventArgs e)// BB New Registrations
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Student_Sport WHERE DateJoined >= DATEADD(day, -7, GETDATE()) AND SportName = 'Basketball'; ", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/NewRegArchery.rpt"));
            r.SetDataSource(s.Tables["Student_Sport"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Basket Ball New Registration report.rpt");
        }

        
        protected void Button39_Click1(object sender, EventArgs e)//Squash registrations
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Student_Sport WHERE DateJoined >= DATEADD(day, -7, GETDATE()) AND SportName = 'Squash'; ", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet s = new DataSet();
            sd.Fill(s);

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("~/Reports/NewRegSq.rpt"));
            r.SetDataSource(s.Tables["Student_Sport"]);
            CrystalReportViewer1.ReportSource = r;
            r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Squash New Registration report.rpt");
        }
    }
}