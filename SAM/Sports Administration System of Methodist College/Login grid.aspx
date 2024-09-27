<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login grid.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Login_grid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
  <meta charset="utf-8">
  <title>Admin Login</title>

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
        <h2 style="color: #008080">Login Table</h2>
    <br />
    <br />
    <br />
        <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                                         
                     <div class="d-grid gap-2 col-9 text-left">
                        <div class="row">
                        <div class="col">
                        <asp:TextBox ID="TextBox6" 
                             CssClass="form-control" runat="server" 
                             placeholder="Search" Height="60px" 
                             Width="500px"></asp:TextBox>
                          </div>
                          <div class="col">
                         <button runat="server" type="submit" onserverclick="Unnamed_ServerClick" style="line-height:50px;width:50px;"><i class="fa fa-search"></i></button>
                          </div>
                        </div>
                      </div>
                    <div class="d-grid gap-2 col-3 mx-auto">
                        <asp:Button ID="Button2" 
                              class="btn btn-primary ml-lg-3 primary-shadow" 
                              runat="server" Text="Add" 
                              Height="50px" OnClick="Button2_Click" 
                             Width="150px" UseSubmitBehavior="False" OnClientClick="target ='_blank';"/> 
                            
                            
                      </div>
                  </div>
                
                               
                <br />
            <asp:GridView ID="GridView1" 
                runat="server" AllowPaging="True" 
                AllowSorting="True" 
                AutoGenerateColumns="False" 
                CssClass="table table-bordered table-hover" 
                OnRowEditing="GridView1_RowEditing"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowUpdating="GridView1_RowUpdating"
                OnRowDeleting="GridView1_RowDeleting"
                OnRowDataBound="GridView1_RowDataBound"
                OnPageIndexChanging="GridView1_PageIndexChanging"
                OnSorting="GridView1_Sorting"
                DataKeyNames="ID"
                Font-Names="Poppins" 
                ForeColor="#336666">
                <Columns>
                    <asp:TemplateField HeaderText="ID" 
                        InsertVisible="False" 
                        SortExpression="ID" Visible="False">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" 
                                Text='<%# Eval("ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" 
                                Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserName" 
                        SortExpression="UserName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" 
                                runat="server" 
                                Text='<%# Bind("UserName") %>' Height="40" Width="200" CssClass="form-control"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" 
                                Text='<%# Bind("UserName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password" 
                        SortExpression="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" 
                                runat="server" 
                                Text='<%# Bind("Password") %>' Height="40" Width="100" CssClass="form-control"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" 
                                Text='<%# Bind("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Type" 
                        SortExpression="Type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" 
                                runat="server" 
                                Text='<%# Bind("Type") %>' Width="100" Height="40" CssClass="form-control"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" 
                                Text='<%# Bind("Type") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" 
                        SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" 
                                runat="server" 
                                Text='<%# Bind("Email") %>' Height="40" Width="200" CssClass="form-control"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" 
                                Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" 
                        SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" 
                                runat="server" 
                                Text='<%# Bind("Name") %>' Height="40" Width="150" CssClass="form-control"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" 
                                Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="~/adminimages/edit-icon-png-3601.png" Width="45" Height="45" CommandName="Edit" ImageAlign="NotSet" ToolTip="Edit" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:ImageButton ID="btnUpdate" runat="server" ImageUrl="~/adminimages/Save-PNG-Images-HD.png" Width="40" Height="40" CommandName="Update" ToolTip="Save Changes" UseSubmitBehavior="False"/>&nbsp;
                                <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/adminimages/Cancel.png" Width="40" Height="40" CommandName="Cancel" ToolTip="Cancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="btndel" runat="server" ImageUrl="~/adminimages/delete.png" Width="40" Height="40" CommandName="Delete" OnClientClick='return confirm("Delete Users?");' ToolTip="Delete"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#336666" 
                    Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" 
                    Height="20px" />
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
   
    

</body>
</html>
