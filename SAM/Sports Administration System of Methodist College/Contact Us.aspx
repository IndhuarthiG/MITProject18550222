<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <body>
    <!-- navigation -->
<section class="fixed-top navigation">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light">
      <a class="navbar-brand" href="index.html"><img src="images/mlogo.png" alt="m logo" height="100" width="100"></a>
      <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- navbar -->
      <div class="collapse navbar-collapse text-center" id="navbar">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="HomeMetho.aspx">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="aboutUs.aspx">History</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="HouseSystesms.aspx">Houses</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Home Page.aspx">Sports Administration</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="Contact Us.aspx">Contact</a>
          </li>
        </ul>
          <%--<div class="btn-group">
  <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    Schedule
  </button>
  <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Sports</a>
      <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Matches</a>
      <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Scores</a>
      
  </div>
              
</div>--%>
         
          
        <%--<a href="#" class="btn btn-primary ml-lg-3 primary-shadow">Try Free</a>--%>
      </div>
    </nav>
  </div>
    
</section>
<!-- /navigation -->
    <form id="form1" runat="server">
        <div>
            <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
  
  <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css"/>
  <!-- themefy-icon -->
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css"/>
  <!-- slick slider -->
  <link rel="stylesheet" href="plugins/slick/slick.css"/>
  <!-- venobox popup -->
  <link rel="stylesheet" href="plugins/Venobox/venobox.css"/>
  <!-- aos -->
  <link rel="stylesheet" href="plugins/aos/aos.css"/>
  <!--Fontawesome-->
    <link href="Fontawesome/css/all.css" rel="stylesheet" />

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet"/>
  
  <!--Favicon-->
  <%--<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
  <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>--%>


<!-- Contact Us -->
            <section class="section Contact mb-0" id="Contact">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-title" style="color: #006D57">Contact Us</h2>
          <div class="row contact-bg p-5 rounded mb-0">
            <div class="col-lg-7 mb-4 mb-lg-0">
                <div class="row">
                             
                            <div class="col-lg-7 mb-4 mb-lg-0">
                               <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   
                                       ID="TextBox1" runat="server" 
                                       placeholder="Your Name" 
                                       Width="580px"></asp:TextBox>
                              </div> 
                                <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   
                                        ID="TextBox2" runat="server" 
                                        placeholder="Your Email" Width="580px"></asp:TextBox>
                              </div> 
                                <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox7" runat="server" placeholder="Subject" Width="580px"></asp:TextBox>
                              </div> 
                                <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox8" runat="server" placeholder="Your Message" Width="580px" TextMode="MultiLine"></asp:TextBox>
                              </div> 
                             </div>
                                                
                         </div>
                <div class="d-grid gap-2">
                                  <asp:Button class="btn btn-info btn-lg btn-block" 
                                        ID="Button2" runat="server" 
                                        Text="SEND MESSAGE" /> 
                                        
                                </div>
            </div>
  
            <div class="col-lg-5">
                <p class="mb-5">If you have more inquiries please don't hestitate to drop us a message or contact us on our hotline.</p>
                <a href="tel:+442081446356" class="text-color h5 d-block">+44 20 8144 6356</a>
                <a href="mailto:sports.metho@gmail.com" class="mb-5 text-color h5 d-block">sports.metho@gmail.com</a>
                <p>No 250 Galle road, </br> Kollupitiya</p>
            </div>
        </div>
          </div>
        </div>
      </div>
    </section>
<!-- /Contact Us -->



<!-- footer -->
<footer class="footer-section footer" style="background-image: url(Slideshow1/fourth image.jpg);">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 text-center text-lg-left mb-4 mb-lg-0">
        <!-- logo -->
        <a href="index.html">
          <img class="img-fluid" src="Slideshow1/fourth image.jpg" alt="logo">
        </a>
      </div>
      <!-- footer menu -->
      <nav class="col-lg-8 align-self-center mb-5">
        <ul class="list-inline text-lg-right text-center footer-menu">
          <li class="list-inline-item active"><a href="index.html"> ©2023 Methodist College</a></li>
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
</footer>
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
        </div>
    </form>
</body>
</body>
</html>
