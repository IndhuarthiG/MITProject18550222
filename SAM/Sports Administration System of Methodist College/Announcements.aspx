<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Announcements.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Announcements" %>
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
                <h2 class= "section-title">Announcements</h2>
            </div>
        </div>
       
   <div class="row">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       <br />
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
           <ContentTemplate>
               <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderColor="#0099CC" CssClass="auto-style" Height="500px" Visible="False" Width="1000px">
                   <div class="row">
                       <div class="col-4">
                           &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Size="Large"></asp:Label>
                       </div>
                       </div>
                       <br />
                       
                       <div class="row">
                           <div class="col-4">
                           &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Dear Members,"></asp:Label>
                       </div>
                       </div>
                       <br />
                   <div class="row">
                       
                       <div class="col-8">
                           &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Large"></asp:Label>
                       </div>
                   </div>
                   <br />
                   <div class="row">
                           <div class="col-4">
                           &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Regards,"></asp:Label><br />
                       </div>
                       </div>
                   <div class="row">
                           <div class="col-4">
                           &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Admin."></asp:Label><br />
                       </div>
                       </div>
                   <br />
                   &nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Text="View All Notifications" NavigateUrl="~/All notifications.aspx"></asp:HyperLink>
               </asp:Panel>
           </ContentTemplate>
       </asp:UpdatePanel>
       <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
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
