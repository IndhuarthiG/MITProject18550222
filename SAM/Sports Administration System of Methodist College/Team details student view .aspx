<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Team details student view .aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Team_details_student_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- mobile responsive meta -->
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section class="section-lg service-bg-image position-relative" style="background-image: url(images/backgrounds/service-page-bg.png);">
        <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <center><h3 style="color:#339966">Teams participant</h3></center>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-9 text-left">
                        <asp:TextBox ID="TextBox6" 
                             CssClass="form-control" runat="server" 
                             placeholder="Enter Admission No" Height="60px" 
                             Width="500px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                      </div>
                             
                         </div>
                         <br />
                         <br />
                         <div class="row">
                             
                             <asp:GridView class="table table-striped table table-bordered" 
                             ID="GridView1" runat="server" 
                             AutoGenerateColumns="False" 
                             PageSize="8" DataKeyNames="ID" 
                             AllowSorting="True" ShowHeaderWhenEmpty="true" EmptyDataText="Enter your Admission No!">
                             <Columns>
                                 <asp:BoundField DataField="ID" 
                                     HeaderText="ID" InsertVisible="False" 
                                     ReadOnly="True" SortExpression="ID" 
                                     Visible="False" />
                                 <asp:BoundField DataField="AdmissionNo" 
                                     HeaderText="AdmissionNo" 
                                     SortExpression="AdmissionNo" />
                                 <asp:BoundField DataField="FirstName" 
                                     HeaderText="FirstName" 
                                     SortExpression="FirstName" />
                                 <asp:BoundField DataField="Surname" 
                                     HeaderText="Surname" 
                                     SortExpression="Surname" />
                                 <asp:BoundField DataField="Team_ID" 
                                     HeaderText="Team_ID" 
                                     SortExpression="Team_ID" 
                                     Visible="False" />
                                 <asp:BoundField DataField="TeamName" 
                                     HeaderText="TeamName" 
                                     SortExpression="TeamName" />
                                 <asp:BoundField DataField="Category" 
                                     HeaderText="Category" 
                                     SortExpression="Category" />
                                 <asp:BoundField DataField="Position" 
                                     HeaderText="Position" 
                                     SortExpression="Position" />

                             </Columns>
                             <HeaderStyle HorizontalAlign="Center" 
                                 Font-Bold="True" ForeColor="#339966" />
                         </asp:GridView>
                         </div>
                         
            </div>
        </div>
     </div>
  </div>
</div>
    
    <!-- background shapes -->
    <img class="service-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="">
    <img class="service-bg-2 left-right-animation" src="images/background-shape/seo-half-cycle.png" alt="">
    <img class="service-bg-3 up-down-animation" src="images/background-shape/team-bg-triangle.png" alt="">
    <img class="service-bg-4 left-right-animation" src="images/background-shape/green-dot.png" alt="">
    <img class="service-bg-5 up-down-animation" src="images/background-shape/team-bg-triangle.png" alt="">
</section>
</asp:Content>

