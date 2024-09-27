﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Roster.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Roster" %>
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
                         <center><h3 style="color:#9900CC">Sports Roster</h3></center>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-12 mx-auto text-left">
                        <asp:TextBox ID="TextBox6" 
                             CssClass="form-control" runat="server" 
                             placeholder="Enter Code" Height="60px" 
                             Width="500px" 
                                     OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                      </div>
                         </div>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-danger btn-block btn-lg" 
                                     ID="Button3" runat="server" 
                                     Text="Archery" Visible="False" 
                                     OnClick="Button3_Click"/> 
                                     
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" 
                                     ID="Button4" runat="server" 
                                     Text="Athletics" Visible="False" 
                                     OnClick="Button4_Click"/> 
                                     
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-primary btn-block btn-lg" 
                                     ID="Button5" runat="server" 
                                     Text="Badminton" Visible="False" 
                                     OnClick="Button5_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-success btn-block btn-lg" 
                                     ID="Button6" runat="server" 
                                     Text="Basketball" Visible="False" 
                                     OnClick="Button6_Click"/>
                             </div>
                          </div>
                         <br />
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-warning btn-block btn-lg" 
                                     ID="Button7" runat="server" 
                                     Text="Chess" Visible="False" 
                                     OnClick="Button7_Click"/>
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" ID="Button8" runat="server" Text="Netball" Visible="False" OnClick="Button8_Click" />
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button9" runat="server" Text="Squash" Visible="False" OnClick="Button9_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-dark btn-block btn-lg" ID="Button10" runat="server" Text="Swimming" Visible="False" OnClick="Button10_Click"/>
                             </div>
                          </div>
                         <br />
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-warning btn-block btn-lg" ID="Button1" runat="server" Text="Tennis" Visible="False" OnClick="Button1_Click"/>
                              </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Table Tennis" Visible="False" OnClick="Button2_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-success btn-block btn-lg" ID="Button11" runat="server" Text="Volleyball" Visible="False" OnClick="Button11_Click"/>
                             </div>
                             
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
