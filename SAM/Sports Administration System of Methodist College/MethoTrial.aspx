 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MethoTrial.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.MethoTrial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Methodist College Colombo</title>
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
								<li class="menu-item current-menu-item"><a href="MethoTrial.aspx">Home</a></li>
								<li class="menu-item"><a href="About.aspx">About</a></li>
								<li class="menu-item"><a href="Home Page.aspx">Sports</a></li>
								<li class="menu-item"><a href="Houses.aspx">Houses</a></li>
								<li class="menu-item"><a href="Contact.aspx">Contact</a></li>
							</ul> <!-- .menu -->
						</div> <!-- .main-navigation -->

						<div class="mobile-navigation"></div>
					</div> <!-- .container -->
				</div> <!-- .primary-header -->

				<div class="home-slider">
					<div class="container">
						<div class="slider">
							<ul class="slides">
								<li>
									<div class="slide-caption">
										<h2 class="slide-title">Welcome to <br/> Methodist College, Colombo </h2>
										<p>Methodist College, founded in 1866 is a girls school in Colombo, managed by the Methodist Church in Sri Lanka.
          Leading number one girls schools in Sri Lanka. We currently maintain a student body of 3000 and approximately 175 teachers. We conduct 3 streams of classes in Sinhala, Tamil and English with English as a second language.
             
        </p>
										<a href="About.aspx" class="button primary large">Learn more</a>
									</div>
									<%--<img src="dummy/kid.png" alt="">--%>
									<img src="Slideshow1/methodist-collage-colombo-sri-lanka.jpg" />
								</li>
        
								<li>
									<div class="slide-caption">
										<h2 class="slide-title">Check Our House System!</h2>
										<p>There are six houses in Methodist College. Each of these six founders were noble examples of willing sacrifice and valiant endeavour.</p>
										<a href="Houses.aspx" class="button primary large">Learn more</a>
									</div>
									<img src="Slideshow1/methodist-collage-colombo-sri-lanka.jpg" />
								</li>
								<li>
									<div class="slide-caption">
										<h2 class="slide-title">Check Out Our New Sports Portal! </h2>
										<p>Check out our Sports Portal for more information on sports activites, benefits and registration.</p>
										<a href="Home Page.aspx" class="button primary large">Learn more</a>
									</div>
									<img src="Slideshow1/methodist-collage-colombo-sri-lanka.jpg" alt="" />
								</li>
							</ul> <!-- .slides -->
						</div> <!-- .slider -->
					</div> <!-- .container -->
				</div> <!-- .home-slider -->
			</header>
		</div>

		<main class="main-content">
			<div class="fullwidth-block">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<h2 class="section-title"><i class="icon-newspaper"></i> Latest News</h2>
							<ul class="posts">
								<li class="post">
									<h3 class="entry-title"><a href="#">Starting of School for Term 1 2024</a></h3>
									<span class="date"><i class="icon-calendar"></i> 02 JAN 2024</span>
									<span class="author"><i class="icon-user"></i>Yvonne Kingston</span>
								</li>
								<li class="post">
									<h3 class="entry-title"><a href="#">AL Exams 2023</a></h3>
									<span class="date"><i class="icon-calendar"></i> 04 JAN 2024</span>
									<span class="author"><i class="icon-user"></i>Yvonne Kingston</span>
								</li>
								<li class="post">
									<h3 class="entry-title"><a href="#">Grade 1 Applications for 2025</a></h3>
									<span class="date"><i class="icon-calendar"></i> 16 JAN 2024</span>
									<span class="author"><i class="icon-user"></i>Yvonne Kingston</span>
								</li>
							</ul>
							<p class="text-center">
								<a href="#" class="more button secondary">See older News</a>
							</p>
						</div>
						<div class="col-md-6">
							<h2 class="section-title"><i class="icon-calendar-lg"></i> Upcoming Events</h2>
							<ul class="posts">
								<li class="post">
									<h3 class="entry-title"><a href="#">Sports Meet 2024</a></h3>
									<span class="date"><i class="icon-calendar"></i> 25 FEB 2024</span>
									<span class="location"><i class="icon-map-marker"></i>NCC Sports Complex</span>
								</li>
								<li class="post">
									<h3 class="entry-title"><a href="#">Prize Giving 2024</a></h3>
									<span class="date"><i class="icon-calendar"></i> 6 MAR 2024</span>
									<span class="location"><i class="icon-map-marker"></i>School Auditorium</span>
								</li>
								<li class="post">
									<h3 class="entry-title"><a href="#">Avurudu 2024</a></h3>
									<span class="date"><i class="icon-calendar"></i> 6 APR 2024</span>
									<span class="location"><i class="icon-map-marker"></i>School Auditorium</span>
								</li>
							</ul>
							<p class="text-center">
								<a href="#" class="more button secondary">See more event</a>
							</p>
						</div>
						<%--<div class="col-md-4">
							<h2 class="section-title"><i class="icon-book"></i> Courses</h2>
							<ul class="posts">
								<li class="post">
									<h3 class="entry-title"><a href="#">Nostrud exercitation ullamco</a></h3>
									<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
									<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
									<span class="price"><i class="icon-coins"></i>$55.00</span>
								</li>
								<li class="post">
									<h3 class="entry-title"><a href="#">Nostrud exercitation ullamco</a></h3>
									<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
									<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
									<span class="price"><i class="icon-coins"></i>$55.00</span>
								</li>
								<li class="post">
									<h3 class="entry-title"><a href="#">Nostrud exercitation ullamco</a></h3>
									<span class="date"><i class="icon-calendar"></i> 6 APR 2014</span>
									<span class="time"><i class="icon-clock"></i>1:00pm-2:00pm</span>
									<span class="price"><i class="icon-coins"></i>$55.00</span>
								</li>
							</ul>
							<p class="text-center">
								<a href="#" class="more button secondary">See more courses</a>
							</p>
						</div>--%>
					</div> <!-- .row -->
				</div>
			</div> <!-- .fullwidth-block -->

			<div class="fullwidth-block">
				<div class="container">
					<div class="row">
						<div class="col-md-9">
							<div class="boxed-section request-form">
								<h2 class="section-title text-center">Request information</h2>
								<form action="#">
									<div class="field">
										<label for="email">Email Address:</label>
										<div class="control"><input type="text" id="email" placeholder="example@mail.com"></div>
									</div>
									<div class="field">
										<label for="name">Your name:</label>
										<div class="control"><input type="text" id="name" placeholder="John Smith"></div>
									</div>
									<div class="field">
										<label for="interest">Primary and Middle School</label>
										<div class="control">
											<select name="#" id="interest">
												<option value="other">Grade 1-5</option>
												<option value="other">Grade 6-9</option>
												
											</select>
										</div>
									</div>
									<div class="field">
										<label for="program">OL and AL</label>
										<div class="control">
											<select name="#" id="program">
												<option value="other">Local OL</option>
												<option value="other">Local AL</option>
												<option value="other">London OL</option>
												<option value="other">London AL</option>
												
											</select>
										</div>
									</div>
									<div class="field no-label">
										<div class="control">
											<input type="submit" class="button" value="Submit request">
										</div>
									</div>
								</form>
							</div> <!-- .boxed-section .request-form -->
						</div>
						<%--<div class="col-md-6">
							<div class="boxed-section best-students">
								<h2 class="section-title  text-center">Our best students</h2>
								<ul class="best-students-grid">
									<li class="student"><a href="#"><img src="dummy/student-md-1.jpg" alt="student 1"></a></li>
									<li class="student"><a href="#"><img src="dummy/student-md-2.jpg" alt="student 2"></a></li>
									<li class="student"><a href="#"><img src="dummy/student-md-3.jpg" alt="student 3"></a></li>
									<li class="student"><a href="#"><img src="dummy/student-md-4.jpg" alt="student 4"></a></li>
									<li class="student"><a href="#"><img src="dummy/student-md-5.jpg" alt="student 5"></a></li>
									<li class="student"><a href="#" class="more-student">See more</a></li>
								</ul>
							</div> <!-- .boxed-section .best-students -->
						</div>--%>
					</div>  <!-- .row -->
				</div> <!-- .container -->
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
