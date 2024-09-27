<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminAddcoachPerformance.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.adminAddcoachPerformance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    
    
  <meta charset="utf-8">
  <title>Add Coach Performance</title>

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
    <div class="main" aria-setsize="2000">
        <h2 style="color: #008080"> Add Coach Performance</h2>
    <br />
    <br />
    <br />
        <form id="form1" runat="server">
        <div class="container">
         <div class="row">
       <div class="col-md-4">
            <label>Coach ID</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:TextBox ID="TextBox6" runat="server" placeholder="Coach ID" CssClass="form-control" AutoCompleteType="Disabled" Height="50" ReadOnly="True"></asp:TextBox>
                                   
                               </div>
           </div>
       <div class="col-4">
                    <asp:Button ID="Button2" class="btn btn-primary ml-lg-3" runat="server" Text="Next" OnClick="Button2_Click"/>  
                    
                </div>
       <br />
       <br />
       <br />
                     
   </div>
        <div class="row">
           <div class="col-md-4">
            <label>Title</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:TextBox ID="TextBox1" runat="server" placeholder="Title" CssClass="form-control"  AutoCompleteType="Disabled" Height="50" ReadOnly="True"></asp:TextBox>
                                  
                               </div>
           </div>
       </div>
        
        <div class="row">
           <div class="col-md-4">
            <label>First Name</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:TextBox ID="TextBox2" runat="server" placeholder="First Name" CssClass="form-control"  AutoCompleteType="Disabled" Height="50" ReadOnly="True"></asp:TextBox>
                                  
                               </div>
           </div>
       </div>
        <div class="row">
           <div class="col-md-4">
            <label>Surname</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:TextBox ID="TextBox3" runat="server" placeholder="Surname" CssClass="form-control"  AutoCompleteType="Disabled" Height="50" ReadOnly="True"></asp:TextBox>
                                  
                               </div>
           </div>
       </div>
        <div class="row">
           <div class="col-md-4">
            <label>Sport</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                                             <asp:ListItem Text="Select" Value="Select" />
                                   
                                         </asp:DropDownList>
                                  
                               </div>
           </div>
       </div>
            <div class="row">
           <div class="col-md-4">
            <label>Type</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:TextBox ID="TextBox4" runat="server" placeholder="Type" CssClass="form-control" AutoCompleteType="Disabled" Height="50" ReadOnly="True"></asp:TextBox>
                                  
                               </div>
           </div>
       </div>
        <div class="row">
           <div class="col-md-4">
            <label>Tournament</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                             <asp:ListItem Text="Select" Value="Select" />
                                    </asp:DropDownList>
                                  
                               </div>
           </div>
       </div>
        <div class="row">
           <div class="col-md-4">
            <label>Result</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                     <asp:ListItem Text="Select" Value="Select" />
                                    <asp:ListItem Text="Won" Value="Won"/>
                                   <asp:ListItem Text="Draw" Value="Draw"/>
                                    <asp:ListItem Text="Lost" Value="Lost"/>
                                    
                                    </asp:DropDownList>
                                  
                               </div>
           </div>
       </div>
        <div class="row">
           <div class="col-md-4">
            <label>Performance</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                             <asp:ListItem Text="Select" Value="Select" />
                                             <asp:ListItem Text="10" Value="10"/>
                                             <asp:ListItem Text="5" Value="5" />
                                             <asp:ListItem Text="2" Value="2" />
                                             </asp:DropDownList>
                                  
                               </div>
           </div>
       </div>                   
                     
                        
                      
                    
                  
                
                               
                <br />
            <div class="row">
                
                <div class="col-4">
                    <asp:Button ID="Button1" class="btn btn-info ml-lg-3" runat="server" Text="Save"/>  
                    
                </div>
            <div class="col-4">
                    <asp:Button ID="Button3" class="btn btn-danger ml-lg-3" runat="server" Text="View"/>  
                    
                </div>
            </div>
            
            
            
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
