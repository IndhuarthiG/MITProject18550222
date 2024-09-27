using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Receipts : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DataTable GetLastSavedRecord()
        {
            //Your database connection and query logic here
            //Example:
            //SqlConnection con = new SqlConnection(strcon);
            string query = "SELECT TOP 1 * FROM RegReceipt ORDER BY DateOfPayment DESC";

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand command = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt;
                }
            }
        }
        private void DisplayCrystalReport(DataTable dt)
        {
            //Load your Crystal Report
            ReportDocument reportDocument = new ReportDocument();
            reportDocument.Load(Server.MapPath("~/Reports/RegReceipt.rpt"));

            //Set the data source for the report

           reportDocument.SetDataSource(dt);

            //Set the Crystal Report Viewer to display the report

           CrystalReportViewer1.ReportSource = reportDocument;
           reportDocument.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Registration Receipt ");

        }

        protected void Button1_Click(object sender, EventArgs e)//Registration Receipts
        {
            DataTable dt = GetLastSavedRecord();
            DisplayCrystalReport(dt);
        }

        protected void Button2_Click(object sender, EventArgs e)//Monthly Receipts
        {
            DataTable dt2 = GetLastSavedRecord2();
            DisplayCrystalReport2(dt2);
        }

        private DataTable GetLastSavedRecord2()
        {
            //Your database connection and query logic here
            //Example:
            //SqlConnection con = new SqlConnection(strcon);
            string query = "SELECT TOP 1 * FROM MonthlyReceipt ORDER BY Date DESC";

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand command2 = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataAdapter da2 = new SqlDataAdapter(command2);
                    DataTable dt2 = new DataTable();
                    da2.Fill(dt2);
                    return dt2;
                }
            }
        }

        private void DisplayCrystalReport2(DataTable dt2)
        {
            //Load your Crystal Report
            ReportDocument reportDocument = new ReportDocument();
            reportDocument.Load(Server.MapPath("~/Reports/MonthlyReceipt.rpt"));

            //Set the data source for the report

            reportDocument.SetDataSource(dt2);

            //Set the Crystal Report Viewer to display the report

            CrystalReportViewer1.ReportSource = reportDocument;
            reportDocument.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Monthly Receipt");

        }
    }
}