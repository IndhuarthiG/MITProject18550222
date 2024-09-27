<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminRoster.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.adminRoster" %>

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
    <h2 style="color: #008080">Sports Roster</h2>
    
    <form id="form1" runat="server">
        <div class="container">
         <section class="section-lg contact">
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:ImageButton ID="Archery" 
                                     runat="server" 
                                     ImageUrl="~/image buttons/archery 2.png" 
                                     Height="120" Width="120" 
                                     ImageAlign="Middle" ToolTip="Archery" 
                                     OnClick="Archery_Click"/>
                                     
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:ImageButton ID="Athletics" 
                                     runat="server" 
                                     ImageUrl="~/image buttons/athletics.png" 
                                     Height="120" Width="60" 
                                     ImageAlign="Middle" ToolTip="Athletics" 
                                     OnClick="Athletics_Click" />
                                     
                                     
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:ImageButton ID="Badminton" 
                                     runat="server" ImageAlign="Middle" 
                                     ImageUrl="~/image buttons/badminton.png" 
                                     Height="150" Width="100" 
                                     ToolTip="Badminton" 
                                     OnClick="Badminton_Click"/>
                                     
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                  <asp:ImageButton ID="BB" runat="server" 
                                      ImageAlign="Middle" 
                                      ImageUrl="~/image buttons/BB.png" 
                                      Height="120" Width="70" 
                                      ToolTip="Basketball" 
                                      OnClick="BB_Click"/>
                                     
                             </div>
                          </div>
                        <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:ImageButton ID="Chess" 
                                     runat="server" ImageAlign="Middle" 
                                     ImageUrl="~/image buttons/Chess.png" 
                                     Height="120" Width="100" ToolTip="Chess" 
                                     OnClick="Chess_Click"/> 
                                     
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:ImageButton ID="NB" runat="server" 
                                     ImageAlign="Middle" 
                                     ImageUrl="~/image buttons/netball.png" 
                                     Height="120" Width="120" 
                                     ToolTip="Netball" OnClick="NB_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:ImageButton ID="Squash" 
                                     runat="server" ImageAlign="Middle" 
                                     ImageUrl="~/image buttons/Squash.png" 
                                     Height="120" Width="120" 
                                     ToolTip="Squash" 
                                     OnClick="Squash_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:ImageButton ID="Swimming" 
                                     runat="server" ImageAlign="Middle" 
                                     ImageUrl="~/image buttons/swimming2.png" 
                                     Height="120" Width="112" 
                                     ToolTip="Swimming" 
                                     OnClick="Swimming_Click"/>
                             </div>
                          </div>
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:ImageButton ID="Tennis" 
                                     runat="server" ImageAlign="Middle" 
                                     ImageUrl="~/image buttons/NewTennis.png" 
                                     Height="120" Width="170" 
                                     ToolTip="Tennis" 
                                     OnClick="Tennis_Click"/>
                              </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:ImageButton ID="TT" runat="server" 
                                     ImageAlign="Middle" 
                                     ImageUrl="~/image buttons/table tennis.png" 
                                     Height="120" Width="121" 
                                     ToolTip="Table Tennis" 
                                     OnClick="TT_Click"/>
                             </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:ImageButton ID="VB" runat="server" 
                                     ImageAlign="Middle" 
                                     ImageUrl="~/image buttons/VB.png" 
                                     Height="100" Width="100" 
                                     ToolTip="Volleyball" 
                                     OnClick="VB_Click"/>
                             </div>
                             
                          </div>
        </section>
</div>
  
    </form>

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



    

    
</body>
</html>
