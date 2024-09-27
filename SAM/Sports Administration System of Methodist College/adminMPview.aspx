<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminMPview.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.adminMPview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
  <meta charset="utf-8">
  <title>Admin Registration view</title>

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

   <!--image enlarge-->
   <link href="imgjs/jquery-ui.css" rel="stylesheet" />
    <script type="text/javascript" src="jimage/jquery.min.js"></script>
    <script src="jimage/jquery.elevateZoom-3.0.8.min.js"></script>
    <%--<script type="text/javascript">
        $(function () {
            $("[id*=GridView1] img").elevateZoom({
                cursor: 'pointer',
                imageCrossfade: true,
            });
        });
    </script>
    <script type="text/javascript">

        function LoadDiv(url) {

            var img = new Image();

            var bcgDiv = document.getElementById("divBackground");

            var imgDiv = document.getElementById("divImage");

            var imgFull = document.getElementById("Receipts");

            var imgLoader = document.getElementById("imgLoader");



            imgLoader.style.display = "block";


            img.onload = function () {

                imgFull.src = img.src;

                imgFull.style.display = "block";
                imgLoader.style.display = "none";

            };

            img.src = url;

            var width = document.body.clientWidth;

            if (document.body.clientHeight > document.body.scrollHeight) {

                bcgDiv.style.height = document.body.clientHeight + "px";

            }

            else {

                bcgDiv.style.height = document.body.scrollHeight + "px";

            }



            imgDiv.style.left = (width - 650) / 2 + "px";

            imgDiv.style.top = "20px";

            bcgDiv.style.width = "100%";



            bcgDiv.style.display = "block";

            imgDiv.style.display = "block";


            return false;

        }

        function HideDiv() {

            var bcgDiv = document.getElementById("divBackground");

            var imgDiv = document.getElementById("divImage");

            var imgFull = document.getElementById("Receipts");

            if (bcgDiv != null) {

                bcgDiv.style.display = "none";

                imgDiv.style.display = "none";

                imgFull.style.display = "none";

            }

        }
    </script>
    <style type="text/css">

     body

     {

        margin:0;

        padding:0;

        height:100%;

     }

     .modal

     {

        display: none;

        position: absolute;

        top: 0px;

        left: 0px;

        background-color:black;

        z-index:100;

        opacity: 0.8;

        filter: alpha(opacity=60);

        -moz-opacity:0.8;

        min-height: 100%;

     }

     #divImage

     {

        display: none;

        z-index: 1000;

        position: fixed;

        top: 0;

        left: 0;

        background-color:White;

        height: 550px;

        width: 600px;

        padding: 3px;

        border: solid 1px black;

     }

        .auto-style1 {
            text-align: center;
        }

   </style>--%>

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
    <h2 style="color: #008080">Registrations List
        </h2>
        <br />
        <br />
    <form id="form1" runat="server">
        <div class="container">
            
            <div class="row">
                                         
                     <div class="d-grid gap-2 col-9 mx-auto text-left">
                        <div class="row">
                        <div class="col">
                        <asp:TextBox ID="TextBox6" 
                             CssClass="form-control" runat="server" 
                             placeholder="Search" Height="60px" 
                             Width="500px"></asp:TextBox>
                          </div>
                          <div class="col">
                         <button runat="server" type="submit" style="line-height:50px;width:50px;"><i class="fa fa-search"></i></button>
                          </div>
                        </div>
                      </div>
                    <div class="d-grid gap-2 col-3 mx-auto">
                        <asp:Button ID="Button2" 
                              class="btn btn-primary ml-lg-3 primary-shadow" 
                              runat="server" Text="Go to Reports" NavigateUrl="#registrations"/> 
                        <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#registrations">Go to Reports</asp:HyperLink>--%>  
                          
                      </div>
                
                  </div>
            <br />
            <asp:GridView ID="GridView1" 
                runat="server" AllowPaging="True" 
                AllowSorting="True" 
                AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#336666" 
                BorderStyle="Double" BorderWidth="3px" 
                CssClass="table table-bordered table-hover" 
                DataKeyNames="ID" 
                OnRowDeleting="GridView1_RowDeleting"
                OnPageIndexChanging="GridView1_PageIndexChanging"
                OnSorting="GridView1_Sorting"
                Font-Names="Poppins" 
                Width="1000px">
                <Columns>
                    <asp:TemplateField HeaderText="AdmissionNo" 
                        SortExpression="AdmissionNo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" 
                                runat="server" 
                                Text='<%# Bind("AdmissionNo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" 
                                Text='<%# Bind("AdmissionNo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="FirstName" 
                        SortExpression="FirstName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" 
                                runat="server" 
                                Text='<%# Bind("FirstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" 
                                Text='<%# Bind("FirstName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Surname" 
                        SortExpression="Surname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" 
                                runat="server" 
                                Text='<%# Bind("Surname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" 
                                Text='<%# Bind("Surname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SelectedSport" 
                        SortExpression="SelectedSport">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" 
                                runat="server" 
                                Text='<%# Bind("SportName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" 
                                Text='<%# Bind("SportName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Month" 
                        SortExpression="Month">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" 
                                runat="server" 
                                Text='<%# Bind("Month") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" 
                                Text='<%# Bind("Month") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Of Payment" 
                        SortExpression="Date Of Payment">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" 
                                runat="server" 
                                Text='<%# Bind("DateOfPayment", "{0:MM/dd/yyyy}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" 
                                Text='<%# Bind("DateOfPayment", "{0:MM/dd/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Receipt" 
                        SortExpression="Receipt">
                        <%--<EditItemTemplate>
                            <asp:TextBox ID="TextBox5" 
                                runat="server" 
                                Text='<%# Bind("Receipt") %>'></asp:TextBox>
                        </EditItemTemplate>--%>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("Receipt") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                            <%--<asp:Label ID="Label6" runat="server" 
                                Text='<%# Bind("Receipt") %>'></asp:Label>--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    
                    
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:ImageButton ID="Delete" runat="server" ImageUrl="~/adminimages/delete.png" Height="40" Width="40" CommandName="Delete" OnClientClick='return confirm("Delete This Registration?");' />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <EditRowStyle Font-Names="Poppins" 
                    ForeColor="#336666" />
                <FooterStyle BackColor="#336666" 
                    ForeColor="White" 
                    HorizontalAlign="Center" />
                <HeaderStyle BackColor="#336666" 
                    ForeColor="White" />
                <PagerStyle BackColor="#336666" 
                    Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" />
            </asp:GridView>
            <br />
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

<!--Popup-->
<link href="imgjs/jquery-ui.css" rel="stylesheet" />
<script src="imgjs/jquery-ui.min.js"></script>
<script src="imgjs/jquery.min.js"></script>


    

    
</body>
</html>
