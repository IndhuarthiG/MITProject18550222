<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HouseSystesms.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.AboutUs" %>

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


<!-- Houses -->
<section class="section Houses mb-0">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-title" style="color: #006D57">Houses of Methodist College</h2>
        <p class="mb-100">There are six houses in Methodist College. Each of these six founders of Methodist College, were noble examples of willing sacrifice and valiant endeavour. To them Methodist College owes its very existence and much of its earlier progress. It is therefore fitting that they will be remembered always by the Houses that bear their names. They are as follows:</p>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-comments-smiley feature-icon mr-4"></i>--%>
              
                  <img src="Slideshow1/Scottlogo.png" width="100" height="100" />
          </div>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
          <div>
            <h4 style="color: #ff6a00">Scott House</h4>
            <p>Scott House was named after Miss Catherine Scott founder/principal of Methodist College.</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-pulse feature-icon mr-4"></i>--%>
              <img src="Slideshow1/Choatelogo.png" width="100" height="100"/>
          </div>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
          <div>
            <h4 style="color: #973a3a">Choate House</h4>
            <p>Choate House was named after Miss Mary Choate who became principal in 1894. Miss Choate was at Methodist College for a long period of 33 years, 26 of which she served as Principal. It is interesting to note that she always were a brown dress - and perhaps that is how the House got its colour.</p>
          </div>
        </div>
      </div>
        <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
           <%-- <i class="ti-stats-up feature-icon mr-4"></i>--%>
                <img src="Slideshow1/Rigbylogo.png" width="100" height="100"/>   
          </div>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
          <div>
            <h4 style="color: #ffd800">Rigby House</h4>
            <p>Rigby House was named after the Rev Rigby who was the manager of the school during two different periods. When he first came, Methodist College was a small school, ill-housed with poor facilities. But he believed we had a future and worked towards building new classrooms, which dream he achieved in 1916.</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-eye feature-icon mr-4"></i>--%>
              <img src="Slideshow1/Restericklogo.png" width="100" height="100"/>
          </div>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
          <div>
            <h4 style="color: #ff0000">Resterick House</h4>
            <p>Restarick house was named after Rev Restarick, Manager of the school for a period of 13 years. He too did a lot for Methodist College and it was mainly due to his efforts that the present Hostel was built.</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-rocket feature-icon mr-4"></i>--%>
              <img src="Slideshow1/Shirelogo.png" width="100" height="100"/>
          </div>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
          <div>
            <h4 style="color: #b200ff">Shire House</h4>
            <p>Shire House was named after Miss Elsie Shire who joined the school as a teacher in 1909 and later became vice-principal. She served the school selflessly for a period of 33 years.</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-alarm-clock feature-icon mr-4"></i>--%>
              <img src="Slideshow1/Parklogo.png" width="100" height="100"/>
          </div>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
          <div>
            <h4 style="color: #808080">Park House</h4>
            <p>Park House was named after Miss Helen Park, who came to Methodist College as vice-principal in 1912. Miss Park too completed 31 years of selfless devotion to the school, and retired as principal in 1943.</p>
          </div>
        </div>
      </div>
        <!-- feature item -->
      <%--<div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <i class="ti-medall feature-icon mr-4"></i>
          </div>
          <div>
            <h4>Leadership Skills</h4>
            <p>Becoming captain or aspiring to become one, naturally teaches children how to become good leaders – how to talk to other teammates, manage team emotions, take one for the team, etc</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <i class="ti-face-smile feature-icon mr-4"></i>
          </div>
          <div>
            <h4>Self-confidence and self-esteem </h4>
            <p>Several studies suggest playing sports develops a child’s self-confidence and self-esteem.</p>
          </div>
        </div>
      </div>--%>
    </div>
  </div>
  <img class="feature-bg-1 up-down-animation" src="images/background-shape/feature-bg-1.png" alt="bg-shape">
  <img class="feature-bg-2 left-right-animation" src="images/background-shape/feature-bg-2.png" alt="bg-shape">
</section>
<!-- /Benefits -->

<!-- marketing -->

<!-- /newsletter -->

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
