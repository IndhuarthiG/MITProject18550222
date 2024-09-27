<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Score list.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class= "section-title">Score Status</h2>
            </div>
        </div>
       
   <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" 
                          runat="server" 
                          ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" 
                          
                          SelectCommand="SELECT * FROM [Score]"></asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView class="table table-striped table table-bordered" 
                             ID="GridView1" runat="server" 
                             AutoGenerateColumns="False" 
                             DataSourceID="SqlDataSource1" 
                             PageSize="8">
                             <Columns>
                                 <asp:BoundField DataField="TName" 
                                     HeaderText="Tournament " 
                                     SortExpression="TName" />
                                 <asp:BoundField DataField="TeamName" 
                                     HeaderText="Team " 
                                     SortExpression="TeamName" />
                                 <asp:BoundField DataField="OpponentTeam" 
                                     HeaderText="Opponent Team" 
                                     SortExpression="OpponentTeam" />
                                 <asp:BoundField DataField="Score" 
                                     HeaderText="Score" 
                                     SortExpression="Score" />
                                 <asp:BoundField DataField="Status" 
                                     HeaderText="Status" 
                                     SortExpression="Status" />
                             </Columns>
                             <HeaderStyle ForeColor="#3366FF" 
                                 HorizontalAlign="Center" />
                         </asp:GridView>
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
