<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Houses.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Houses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Houses | Methodist College Colombo</title>
		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Arvo:400,700|" rel="stylesheet" type="text/css" />
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css" />
</head>
<body>
    <div id="site-content">
			<header class="site-header">
				<div class="primary-header">
					<div class="container">
						<a href="index.html" id="branding">
							<img src="images/mlogo.png" alt="Metho" height="100" width="100" />
							<h1 class="site-title">Methodist College</h1>
						</a> <!-- #branding -->
						
						<div class="main-navigation">
							<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
							<ul class="menu">
								<li class="menu-item"><a href="MethoTrial.aspx">Home</a></li>
								<li class="menu-item"><a href="About.aspx">About</a></li>
								<li class="menu-item"><a href="Home Page.aspx">Sports</a></li>
								<li class="menu-item current-menu-item"><a href="Houses.aspx">Houses</a></li>
								<li class="menu-item"><a href="Contact.aspx">Contact</a></li>
							</ul> <!-- .menu -->
						</div> <!-- .main-navigation -->

						<div class="mobile-navigation"></div>
					</div> <!-- .container -->
				</div> <!-- .primary-header -->

				<div class="page-title">
					<div class="container">
						<h2>School Houses</h2>
					</div>
				</div>
			</header>
		</div>

		<main class="main-content">
			<div class="fullwidth-block inner-content">
				<div class="container">
					<div class="col-md-12">
						<div class="content">
							<article>
								<header>
									<h2 class="entry-title">Houses of Methodist College</h2>
									<%--<div class="entry-meta">
										<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
										<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
										<span class="price"><i class="icon-coins"></i>$55.00</span>
									</div>--%>
								</header>
<p class="mb-100">There are six houses in Methodist College. Each of these six founders were noble examples of willing sacrifice and valiant endeavour. To them Methodist College owes its very existence and much of its earlier progress. It is therefore fitting that they will be remembered always by the Houses that bear their names. They are as follows:</p>
								<!-- feature item -->
      <div class="col-md-4 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-comments-smiley feature-icon mr-4"></i>--%>
              
                  <img src="Slideshow1/Scottlogo.png" width="100" height="100" />
          </div>
            
          <div>
            <h4 style="color: #ff6a00">Scott House</h4>
            <p>Scott House was named after Miss Catherine Scott founder/principal of Methodist College. Motto - Play the game</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-4 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-pulse feature-icon mr-4"></i>--%>
              <img src="Slideshow1/Choatelogo.png" width="100" height="100"/>
          </div>
           
          <div>
            <h4 style="color: #973a3a">Choate House</h4>
            <p>Choate House was named after Miss Mary Choate who became principal in 1894. Miss Choate was at Methodist College for a long period of 33 years, 26 of which she served as Principal. It is interesting to note that she always were a brown dress - and perhaps that is how the House got its colour.<br /> Motto - Knit together in love and service</p>
          </div>
        </div>
      </div>
        <!-- feature item -->
      <div class="col-md-4 mb-80">
        <div class="d-flex feature-item">
          <div>
           <%-- <i class="ti-stats-up feature-icon mr-4"></i>--%>
                <img src="Slideshow1/Rigbylogo.png" width="100" height="100"/>   
          </div>
            
          <div>
            <h4 style="color: #ffd800">Rigby House</h4>
            <p>Rigby House was named after the Rev Rigby who was the manager of the school during two different periods. When he first came, Methodist College was a small school, ill-housed with poor facilities. But he believed we had a future and worked towards building new classrooms, which dream he achieved in 1916. <br /> Motto - Never say die</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-4 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-eye feature-icon mr-4"></i>--%>
              <img src="Slideshow1/Restericklogo.png" width="100" height="100"/>
          </div>
           
          <div>
            <h4 style="color: #ff0000">Resterick House</h4>
            <p>Restarick house was named after Rev Restarick, Manager of the school for a period of 13 years. He too did a lot for Methodist College and it was mainly due to his efforts that the present Hostel was built. <br/>Motto - Utmost for the highest</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-4 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-rocket feature-icon mr-4"></i>--%>
              <img src="Slideshow1/Shirelogo.png" width="100" height="100"/>
          </div>
           
          <div>
            <h4 style="color: #b200ff">Shire House</h4>
            <p>Shire House was named after Miss Elsie Shire who joined the school as a teacher in 1909 and later became vice-principal. She served the school selflessly for a period of 33 years. <br />Motto - Aim high and persevere</p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      <div class="col-md-4 mb-80">
        <div class="d-flex feature-item">
          <div>
            <%--<i class="ti-alarm-clock feature-icon mr-4"></i>--%>
              <img src="Slideshow1/Parklogo.png" width="100" height="100"/>
          </div>
                        
          <div>
            <h4 style="color: #808080">Park House</h4>
            <p>Park House was named after Miss Helen Park, who came to Methodist College as vice-principal in 1912. Miss Park too completed 31 years of selfless devotion to the school, and retired as principal in 1943.<br /> Motto - Unity is strength</p>
          </div>
        </div>
      </div>
        <!-- feature item -->

								<%--<div class="actions">
									<a href="#" class="button green">Order this course - <strong>$10.00</strong></a>
									<a href="#" class="button secondary">Ask about details</a>
								</div>--%>
							</article>
						</div>
					</div>
					<%--<div class="col-md-4 col-md-offset-1">
						<aside class="sidebar">
							<h2 class="section-title"><i class="icon-book"></i> Select a course</h2>
							<ul class="courses">
								<li>
									<h3 class="course-title"><a href="#">Nostrud exercitation ullamco</a></h3>
									<div class="course-meta">
										<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
										<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
										<span class="price"><i class="icon-coins"></i>$55.00</span>
									</div>
								</li>
								<li class="current">
									<h3 class="course-title"><a href="#">Nostrud exercitation ullamco</a></h3>
									<div class="course-meta">
										<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
										<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
										<span class="price"><i class="icon-coins"></i>$55.00</span>
									</div>
								</li>
								<li>
									<h3 class="course-title"><a href="#">Nostrud exercitation ullamco</a></h3>
									<div class="course-meta">
										<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
										<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
										<span class="price"><i class="icon-coins"></i>$55.00</span>
									</div>
								</li>
								<li>
									<h3 class="course-title"><a href="#">Nostrud exercitation ullamco</a></h3>
									<div class="course-meta">
										<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
										<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
										<span class="price"><i class="icon-coins"></i>$55.00</span>
									</div>
								</li>
								<li>
									<h3 class="course-title"><a href="#">Nostrud exercitation ullamco</a></h3>
									<div class="course-meta">
										<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
										<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
										<span class="price"><i class="icon-coins"></i>$55.00</span>
									</div>
								</li>
							</ul>
						</aside>
					</div>--%>
				</div>
			</div> <!-- .fullwidth-block -->
		</main>

		<footer class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="widget">
							<h3 class="widget-title">Contact us</h3>
							<address>Methodist College <br>N0 250, Galle Road, Colombo 03</address>

							<a href="mailto:info@methodistcollege.lk">info@methodistcollege.lk</a> <br/>
							<a href="tel:48942652394324">(489) 42652394324</a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="widget">
							<h3 class="widget-title">Social media</h3>
							<p>Follow us on Scocial media.</p>
							<div class="social-links circle">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-google-plus"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-pinterest"></i></a>
							</div>
						</div>
					</div>
					<%--<div class="col-md-3">
						<div class="widget">
							<h3 class="widget-title">Featured students</h3>
							<ul class="student-list">
								<li><a href="#">
										<img src="dummy/student-sm-1.jpg" alt="" class="avatar">
										<span class="fn">Sarah Branson</span>
										<span class="average">Average: 4,9</span>
									</a></li>
								<li><a href="#">
										<img src="dummy/student-sm-2.jpg" alt="" class="avatar">
										<span class="fn">Dorothy Smith</span>
										<span class="average">Average: 4,9</span>
									</a></li>
							</ul>
						</div>
					</div>--%>
					<div class="col-md-4">
						<div class="widget">
							<h3 class="widget-title">Newsletter</h3>
							<p>Subscribe to our newsletter.</p>
							<form action="#" class="subscribe">
								<input type="email" placeholder="Email Address...">
								<input type="submit" class="light" value="Subscribe">
							</form>
						</div>
					</div>
				</div>

				<div class="copy">Copyright 2023 Methodist College Colombo. All rights reserved.</div>
			</div>

		</footer>

		<script src="jsM/jquery-1.11.1.min.js"></script>
		<script src="jsM/plugins.js"></script>
		<script src="jsM/app.js"></script>
</body>
</html>
