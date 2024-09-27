<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us | Methodist College Colombo</title>
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
								<li class="menu-item current-menu-item"><a href="About.aspx">About</a></li>
								<li class="menu-item"><a href="Home Page.aspx">Sports</a></li>
								<li class="menu-item"><a href="Houses.aspx">Houses</a></li>
								<li class="menu-item"><a href="Contact.aspx">Contact</a></li>
							</ul> <!-- .menu -->
						</div> <!-- .main-navigation -->

						<div class="mobile-navigation"></div>
					</div> <!-- .container -->
				</div> <!-- .primary-header -->

				<div class="page-title">
					<div class="container">
						<h2>About Us</h2>
					</div>
				</div>
			</header>
		</div>

		<main class="main-content">
			<div class="fullwidth-block inner-content">
				<div class="container">
					<div class="col-md-10">
						<div class="content">
							<article>
								<header>
									<h2 class="entry-title">Our History</h2>
									<%--<div class="entry-meta">
										<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
										<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
										<span class="price"><i class="icon-coins"></i>$55.00</span>
									</div>--%>
								</header>

								<div class="entry-content">
									<%--<figure class="featured-image">
										<img src="History/founder.jpg"/>
									</figure>--%>
									<center><img src="History/Founder.jpg" height="500" width="300" /></center>
									<p>In 1866, Miss Catherine Scott, a British missionary came to Sri Lanka (then known as Ceylon) and started the "Kollupitiya Girl's English School" in a large room with barely 40 girls. In 1883, when Miss Scott left, the school was registered as a "Grant-in-Aid" English high school with 99 students and renamed as "Kollupitiya Girls High School."</p>
            
            <p>1915 The School was recognized as a fully organized Secondary School and its name was changed to Methodist College. In 1917, the 1st Colombo (Methodist College) Guide Company was founded by Ms. Choate and captained by Ms. Shire. In 1919 the Old Girls Association was established and this organization now has branches in London, Melbourne, Sydney, Toronto, Victoria and Southern California.  </p>
      <p>In 1930 the House system was introduced in the school with four houses Scott, Choate, Rigby and Restarick. During the 1950s, Framjee House (on Station Road) was bought by the School. The Junior Day Students moved in downstairs. During the mid 1950s, two new Houses were inaugurated – Park House and Shire House. The Auditorium was declared open on June 24, 1988, by the Rev. Harold Fernando, President of the Methodist Conference. </p>

								</div>

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
