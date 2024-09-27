<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Responses.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Responses" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <!-- themefy-icon -->
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
  <!-- slick slider -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <!-- venobox popup -->
  <link rel="stylesheet" href="plugins/Venobox/venobox.css">
  <!-- aos -->
  <link rel="stylesheet" href="plugins/aos/aos.css">

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="images/favicon.ico" type="image/x-icon">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 style="color:#9900CC" class= "section-title">Responses</h2>

                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" 
                        runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" 
                        OldValuesParameterFormatString="original_{0}" 
                        
                        
                        
                        SelectCommand="SELECT Rosters.Date AS ForDate, Requests.SportName, Teachers.FirstName, Teachers.Surname, Requests.ReStatus AS Response, Requests.Addedby AS Requested, Requests.ExchangeWith FROM Requests INNER JOIN Teachers ON Teachers.Teacher_ID = Requests.Teacher_ID INNER JOIN Rosters ON Rosters.ID = Requests.ID">
                    </asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView class="table table-striped table table-bordered" 
                             ID="GridView1" runat="server" 
                             AutoGenerateColumns="False" 
                             DataSourceID="SqlDataSource1" 
                             PageSize="8" 
                             AllowSorting="True" 
                             BorderStyle="Double" 
                             AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
                             <Columns>
                                 <asp:TemplateField HeaderText="ForDate" 
                                     SortExpression="ForDate">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox1" 
                                             runat="server" 
                                             Text='<%# Bind("ForDate", "{0:MM/dd/yyyy}") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label1" runat="server" 
                                             Text='<%# Bind("ForDate", "{0:MM/dd/yyyy}") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="SportName" 
                                     SortExpression="SportName">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox2" 
                                             runat="server" 
                                             Text='<%# Bind("SportName") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label2" runat="server" 
                                             Text='<%# Bind("SportName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="FirstName" 
                                     SortExpression="FirstName">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox3" 
                                             runat="server" 
                                             Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label3" runat="server" 
                                             Text='<%# Bind("FirstName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Surname" 
                                     SortExpression="Surname">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox4" 
                                             runat="server" 
                                             Text='<%# Bind("Surname") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label4" runat="server" 
                                             Text='<%# Bind("Surname") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Response" 
                                     SortExpression="Response">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox5" 
                                             runat="server" 
                                             Text='<%# Bind("Response") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label5" runat="server" 
                                             Text='<%# Bind("Response") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Requested by" 
                                     SortExpression="Requested">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox6" 
                                             runat="server" 
                                             Text='<%# Bind("Requested") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label6" runat="server" 
                                             Text='<%# Bind("Requested") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="ExchangeWith" 
                                     SortExpression="ExchangeWith">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox7" 
                                             runat="server" 
                                             Text='<%# Bind("ExchangeWith") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label7" runat="server" 
                                             Text='<%# Bind("ExchangeWith") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>

                             </Columns>
                             <HeaderStyle ForeColor="#9900CC" 
                                 HorizontalAlign="Center" />
                         </asp:GridView>
                     </div>
                     
                  </div>
            </div>
        </div>
      
   
        
</div>
    <!-- background shapes -->
    <img class="contact-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
    <img class="contact-bg-2 left-right-animation" src="images/background-shape/green-half-cycle.png" alt="background-shape">
    <img class="contact-bg-3 up-down-animation" src="images/background-shape/green-dot.png" alt="background-shape">
    <img class="contact-bg-4 left-right-animation" src="images/background-shape/service-half-cycle.png" alt="background-shape">
    <img class="contact-bg-5 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
</section>
</asp:Content>
