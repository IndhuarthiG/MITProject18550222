<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Complaints.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Complaints" %>
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
                         
                         <br />
                         <br />
                         <div class="row">
                             <div class="row">
                <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h2 style="color: #008080">Complaints</h2>
                        </center>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-md-4">
                        <label style="font-family: Poppins; font-size: large; font-weight: normal;">Date</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Height="60" width="200" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true" ReadOnly="True"></asp:TextBox>
                               

                           </div>
                        </div>
                     </div>
                      <div class="col-md-6">
                        <label style="font-family: Poppins; font-size: large; font-weight: normal;">Message</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Height="60" width="500" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                   runat="server" 
                                   ErrorMessage="Type Message" 
                                   ControlToValidate="TextBox1" 
                                   ForeColor="#CC0000"></asp:RequiredFieldValidator>

                           </div>
                        </div>
                     </div>
                     
                      
                  </div>
                   
                   <br />

                   <div class="row">
                      <div class="d-grid gap-2 col-6 mx-auto text-left">
                        <asp:Button ID="Button2" 
                              class="btn btn-primary ml-lg-3 primary-shadow" 
                              runat="server" Text="Add" OnClick="Button2_Click"/> 
                              
                              
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
