<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Receipts.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Receipts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

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
   <section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <div class="col-lg-12 text-center">
                         <h2 class= "section-title" style="color: #008080">Generate Receipts</h2>
                             </div>
                         <br />
                         <br />
                         <div class ="row">
                             
                             <div class="row">
                             <div class="d-grid gap-2 col-6 mx-auto">
                                 <asp:Button class="btn btn-outline-success btn-block btn-lg" ID="Button1" runat="server" Text="Registration Receipt" OnClick="Button1_Click" OnClientClick="target ='_blank';"/>
                              </div>
                             <div class="d-grid gap-2 col-6 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button2" runat="server" Text="Monthly Fee Receipt" OnClick="Button2_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             
                          </div>
                         

                         <div class="row">
                             <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
                         </div>

 
                             
                         </div>
                                  
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
