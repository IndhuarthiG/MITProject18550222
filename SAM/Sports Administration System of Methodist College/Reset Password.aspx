<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reset Password.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Reset_Password" %>
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
    
        <div>
            <!-- contact -->
<section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class= "section-title">Reset Password</h2>
                
            </div>
        </div>
       
   <div class="row contact-bg p-5 rounded mb-0">
       <img src="images/reset.png" height="444x" width="450px" />
       &nbsp;
            <div class="col-lg-6 mb-4 mb-lg-0">
                <form action="#">
                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox2" runat="server" placeholder="User Name" Height="60" TextMode="SingleLine"></asp:TextBox>
                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox3" runat="server" placeholder="New Password" Height="60" TextMode="Password"></asp:TextBox>
                       
                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox1" runat="server" placeholder="Confirm Password" Height="60" TextMode="Password"></asp:TextBox>
                    
                            <center><asp:Button ID="Button1" 
                            class="btn btn-info" 
                            runat="server" Text="Reset" 
                                    OnClick="Button1_Click"/></center> 
                    
                </form>
            </div>
            
    </div>
        <div class="col-lg-5">
       </div>
</div>
    <!-- background shapes -->
    <img class="contact-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
    <img class="contact-bg-2 left-right-animation" src="images/background-shape/green-half-cycle.png" alt="background-shape">
    <img class="contact-bg-3 up-down-animation" src="images/background-shape/green-dot.png" alt="background-shape">
    <img class="contact-bg-4 left-right-animation" src="images/background-shape/service-half-cycle.png" alt="background-shape">
    <img class="contact-bg-5 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
</section>
<!-- /contact -->
        </div>
    
    <!-- /footer -->

<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<!-- slick slider -->
<script src="plugins/slick/slick.min.js"></script>
<!-- venobox -->
<script src="plugins/Venobox/venobox.min.js"></script>
<!-- aos -->
<script src="plugins/aos/aos.js"></script>
<!-- Main Script -->
<script src="js/script.js"></script>
</asp:Content>
