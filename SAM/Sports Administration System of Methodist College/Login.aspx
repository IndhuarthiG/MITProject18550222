<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Login" %>
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
<!-- navigation -->
<%--<section class="fixed-top navigation">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light">
      <a class="navbar-brand" href="Home.aspx"><h1 class="text-info">SASMC</h1><img src="images/logo.png" alt="logo"></a>
      <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- navbar -->
      <div class="collapse navbar-collapse text-center" id="navbar">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link page-scroll" href="index.html#feature">Feature</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="service.html">Service</a>
          </li>
          <li class="nav-item">
            <a class="nav-link page-scroll" href="index.html#team">Team</a>
          </li>
          <li class="nav-item">
            <a class="nav-link page-scroll" href="index.html#pricing">Pricing</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>
        </ul>
        <a href="#" class="btn btn-primary ml-lg-3 primary-shadow">Try Free</a>
      </div>
    </nav>
  </div>
</section>--%>
<!-- /navigation -->

<!-- contact -->
<section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class= "section-title">Login</h2>
            </div>
        </div>
       
   <div class="row contact-bg p-5 rounded mb-0">
       <img src="images/login2.png" height="300px" width="400px" />
       &nbsp;
            <div class="col-lg-6 mb-4 mb-lg-0">
                <form action="#">
                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox3" runat="server" placeholder="Username" Height="60" TextMode="SingleLine"></asp:TextBox>
                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox1" runat="server" placeholder="Password" Height="60" TextMode="Password"></asp:TextBox>
                    <%--<input type="text" class="form-control mb-3" id="Username" name="Username" placeholder="Username"/>--%>
                    <%--<input type="password" class="form-control mb-3" id="password" name="password" placeholder="Password"/>--%>
                    <%--<input type="text" class="form-control mb-3" id="subject" name="subject" placeholder="Subject">
                    <textarea name="message" id="message" class="form-control mb-3" placeholder="Your Message"></textarea>--%>
                    
                    <center><asp:Button ID="Button2" 
                            class="btn btn-info" 
                            runat="server" Text="Login" OnClick="Button2_Click"/></center> 
                              
                    <div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<%--<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me"/>--%>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						</div>
                    <br />
                    <div class="new-acount">
							<a href="Forgot Password.aspx">Forgot password?</a>
                     </div> 
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

<!-- footer -->
<%--<footer class="footer-section footer" style="background-image: url(images/backgrounds/footer-bg.png);">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 text-center text-lg-left mb-4 mb-lg-0">
        <!-- logo -->
        <a href="index.html">
          <img class="img-fluid" src="images/logo.png" alt="logo">
        </a>
      </div>
      <!-- footer menu -->
      <nav class="col-lg-8 align-self-center mb-5">
        <ul class="list-inline text-lg-right text-center footer-menu">
          <li class="list-inline-item active"><a href="index.html">Home</a></li>
          <li class="list-inline-item"><a class="page-scroll" href="#feature">Feature</a></li>
          <li class="list-inline-item"><a href="about.html">About</a></li>
          <li class="list-inline-item"><a class="page-scroll" href="#team">Team</a></li>
          <li class="list-inline-item"><a class="page-scroll" href="#pricing">Pricing</a></li>
          <li class="list-inline-item"><a href="contact.html">Contact</a></li>
        </ul>
      </nav>
      <!-- footer social icon -->
      <nav class="col-12">
        <ul class="list-inline text-lg-right text-center social-icon">
          <li class="list-inline-item">
            <a class="facebook" href="#"><i class="ti-facebook"></i></a>
          </li>
          <li class="list-inline-item">
            <a class="twitter" href="#"><i class="ti-twitter-alt"></i></a>
          </li>
          <li class="list-inline-item">
            <a class="linkedin" href="#"><i class="ti-linkedin"></i></a>
          </li>
          <li class="list-inline-item">
            <a class="black" href="#"><i class="ti-github"></i></a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</footer>--%>
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
