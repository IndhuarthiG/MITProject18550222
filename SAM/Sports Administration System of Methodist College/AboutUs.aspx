<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.AboutUs1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
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

 

<!-- hero area -->
<%--<section class="hero-section hero" data-background="" style="background-image: url(images/hero-area/banner-bg.png);">--%>
  <section class ="hero-section hero">
  <div class="container">
     <div class="row">
        <div class="col-lg-12 text-center zindex-1">
        <h2 class="mb-3" style="color: #006D57">Our History</h2>
        <%--<p class="mb-4">Check our Sport activities</p>--%>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      <%--<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="10"></li>--%>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="History/founder.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="History/history 1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="History/history 2.jpg" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="History/history 3.jpg" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="History/Wai-Tsing-Paktsun.jpg" class="d-block w-100" alt="...">
    </div>
     <%-- <div class="carousel-item">
      <img src="Slideshow/Netball.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="Slideshow/Squash.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="Slideshow/swimming.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="Slideshow/Table tennis.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="Slideshow/Tennis.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="Slideshow/Volleyball.png" class="d-block w-100" alt="...">
    </div>--%>
  </div>
  <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </button>
</div>
            
            
            <br />
            <br />
        <%--<a href="Sports info.aspx" class="btn btn-info btn-lg">Explore us</a>--%>
        <p>In 1866, Miss Catherine Scott, a British missionary came to Sri Lanka (then known as Ceylon) and started the "Kollupitiya Girl's English School" in a large room with barely 40 girls. In 1883, when Miss Scott left, the school was registered as a "Grant-in-Aid" English high school with 99 students and renamed as "Kollupitiya Girls High School."</p>
            <br />
            <p>1915 The School was recognized as a fully organized Secondary School and its name was changed to Methodist College. In 1917, the 1st Colombo (Methodist College) Guide Company was founded by Ms. Choate and captained by Ms. Shire. In 1919 the Old Girls Association was established and this organization now has branches in London, Melbourne, Sydney, Toronto, Victoria and Southern California.  </p>
      <p>In 1930 the House system was introduced in the school with four houses Scott, Choate, Rigby and Restarick. During the 1950s, Framjee House (on Station Road) was bought by the School. The Junior Day Students moved in downstairs. During the mid 1950s, two new Houses were inaugurated – Park House and Shire House. The Auditorium was declared open on June 24, 1988, by the Rev. Harold Fernando, President of the Methodist Conference. </p>
        </div>
    </div>
  </div>
  <!-- background shapes -->
  <%--<div id="scene">
    <img class="img-fluid hero-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="">
    <img class="img-fluid hero-bg-2 left-right-animation" src="images/background-shape/seo-ball-1.png" alt="">
    <img class="img-fluid hero-bg-3 left-right-animation" src="images/background-shape/seo-half-cycle.png" alt="">
    <img class="img-fluid hero-bg-4 up-down-animation" src="images/background-shape/green-dot.png" alt="">
    <%--<img class="img-fluid hero-bg-5 left-right-animation" src="images/background-shape/blue-half-cycle.png" alt="">--%>
    <%--<img class="img-fluid hero-bg-6 up-down-animation" src="images/background-shape/seo-ball-1.png" alt="">
    <img class="img-fluid hero-bg-7 left-right-animation" src="images/background-shape/yellow-triangle.png" alt="">
    <%--<img class="img-fluid hero-bg-8 up-down-animation" src="images/background-shape/service-half-cycle.png" alt="">--%>
    <%--<img class="img-fluid hero-bg-9 up-down-animation" src="images/background-shape/team-bg-triangle.png" alt="">--%>--%>
  </div>--%>
</section>
<!-- /hero-area -->



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

</html>
