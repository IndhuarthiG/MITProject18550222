<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sports info.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.WebForm2" %>
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


<!-- service -->
<section class="section-lg service-bg-image position-relative" style="background-image: url(images/backgrounds/service-page.png);">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2 class="section-title">Our Sports Activities</h2>
                <p class="mb-100">Explore our various sports activities.<br>Each sports activity takes place after school every weekday from 2.00 - 4.30 PM</p>
            </div>
            <!-- service item -->
            <div class="col-sm-6 mb-4">
                <div class="rounded bg-white p-4 shadow-primary" style="font-family: Poppins">
                    <%--<i class="ti-layers-alt round-icon blue mb-4"></i>--%>
                    <%--<i class="fas fa-bullseye fa-lg text-danger mb-4"></i>--%>
                    <img src="images/archery.png" width="20" height="20" />
                    <h4>Archery</h4>
                    <p>Archery is the sport, practice, or skill of using a bow to shoot arrows.<br />The girls are taken to Colombo Archery Center for practices after school. Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Mon, Fri</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                    </div>
                </div>
                
            <!-- service item -->
            <div class="col-sm-6 mb-4 translate-y-150">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-layers-alt round-icon green mb-4"></i>--%>
                    <i class="fas fa-running fa-lg text-success mb-4"></i>
                    <h4>Athletics</h4>
                    <p>Athletics is a group of sporting events that involves competitive running, jumping, throwing, and walking.<br />The girls are taken to Torrington grounds for practices after school. Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Tue, Wed, Fri</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                </div>
            </div>
            <!-- service item -->
            <div class="col-sm-6 mb-4">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-layers-alt round-icon orange mb-4"></i>--%>
                    <i class="fas fa-basketball-ball fa-lg text-warning mb-4"></i>
                    <h4>Basketball</h4>
                    <p>It is a team sport that involves two teams of five active players each trying to score points against one another by throwing a ball through a 300 cm (10 feet) high hoop (the 'basket') under organised rules.<br />Practices takes place afterschool in the School Basketball court. Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Mon, Wed</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                </div>
            </div>
            <!-- service item -->
            <div class="col-sm-6 mb-4 translate-y-150">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-layers-alt round-icon blue mb-4"></i>--%>
                    <i class="fas fa-chess fa-lg text-secondary mb-4"></i>
                    <h4>Chess</h4>
                    <p>Chess is a board game for two players.It is an abstract strategy game and involves no hidden information. It is played on a chessboard with 64 squares arranged in an eight-by-eight grid.<br />Practices takes place afterschool in the Upper School Auditorium fawyer . Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Thur</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                </div>
            </div>
            <!-- service item -->
            <div class="col-sm-6 mb-4">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-layers-alt round-icon green mb-4"></i>--%>
                    <i class="fas fa-table-tennis fa-lg text-primary mb-4"></i>
                    <h4>Table Tennis</h4>
                    <p>Table tennis, also known as ping-pong and whiff-whaff, is a sport in which two or four players hit a lightweight ball, also known as the ping-pong ball, back and forth across a table using small solid rackets. The game takes place on a hard table divided by a net..<br />Practices takes place afterschool in the Upper School Auditorium fawyer . Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Tue, Thur</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                    
                </div>
            </div>
            <!-- service item -->
            <div class="col-sm-6 mb-4 translate-y-150">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-layers-alt round-icon orange mb-4"></i>--%>
                    <%--<i class="far fa-racquet fa-lg text-Secondary mb-4"></i>--%>
                    <img src="images/Squash.png" height="50" width="50" />
                    <h4>Squash</h4>
                    <p>Squash is a racket and ball sport played by two or four players in a four-walled court with a small, hollow rubber ball. The players alternate in striking the ball with their rackets onto the playable surfaces of the four walls of the court. The objective of the game is to hit the ball in such a way that the opponent is not able to play a valid return.<br />Practices takes place afterschool in the Upper School. Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Thur, Fri</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                </div>
            </div>
            <!-- service item -->
            <div class="col-sm-6 mb-4">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-layers-alt round-icon green mb-4"></i>--%>
                    <i class="fas fa-volleyball-ball fa-lg text-warning mb-4"></i>
                    <h4>Volleyball</h4>
                    <p>Volleyball is a team sport in which two teams of six players are separated by a net. Each team tries to score points by grounding a ball on the other team's court under organized rules.<br />Practices takes place afterschool in the Netball court. Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Mon, Wed</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                    
                </div>
            </div>
            <!-- service item -->
            <div class="col-sm-6 mb-4 translate-y-150">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-layers-alt round-icon orange mb-4"></i>--%>
                    <i class="fas fa-basketball-ball fa-lg text-success mb-4"></i>
                    <h4>Netball</h4>
                    <p>Netball is a ball sport played by two teams of seven players, usually on an indoor court, and is predominantly played by women.<br />Practices takes place afterschool in the Netball court. Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Tue, Thur</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                </div>
            </div>
            <!-- service item -->
            <div class="col-sm-6 mb-4">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-layers-alt round-icon green mb-4"></i>--%>
                    <i class="fas fa-swimmer fa-lg text-info mb-4"></i>
                    <h4>Swimming</h4>
                    <p>Competitive swimming is one of the most popular sport with varied distance events in butterfly, backstroke, breaststroke, freestyle, and individual medley. In addition to these individual events, four swimmers can take part in either a freestyle or medley relay.<br /> The girls are taken to the Thurstan swimming pool for practices. Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Tue</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                    
                </div>
            </div>
            <!-- service item -->
            <div class="col-sm-6 mb-4 translate-y-150">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-na ti-lg text-success mb-4"></i>--%>
                   <img src="images/Tennis.png" height="50" width="50" />
                    <h4>Tennis</h4>
                    <p>Competitive swimming is one of the most popular sport with varied distance events in butterfly, backstroke, breaststroke, freestyle, and individual medley. In addition to these individual events, four swimmers can take part in either a freestyle or medley relay.<br /> The girls are taken to the SLTA for practices. Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Tue, Thur</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                    
                </div>
            </div>

            <!-- service item -->
            <div class="col-sm-6 mb-4">
                <div class="rounded bg-white p-4 shadow-primary">
                    <%--<i class="ti-layers-alt round-icon green mb-4"></i>--%>
                    <%--<i class="fas fa-swimmer fa-lg text-info mb-4"></i>--%>
                    <img src="images/badminton.png" width="50" height="50" />
                    <br />
                    <br />
                    <h4>Badminton</h4>
                    <p>Badminton is a racquet sport played using racquets to hit a shuttlecock across a net. Although it may be played with larger teams, the most common forms of the game are "singles" (with one player per side) and "doubles" (with two players per side). .<br /> Practices take place in the Schools indoor badminton court. Days and times of practice are as follows.</p>
                    <ul>
                                <li><span class="far fa-calendar"></span>&nbsp;&nbsp;Mon, Fri</li>
                                <li><span class="far fa-clock"></span>&nbsp;&nbsp;14.00 - 16.30 PM</li>
                            </ul>
                    
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
<!-- /service -->

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
