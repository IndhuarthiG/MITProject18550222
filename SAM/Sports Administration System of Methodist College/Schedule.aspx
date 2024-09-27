<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Schedule" %>
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
                <h2 style="color:#339966" class= "section-title">Sports Schedule for the Month</h2>
            </div>
        </div>
       
    <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-danger btn-block btn-lg" 
                                     ID="Button3" runat="server" 
                                     Text="Archery" Visible="True" 
                                     OnClick="Button3_Click" /> 
                                     
                                     
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" 
                                     ID="Button4" runat="server" 
                                     Text="Athletics" Visible="True" 
                                     OnClick="Button4_Click" /> 
                                     
                                     
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-primary btn-block btn-lg" 
                                     ID="Button5" runat="server" 
                                     Text="Badminton" Visible="True" onclick="Button5_Click"/> 
                                     
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-success btn-block btn-lg" 
                                     ID="Button6" runat="server" 
                                     Text="Basketball" Visible="True" OnClick="Button6_Click" /> 
                                     
                             </div>
                          </div>
                         <br />
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-warning btn-block btn-lg" 
                                     ID="Button7" runat="server" 
                                     Text="Chess" Visible="True" OnClick="Button7_Click"/> 
                                     
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-info btn-block btn-lg" ID="Button8" runat="server" Text="Netball" Visible="True" OnClick="Button8_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button9" runat="server" Text="Squash" Visible="True" OnClick="Button9_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-dark btn-block btn-lg" ID="Button10" runat="server" Text="Swimming" Visible="True" OnClick="Button10_Click"/>
                             </div>
                          </div>
                         <br />
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-outline-success btn-block btn-lg" ID="Button1" runat="server" Text="Tennis" Visible="True" OnClick="Button1_Click"/>
                              </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-outline-info btn-block btn-lg" ID="Button2" runat="server" Text="Table Tennis" Visible="True" OnClick="Button2_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-outline-danger btn-block btn-lg" ID="Button11" runat="server" Text="Volleyball" Visible="True" OnClick="Button11_Click"/>
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

