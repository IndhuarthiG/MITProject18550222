<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assign new Teacher to Sport.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Assign_new_Teacher_to_Sport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
  <meta charset="utf-8">
  <title>Admin Assign Teacher to sport</title>

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
    <br />
    <br />
        
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class ="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h2 style="color: #008080">Assign Teacher to Sport</h2>
                        </center>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  
                  <div class="row">
                      <div class="col-md-3">
                        <label style="font-family: Poppins; font-size: large; font-weight: normal;">Teacher_ID</label>
                        <div class="form-group">
                           <div class="input-group">
                               <%--<asp:DropDownList class="form-control" 
                                ID="DropDownList2" runat="server" 
                                Height="60" 
                                   OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                
                                    <asp:ListItem Text="Select" Value="Select" />
                            </asp:DropDownList>--%>
                              <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Teacher_ID" Height="60"></asp:TextBox>
                               <asp:LinkButton class="btn btn-secondary" 
                                   ID="LinkButton2" runat="server" 
                                   CssClass="btn-secondary" Height="60px" 
                                   Width="40px" 
                                   OnClick="LinkButton2_Click"> 
                                   <center><i class="fas fa-check-circle" aria-orientation="horizontal"></i></center></asp:LinkButton>
                               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                                   runat="server" 
                                   ErrorMessage="Teacher_ID is a required field" 
                                   ControlToValidate="TextBox3" 
                                   ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
                           </div>
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                runat="server" 
                                ErrorMessage="Title is a valid field name" 
                                ControlToValidate="DropDownList1" 
                                ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
                        </div>
                     </div>

                      <div class="col-md-1">
                        <label style="font-family: Poppins; font-size: large; font-weight: normal;">Title</label>
                        <div class="form-group">
                           <%--<asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Height="60">
                                    <asp:ListItem Text="Select" Value="Select" />
                                    <asp:ListItem Text="Miss" Value="Miss"/>
                                    <asp:ListItem Text="Mrs" Value="Mrs" />
                           </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server" 
                                ErrorMessage="Title is a valid field name" 
                                ControlToValidate="DropDownList1" 
                                ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Title" Height="60" ReadOnly="True"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server" 
                                ErrorMessage="Title is a required field" 
                                ControlToValidate="TextBox1" 
                                ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
                        </div>
                     </div>
                     
                     <div class="col-md-3">
                        <label style='font-family: Poppins; font-size: large; font-weight: normal;'>First Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="First Name" Height="60" ReadOnly="True"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                runat="server" 
                                ErrorMessage="First Name is a required field" 
                                ControlToValidate="TextBox2" 
                                ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
                        </div>
                     </div>
                      <div class="col-md-3">
                        <label style='font-family: Poppins; font-size: large; font-weight: normal;'>Surname</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Surname" Height="60" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                runat="server" 
                                ErrorMessage="Surname is a required field" 
                                ControlToValidate="TextBox8" 
                                ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
                        </div>
                     </div>
                      <div class="col-md-2">
                        <label style="font-family: Poppins; font-size: large; font-weight: normal;">Sport Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" 
                                ID="DropDownList3" runat="server" 
                                Height="60px">
                            
                                <asp:ListItem Text="Select" Value="Select" />
                            </asp:DropDownList>
                        </div>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                             runat="server" 
                             ErrorMessage="Sport Name is a required field" 
                             ControlToValidate="DropDownList3" 
                             ForeColor="#CC0000"></asp:RequiredFieldValidator>
                     </div>
                  </div>
                            
                <br />
                  <div class="row">
                      <div class="d-grid gap-2 col-6 mx-auto text-left">
                        <asp:Button ID="Button2" 
                              class="btn btn-primary ml-lg-3 primary-shadow" 
                              runat="server" Text="Add" 
                              OnClick="Button2_Click"/> 
                               
                              
                               
                              
                      </div>
                    
                     <div class="d-grid gap-2 col-6 mx-auto text-right">
                        <%--<asp:Button ID="Button1" 
                             class="btn btn-secondary" 
                             runat="server" Text="View" 
                             OnClick="Button1_Click"/>--%>
                      </div>
                  </div>
               
            </div>
            </div>
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
