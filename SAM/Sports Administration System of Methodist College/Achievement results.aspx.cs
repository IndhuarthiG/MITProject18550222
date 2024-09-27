using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;

namespace Sports_Administration_System_of_Methodist_College
{
    public partial class Achievement_results : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string AdmNo = HttpUtility.ParseQueryString(HttpContext.Current.Request.Url.AbsoluteUri).Get(0);
            SqlConnection con = new SqlConnection(strcon);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("Select Students.FirstName, Students.Surname,Achievements.Year,Achievements.Type,Achievements.Description from Achievements Inner Join Students ON Achievements.AdmissionNo = Students.AdmissionNo where Achievements.AdmissionNo =" + AdmNo, con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        public class PageEventHelper : PdfPageEventHelper
        {
            public override void OnEndPage(PdfWriter writer, Document document)
            {
                // Add Page Header
                PdfPTable headerTable = new PdfPTable(1);
                headerTable.TotalWidth = document.PageSize.Width;
                PdfPCell headerCell = new PdfPCell(new Phrase("SASMC"));
                headerCell.Border = 0; // Remove border
                Font headerCellFont = FontFactory.GetFont(FontFactory.HELVETICA, 09, new iTextSharp.text.BaseColor(System.Drawing.ColorTranslator.FromHtml("#0a2a0a")));
                headerCell.HorizontalAlignment = Element.ALIGN_LEFT;
                headerTable.AddCell(headerCell);
                headerTable.WriteSelectedRows(0, -1, 0, document.PageSize.Height - 5, writer.DirectContent);

               
                // Add Page Footer
                PdfPTable footerTable = new PdfPTable(1);
                footerTable.TotalWidth = document.PageSize.Width;
                PdfPCell footerCell = new PdfPCell(new Phrase("This is a computer generated report. It requires no signature"));
                footerCell.Border = 0; // Remove border
                footerCell.HorizontalAlignment = Element.ALIGN_RIGHT;
                footerTable.AddCell(footerCell);
                footerTable.WriteSelectedRows(0, -1, 0, document.BottomMargin + footerTable.TotalHeight + 5, writer.DirectContent);

            }
        }
            protected void Button2_Click(object sender, EventArgs e)//back
        {
            Response.Redirect("Achievements.aspx");
        }

        
        protected void Button1_Click(object sender, EventArgs e)//report
        {
            //// Create a new document
            //Document document = new Document(PageSize.A4, 50, 50, 25, 25);

            //// Specify the path where you want to save the PDF
            //string filePath = Server.MapPath("~/Download Receipts/Student Sports Achievement Report.pdf");
            //PdfWriter writer = PdfWriter.GetInstance(document, new FileStream(filePath, FileMode.Create));

            //document.Open();

            //// Create a PDF table
            //PdfPTable table = new PdfPTable(2); // Number of columns

            //// Add header row
            //foreach (TableCell cell in GridView1.HeaderRow.Cells)
            //{
            //    PdfPCell pdfCell = new PdfPCell(new Phrase(cell.Text));
            //    pdfCell.BackgroundColor = BaseColor.LIGHT_GRAY;
            //    table.AddCell(pdfCell);
            //}

            //// Add data rows
            //foreach (GridViewRow row in GridView1.Rows)
            //{
            //    foreach (TableCell cell in row.Cells)
            //    {
            //        table.AddCell(new Phrase(cell.Text));
            //    }
            //}

            //// Add the table to the document
            //document.Add(table);

            //// Close the document
            //document.Close();

            //// Open the PDF in a new window
            //Response.ContentType = "application/pdf";
            //Response.AppendHeader("Content-Disposition", "inline; filename=Student Sports Achievement Report.pdf");
            //Response.TransmitFile(filePath);
            //Response.End();

            PdfPTable pdfTable = new PdfPTable(GridView1.HeaderRow.Cells.Count);
            foreach (TableCell headerCell in GridView1.HeaderRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView1.HeaderStyle.ForeColor);


                PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));
                pdfCell.BackgroundColor = new BaseColor(GridView1.HeaderStyle.BackColor);
                pdfTable.AddCell(pdfCell);

            }
            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                foreach (TableCell tableCell in gridViewRow.Cells)
                {
                    Font font = new Font();
                    font.Color = new BaseColor(GridView1.RowStyle.ForeColor);

                    PdfPCell pdfCell = new PdfPCell(new Phrase(tableCell.Text));
                    pdfCell.BackgroundColor = new BaseColor(GridView1.RowStyle.BackColor);
                    pdfTable.AddCell(pdfCell);

                }
            }

            Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDocument, HttpContext.Current.Response.OutputStream);
            pdfWriter.PageEvent = new PageEventHelper();
            //PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
            pdfDocument.Open();
            iTextSharp.text.Image PNG = iTextSharp.text.Image.GetInstance("C:/Users/USER/Documents/SAM/Sports Administration System of Methodist College/images/mlogo.png");
            PNG.ScaleToFit(30f, 30f);
            PNG.Alignment = iTextSharp.text.Image.TEXTWRAP | iTextSharp.text.Image.ALIGN_RIGHT; 
            pdfDocument.Add(PNG);
            Font headingFont = FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 22, new iTextSharp.text.BaseColor(System.Drawing.ColorTranslator.FromHtml("#0a2a0a")));
            //Font headingFont = FontFactory.GetFont("Poppins-Bold", 22, new iTextSharp.text.BaseColor(System.Drawing.ColorTranslator.FromHtml("#006400")));
            Paragraph heading = new Paragraph("Student Sports Achievement Report ", headingFont);
            heading.Alignment = Element.ALIGN_CENTER;
            //heading.SpacingBefore = 50f;
            //heading.SpacingAfter = 35f;
            heading.SpacingBefore = 20f;
            heading.SpacingAfter = 25f;
            pdfDocument.Add(heading);
            pdfDocument.Add(pdfTable);
            pdfDocument.Close();
            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;filename=Student Sports Achievement Report.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();

        }

        

       
    }
}