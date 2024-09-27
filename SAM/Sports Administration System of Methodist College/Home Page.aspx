<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
  <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
 

<!-- hero area -->
<section class="hero-section hero" data-background="" style="background-image: url(images/hero-area/banner-bg.png);">
  <div class="container">
     <div class="row">
        <div class="col-lg-12 text-center zindex-1">
        <h2 class="mb-3">Welcome to Sports Administration System of Methodist College</h2>
        <p class="mb-4">Check our Sport activities</p>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="10"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Slideshow/archery.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Slideshow/Athletics.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Slideshow/Badminton.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="Slideshow/Basketball.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="Slideshow/chess-4.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
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
    </div>
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
        <a href="Sports info.aspx" class="btn btn-info btn-lg">Explore us</a>
        
      </div>
    </div>
  </div>
  <!-- background shapes -->
  <div id="scene">
    <img class="img-fluid hero-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="">
    <img class="img-fluid hero-bg-2 left-right-animation" src="images/background-shape/seo-ball-1.png" alt="">
    <img class="img-fluid hero-bg-3 left-right-animation" src="images/background-shape/seo-half-cycle.png" alt="">
    <img class="img-fluid hero-bg-4 up-down-animation" src="images/background-shape/green-dot.png" alt="">
    <%--<img class="img-fluid hero-bg-5 left-right-animation" src="images/background-shape/blue-half-cycle.png" alt="">--%>
    <img class="img-fluid hero-bg-6 up-down-animation" src="images/background-shape/seo-ball-1.png" alt="">
    <img class="img-fluid hero-bg-7 left-right-animation" src="images/background-shape/yellow-triangle.png" alt="">
    <%--<img class="img-fluid hero-bg-8 up-down-animation" src="images/background-shape/service-half-cycle.png" alt="">--%>
    <img class="img-fluid hero-bg-9 up-down-animation" src="images/background-shape/team-bg-triangle.png" alt="">
  </div>
</section>
<!-- /hero-area -->

<!-- Benefits -->
<section class="section Benefits mb-0" id="Benefits">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-title">Benefits of Playing Sports</h2>
        <p class="mb-100">Some of the many benefits of sport participation for children include:</p>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <i class="ti-comments-smiley feature-icon mr-4"></i>
          </div>
          <div>
            <h4>Reduced risk of obesity</h4>
            <p>Fitness helps in preventing fat to be accumulated in the body and reducing the risk of obesity and obesity-related diseases.</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <i class="ti-pulse feature-icon mr-4"></i>
          </div>
          <div>
            <h4>Increased cardiovascular fitness</h4>
            <p>The heart becomes stronger and more efficient when children play sports. A strong heart means a reduced risk of heart disease.</p>
          </div>
        </div>
      </div>
        <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <i class="ti-stats-up feature-icon mr-4"></i>
                   
          </div>
          <div>
            <h4>Healthy growth of bones, muscles, ligaments and tendons</h4>
            <p>Physical stress caused by exercise helps muscles, ligaments, tendons, and bones to become healthier and stronger.</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <i class="ti-eye feature-icon mr-4"></i>
          </div>
          <div>
            <h4>Improved coordination and balance</h4>
            <p>Playing any sport requires some hand-eye and foot-eye co-ordination. As children learn a new sport, their co-ordination and balance improve remarkably.</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <i class="ti-rocket feature-icon mr-4"></i>
          </div>
          <div>
            <h4>Improves energy levels</h4>
            <p>Regular exercise makes people more energetic in general and reduces the likelihood of getting tired during the day.</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <i class="ti-alarm-clock feature-icon mr-4"></i>
          </div>
          <div>
            <h4>Improved sleep</h4>
            <p>Physical exertion improves sleep quality and duration. It also reduces the risk of developing sleep disorders such as sleep apnea, insomnia and restless leg syndrome.</p>
          </div>
        </div>
      </div>
        <!-- feature item -->
      <div class="col-md-6 mb-80">
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
      </div>
    </div>
  </div>
  <img class="feature-bg-1 up-down-animation" src="images/background-shape/feature-bg-1.png" alt="bg-shape">
  <img class="feature-bg-2 left-right-animation" src="images/background-shape/feature-bg-2.png" alt="bg-shape">
</section>
<!-- /Benefits -->

<!-- marketing -->
<%--<section class="section-lg seo">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="seo-image">
          <img class="img-fluid" src="images/marketing/marketing.png" alt="form-img">
        </div>
      </div>
      <div class="col-md-5">
        <h2 class="section-title">A Complete Range Of SEO Marketing Services!</h2>
        <p>Far far away, behind the word mountains, far
          from the countries Vokalia and Consonantia.<br>
          There live the blind texts. Separated they
          live in Bookmarksgrove right at the coast of
          the Semantics, a large language ocean.
        </p>
      </div>
    </div>
  </div>
  <!-- background image -->
  <img class="img-fluid seo-bg" src="images/backgrounds/seo-bg.png" alt="seo-bg">
  <!-- background-shape -->
  <img class="seo-bg-shape-1 left-right-animation" src="images/background-shape/seo-ball-1.png" alt="bg-shape">
  <img class="seo-bg-shape-2 up-down-animation" src="images/background-shape/seo-half-cycle.png" alt="bg-shape">
  <img class="seo-bg-shape-3 left-right-animation" src="images/background-shape/seo-ball-2.png" alt="bg-shape">
</section>
<!-- /marketing -->

<!-- service -->
<section class="section-lg service">
  <div class="container">
    <div class="row justify-content-between">
      <div class="col-md-5 order-2 order-md-1">
        <h2 class="section-title">Powerful Layout From Top To Bottom</h2>
        <p class="mb-4">Far far away, behind the word mountains,
          far from the countries Vokalia and Consonantia,
          there live the blind texts. Separated they
          live in Bookmarksgrove right at the coast of the
          Semantics, a large language ocean.</p>
        <ul class="pl-0 service-list">
          <li><i class="ti-layout-tab-window text-purple"></i>Responsive on any device</li>
          <li><i class="ti-layout-placeholder text-purple"></i>Very easy to customize</li>
          <li><i class="ti-support text-purple"></i>Effective support</li>
        </ul>
      </div>
      <div class="col-md-7 order-1 order-md-2">
        <img class="img-fluid layer-3" src="images/service/service.png" alt="service">
      </div>
    </div>
  </div>
  <!-- background image -->
  <img class="img-fluid service-bg" src="images/backgrounds/service-bg.png" alt="service-bg">
  <!-- background shapes -->
  <img class="service-bg-shape-1 up-down-animation" src="images/background-shape/service-half-cycle.png" alt="background-shape">
  <img class="service-bg-shape-2 left-right-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
</section>
<!-- /service -->

<!-- team -->
<section class="section-lg team" id="team">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-title">Our Team</h2>
        <p class="mb-100">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu<br>
          fugiat nulla pariatur. Excepteur sint occaecat </p>
      </div>
    </div>
    <div class="col-10 mx-auto">
      <div class="team-slider">
        <!-- team-member -->
        <div class="team-member">
          <div class="d-flex mb-4">
            <div class="mr-3">
              <img class="rounded-circle img-fluid" src="images/team/team-1.jpg" alt="team-member">
            </div>
            <div class="align-self-center">
              <h4>Becroft</h4>
              <h6 class="text-color">web designer</h6>
            </div>
          </div>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. S eparated they</p>
        </div>
        <!-- team-member -->
        <div class="team-member">
          <div class="d-flex mb-4">
            <div class="mr-3">
              <img class="rounded-circle img-fluid" src="images/team/team-2.jpg" alt="team-member">
            </div>
            <div class="align-self-center">
              <h4>John Doe</h4>
              <h6 class="text-color">web developer</h6>
            </div>
          </div>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. S eparated they</p>
        </div>
        <!-- team-member -->
        <div class="team-member">
          <div class="d-flex mb-4">
            <div class="mr-3">
              <img class="rounded-circle img-fluid" src="images/team/team-3.jpg" alt="team-member">
            </div>
            <div class="align-self-center">
              <h4>Erik Ligas</h4>
              <h6 class="text-color">Programmer</h6>
            </div>
          </div>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live
            the blind texts. S eparated they</p>
        </div>
        <!-- team-member -->
        <div class="team-member">
          <div class="d-flex mb-4">
            <div class="mr-3">
              <img class="rounded-circle img-fluid" src="images/team/team-1.jpg" alt="team-member">
            </div>
            <div class="align-self-center">
              <h4>Erik Ligas</h4>
              <h6 class="text-color">Programmer</h6>
            </div>
          </div>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live
            the blind texts. S eparated they</p>
        </div>
        <!-- team-member -->
        <div class="team-member">
          <div class="d-flex mb-4">
            <div class="mr-3">
              <img class="rounded-circle img-fluid" src="images/team/team-2.jpg" alt="team-member">
            </div>
            <div class="align-self-center">
              <h4>John Doe</h4>
              <h6 class="text-color">web developer</h6>
            </div>
          </div>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. S eparated they</p>
        </div>
      </div>
    </div>
  </div>
  <!-- backgound image -->
  <img src="images/backgrounds/team-bg.png" alt="team-bg" class="img-fluid team-bg">
  <!-- background shapes -->
  <img class="team-bg-shape-1 up-down-animation" src="images/background-shape/seo-ball-1.png" alt="background-shape">
  <img class="team-bg-shape-2 left-right-animation" src="images/background-shape/seo-ball-1.png" alt="background-shape">
  <img class="team-bg-shape-3 left-right-animation" src="images/background-shape/team-bg-triangle.png" alt="background-shape">
  <img class="team-bg-shape-4 up-down-animation img-fluid" src="images/background-shape/team-bg-dots.png" alt="background-shape">
</section>
<!-- /team -->

<!-- pricing -->
<section class="section-lg pb-0 pricing" id="pricing">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-title">Our Pricing</h2>
        <p class="mb-50">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu <br>
          fugiat nulla pariatur. Excepteur sint occaecat </p>
      </div>
      <div class="col-lg-10 mx-auto">
        <div class="row justify-content-center">
          <!-- pricing table -->
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
            <div class="rounded text-center pricing-table table-1">
              <h3>Free</h3>
              <h1><span>$</span>00</h1>
              <p>Far far away, behind the
                wordmountains, far from the
                countries Vokalia and
              </p>
              <a href="#" class="btn pricing-btn px-2">Get Started</a>
            </div>
          </div>
          <!-- pricing table -->
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
            <div class="rounded text-center pricing-table table-2">
              <h3>Standard</h3>
              <h1><span>$</span>75</h1>
              <p>Far far away, behind the
                wordmountains, far from the
                countries Vokalia and
              </p>
              <a href="#" class="btn pricing-btn px-2">Buy Now</a>
            </div>
          </div>
          <!-- pricing table -->
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
            <div class="rounded text-center pricing-table table-3">
              <h3>Premium</h3>
              <h1><span>$</span>99</h1>
              <p>Far far away, behind the
                wordmountains, far from the
                countries Vokalia and
              </p>
              <a href="#" class="btn pricing-btn px-2">Buy Now</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- background shapes -->
  <img class="pricing-bg-shape-1 up-down-animation" src="images/background-shape/seo-ball-1.png" alt="background-shape">
  <img class="pricing-bg-shape-2 up-down-animation" src="images/background-shape/seo-half-cycle.png" alt="background-shape">
  <img class="pricing-bg-shape-3 left-right-animation" src="images/background-shape/team-bg-triangle.png" alt="background-shape">
</section>
<!-- /pricing -->

<!-- client logo slider -->
<section class="section">
  <div class="container">
      <div class="client-logo-slider align-self-center">
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-1.png" alt="client-logo"></a>
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-2.png" alt="client-logo"></a>
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-3.png" alt="client-logo"></a>
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-4.png" alt="client-logo"></a>
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-5.png" alt="client-logo"></a>
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-1.png" alt="client-logo"></a>
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-2.png" alt="client-logo"></a>
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-3.png" alt="client-logo"></a>
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-4.png" alt="client-logo"></a>
          <a href="#" class="text-center d-block outline-0 p-5"><img class="d-unset img-fluid" src="images/clients-logo/client-logo-5.png" alt="client-logo"></a>
      </div>
  </div>
</section>
<!-- /client logo slider -->

<!-- newsletter -->
<section class="newsletter">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2>Subscribe to our newsletter</h2>
        <p class="mb-5">Receive updates, news and deals</p>
      </div>
      <div class="col-lg-8 col-sm-10 col-12 mx-auto">
        <form action="#">
          <div class="input-wrapper position-relative">
            <input type="email" class="newsletter-form" id="newsletter" placeholder="Enter your email">
            <button type="submit" value="send" class="btn newsletter-btn">subscribe</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- background shapes -->
  <img class="newsletter-bg-shape left-right-animation" src="images/background-shape/seo-ball-2.png" alt="background-shape">
</section>--%>
<!-- /newsletter -->

<!-- footer -->
<footer class="footer-section footer" style="background-image: url(images/backgrounds/footer-bg.png);">
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
</asp:Content>
