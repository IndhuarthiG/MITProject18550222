<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReports.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.AdminReports" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
  <meta charset="utf-8">
  <title>Admin home</title>

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

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet"/>

   <!--Admin Sheet-->
    <link href="StyleSheet1.css" rel="stylesheet" />
  
  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
  <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>

   <!--Fontawesome-->
   <link href="Fontawesome/css/all.css" rel="stylesheet" />

   <!--Admin Js -->
   <script src="adminjs/jquery-3.4.1.js"></script>
   <script src="Fontawesome/js/all.js"></script>
</head>

<body>

<!-- sidebar -->
    <nav class="sidebar">
        <div class="text">SASMC Admin</div>
        <ul>
            <li><a href="adminH.aspx"><i class="fas fa-qrcode"></i>&nbsp Dashboard</a></li>
            <li><a href="#" class="mem-btn"><i class="fas fa-user"></i>&nbsp Members
                <span class="fas fa-caret-down first"></span>                
                </a>
                <ul class="mem-show">
                    <li><a href="adminStudents.aspx">Students</a></li>
                    <li><a href="adminTeachers.aspx">Teachers</a></li>
                    <li><a href="adminCoaches.aspx">Coaches</a></li>
                    
                </ul>
            </li>
            <li><a href="#" class="tea-btn"><i class="fas fa-users"></i>&nbsp Teams
                <span class= "fas fa-caret-down second"></span>
                </a>
                <ul class="tea-show">
                    <li><a href="adminTeam admission.aspx">Admission</a></li>
                    <li><a href="adminTeams.aspx">Sports Teams</a></li>
                </ul>
            </li>
            <li><a href="#" class="spor-btn"><i class="fas fa-running"></i>&nbsp Sports Activity
                <span class= "fas fa-caret-down third"></span>
                </a>
                <ul class="spor-show">
                    <li><a href="adminSports.aspx">Sports</a></li>
                    <li><a href="adminTournament.aspx">Tournaments</a></li>
                    <li><a href="adminMatches.aspx">Matches</a></li>
                    <li><a href="adminScores.aspx">Scores</a></li>
                </ul>
            </li>
            <li><a href="adminAssignTeacher.aspx"><i class="fas fa-clipboard-list"></i>&nbsp Duty Teachers</a></li>
             <li><a href="Login grid.aspx"><i class="fas fa-sign-in-alt"></i>&nbsp Logins</a></li>
            <li><a href="Add notification.aspx"><i class="fa fa-bullhorn" aria-hidden="true"></i>&nbsp Announcements</a></li>
            <li><a href="adminRoster.aspx"><i class="fas fa-clipboard-list"></i>&nbsp Roster</a></li>
            <li><a href="adminParticipants.aspx"><i class="fas fa-people-arrows"></i>&nbsp Participants</a></li>
            <li><a href="adminInventory.aspx"><i class="fas fa-boxes"></i>&nbsp Inventory</a></li>
            <li><a href="Achievers.aspx"><i class="fas fa-trophy"></i>&nbsp Achievers</a> </li>
            <li><a href="AdminReports.aspx"><i class="fas fa-file-alt"></i>&nbsp Reports</a></li>
            <li><a href="adminEmail.aspx"><i class="fas fa-envelope"></i>&nbsp Messages</a></li>
            <li><a href="Home Page.aspx"><i class="fas fa-sign-out-alt"></i>&nbsp Home</a></li>

        </ul>
    </nav>
    
    <script>
        $('.mem-btn').click(function () {
            $('nav ul.mem-show').toggleClass("show");
            $('nav ul.first').toggleClass("rotate");
        });
        $('.tea-btn').click(function () {
            $('nav ul.tea-show').toggleClass("show1");
            $('nav ul.second').toggleClass("rotate");
        });
        $('.spor-btn').click(function () {
            $('nav ul.spor-show').toggleClass("show2");
            $('nav ul.third').toggleClass("rotate");
        });
        
        $('nav ul li').click(function () {
            $(this).addClass("active").siblings().removeClass("active");
        });
    </script>

    <!--End of side bar-->

<!--Start of main content-->

<div class="main">
    <h2 style="color: #008080">Reports</h2>
    <br />
    <br />
    <!--General-->
    <%--<section class="section-lg contact">
        <div class="container">

        </div>
        </section>--%>
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <h4><center>General Reports</center></h4>
                         <br />
                         <br />
                         <div class ="row">
                             <form id="form1" runat="server"> 
                             <div class="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-outline-success btn-block btn-lg" ID="Button1" runat="server" Text="Inventory Report" OnClick="Button1_Click" OnClientClick="target ='_blank';"/>
                              </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button2" runat="server" Text="Coaches Report" OnClick="Button2_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-outline-primary btn-block btn-lg" ID="Button15" runat="server" Text="Duty Teachers Report" OnClick="Button15_Click" OnClientClick="target ='_blank';"/>
                             </div>
                          </div>
                         <div class="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                             <asp:Button class="btn btn-outline-danger btn-lg" ID="Button16" runat="server" Text="Students Report" OnClick="Button16_Click" OnClientClick="target ='_blank';"/>
                         </div>

                             <div class="d-grid gap-2 col-4 mx-auto">
                             <asp:Button class="btn btn-outline-danger btn-lg" ID="Button32" runat="server" Text="Exchange Roster Report" OnClick="Button32_Click" OnClientClick="target ='_blank';"/>
                         </div>
                         </div>
                         <br />
                         <br />
                         
                         <center><h4 style="color:brown"> Sports Roster Reports</h4></center>
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-danger btn-block btn-lg" ID="Button3" runat="server" Text="Archery" OnClick="Button3_Click" OnClientClick="target ='_blank';"/>
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button4" runat="server" Text="Athletics" OnClick="Button4_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-primary btn-block btn-lg" ID="Button5" runat="server" Text="Badminton" OnClick="Button5_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-success btn-block btn-lg" ID="Button6" runat="server" Text="Basketball" OnClick="Button6_Click" OnClientClick="target ='_blank';"/>
                             </div>
                          </div>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-warning btn-block btn-lg" ID="Button7" runat="server" Text="Netball" OnClick="Button7_Click" OnClientClick="target ='_blank';"/>
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-info btn-block btn-lg" ID="Button8" runat="server" Text="Swimming" OnClick="Button8_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button9" runat="server" Text="Table Tennins" OnClick="Button9_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-dark btn-block btn-lg" ID="Button10" runat="server" Text="Tennis" OnClick="Button10_Click" OnClientClick="target ='_blank';"/>
                             </div>
                          </div>
                         <br />
                         <br />
                          <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-info btn-block btn-lg" ID="Button17" runat="server" Text="Chess" OnClick="Button17_Click" OnClientClick="target ='_blank';"/>
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button18" runat="server" Text="Squash" OnClick="Button18_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-danger btn-block btn-lg" ID="Button19" runat="server" Text="Volleyball" OnClick="Button19_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             
                          </div>  
                         <br />
                         <br />
                         <center><h4 style="color:indigo">Sports Teams</h4></center>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                             <asp:Button class="btn btn-outline-danger btn-lg" ID="Button20" runat="server" Text="Under 10" OnClick="Button20_Click" OnClientClick="target ='_blank';"/>
                         </div>
                         </div>   
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-warning btn-block btn-lg" ID="Button11" runat="server" Text="Under 12" OnClick="Button11_Click" OnClientClick="target ='_blank';"/>
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-info btn-block btn-lg" ID="Button12" runat="server" Text="Under 14" OnClick="Button12_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button13" runat="server" Text="Under 16" OnClick="Button13_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-dark btn-block btn-lg" ID="Button14" runat="server" Text="Under 18" OnClick="Button14_Click" OnClientClick="target ='_blank';"/>
                             </div>
                          </div>

                         <br />
                         <br />
                         <center><h4 style="color:seagreen"> Applications for Sports Position Reports</h4></center>
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-danger btn-block btn-lg" ID="Button21" runat="server" Text="Archery" OnClick="Button21_Click" OnClientClick="target ='_blank';"/>
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button22" runat="server" Text="Athletics" OnClientClick="target ='_blank';" OnClick="Button22_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-primary btn-block btn-lg" ID="Button23" runat="server" Text="Badminton" OnClientClick="target ='_blank';" OnClick="Button23_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-success btn-block btn-lg" ID="Button24" runat="server" Text="Basketball" OnClick="Button24_Click" OnClientClick="target ='_blank';"/>
                             </div>
                          </div>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-warning btn-block btn-lg" ID="Button25" runat="server" Text="Netball" OnClick="Button25_Click" OnClientClick="target ='_blank';"/>
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-info btn-block btn-lg" ID="Button26" runat="server" Text="Swimming" OnClick="Button26_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button27" runat="server" Text="Table Tennins" OnClick="Button27_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-dark btn-block btn-lg" ID="Button28" runat="server" Text="Tennis" OnClick="Button28_Click" OnClientClick="target ='_blank';"/>
                             </div>
                          </div>
                         <br />
                         <br />
                          <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-info btn-block btn-lg" ID="Button29" runat="server" Text="Chess" OnClick="Button29_Click" OnClientClick="target ='_blank';"/>
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button30" runat="server" Text="Squash" OnClick="Button30_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-danger btn-block btn-lg" ID="Button31" runat="server" Text="Volleyball" OnClick="Button31_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             
                          </div>

                          <br />
                          <br />
                          <center><h4 style="color:blueviolet"> New Registrations</h4></center>
                          <br />
                          <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-danger btn-block btn-lg" ID="Button37" runat="server" Text="Archery" OnClick="Button37_Click" OnClientClick="target ='_blank';"/>
                              </div>
                          <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-secondary btn-block btn-lg" ID="Button38" runat="server" Text="Athletics"/>
                             </div>
                          <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-primary btn-block btn-lg" ID="Button39" runat="server" Text="Squash" OnClick="Button39_Click1" OnClientClick="target ='_blank';"/>
                             </div>
                          <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-outline-success btn-block btn-lg" ID="Button40" runat="server" Text="Basketball" OnClick ="Button40_Click" OnClientClick="target ='_blank';"/>
                             </div>
                          </div>

                         <div class="row">
                             <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
                         </div>

 
                              </form>
                         </div>
                                  
                     </div>
                 </div>
            </div>
        </div>
     </div>
    </div>
    
    


    <!-- background shapes -->
    <%--<img class="contact-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape"/>--%>
    <img class="contact-bg-2 left-right-animation" src="images/background-shape/green-half-cycle.png" alt="background-shape"/>
    <img class="contact-bg-3 up-down-animation" src="images/background-shape/green-dot.png" alt="background-shape"/>
    <%--<img class="contact-bg-4 left-right-animation" src="images/background-shape/service-half-cycle.png" alt="background-shape"/>--%>
    <img class="contact-bg-5 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape"/>
</div>     

<!--End of main content-->

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



    <%--<form id="form1" runat="server">
        <div>
        </div>
    </form>--%>

    
</body>
</html>
