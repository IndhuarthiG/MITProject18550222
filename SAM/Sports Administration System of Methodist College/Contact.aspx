<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us | Methodist College Colombo</title>
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
								<li class="menu-item"><a href="Houses.aspx">Houses</a></li>
								<li class="menu-item current-menu-item"><a href="Contact.aspx">Contact</a></li>
							</ul> <!-- .menu -->
						</div> <!-- .main-navigation -->

						<div class="mobile-navigation"></div>
					</div> <!-- .container -->
				</div> <!-- .primary-header -->

				<div class="page-title">
					<div class="container">
						<h2>Contact Us</h2>
					</div>
				</div>
			</header>
		</div>

		<main class="main-content">
			<div class="fullwidth-block inner-content">
				<div class="container">
					<%--<div class="map"></div>--%>

					<div class="row">
						<div class="col-md-6">
							<form action="#" class="contact-form">
								<p>
									<label for="name">Name</label>
									<span class="control"><input type="text" id="name" placeholder="Yout name"></span>
								</p>
								<p>
									<label for="email">Email</label>
									<span class="control"><input type="text" id="email" placeholder="Email"></span>
								</p>
								<p>
									<label for="website">Website</label>
									<span class="control"><input type="text" id="website" placeholder="Website"></span>
								</p>
								<p>
									<label for="message">Name</label>
									<span class="control"><textarea id="message" placeholder="Message"></textarea></span>
								</p>
								<p class="text-right">
									<input type="submit" value="Send message">
								</p>
							</form>
						</div>
						<div class="col-md-6">
							<div class="contact-info">
								<address>
									<strong>Address</strong>
									<p>Methodist College, Colombo <br/>No 250, Galle Road <br/>Colombo 03</p>
								</address>
								<div class="contact">
									<strong>Contact</strong>
									<p>
										<a href="tel:532930098891">(532) 930 098 891</a>
										<a href="mailto:info@methodistcollege.lk">admin@methodistcollege.lk</a> <br>
														
									</p>
								</div>
							</div>
						</div>
					</div>
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
