<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminrosterarchery.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.adminrosterarchery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
  <meta charset="utf-8"/>
  <title>Admin Archery Roster</title>

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

    <!--Calender plugin-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css"/>
  <link rel="stylesheet" href="/resources/demos/style.css"/>

    <!--scrolllbar-->
    <style type="text/css">  
            .scrolling {  
                position: absolute;  
            }  
              
            .gvWidthHight {  
                overflow: scroll;  
                width: 1250px;  
            }  
        </style> 
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
    <h2 style="color: #008080"> Archery Roster
        </h2>
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
                         <button runat="server" onserverclick="Unnamed_ServerClick" type="submit" style="line-height:50px;width:50px;"><i class="fa fa-search"></i></button>
                          </div>
                        </div>
                      </div>
                    <%--<div class="d-grid gap-2 col-3 text-left">
                        <asp:Button ID="Button2" 
                              class="btn btn-primary ml-lg-3 primary-shadow" 
                              runat="server" Text="Add" 
                              Height="50px" 
                            
                            Width="150px" 
                            OnClick="Button2_Click" UseSubmitBehavior="False" OnClientClick="target ='_blank';"/> 
                            
                      </div>--%>
                  </div>
            <br />

            <div class="gvWidthHight">
                <asp:GridView ID="GridView1" 
                runat="server" AllowPaging="True" 
                AllowSorting="True" 
                AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#336666" 
                BorderStyle="Double" BorderWidth="3px" 
                CssClass="table table-bordered table-hover" 
                DataKeyNames="ID" 
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating"
                OnRowDeleting="GridView1_RowDeleting"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnPageIndexChanging="GridView1_PageIndexChanging"
                OnSorting="GridView1_Sorting"
                Font-Names="Poppins" 
                Width="1000px">
                <Columns>
                    <asp:BoundField DataField="ID" 
                        HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" 
                        Visible="False" />
                    <asp:TemplateField HeaderText="Teacher_ID" 
                        SortExpression="Teacher_ID" 
                        Visible="False">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" 
                                runat="server" 
                                Text='<%# Bind("Teacher_ID") %>' Width="100px" Height="40px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" 
                                Text='<%# Bind("Teacher_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title" 
                        SortExpression="Title">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" 
                                runat="server" 
                                Text='<%# Bind("Title") %>' Width="60px" Height="40px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" 
                                Text='<%# Bind("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Surname" 
                        SortExpression="Surname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" 
                                runat="server" 
                                Text='<%# Bind("Surname") %>' Width="200px" Height="40px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" 
                                Text='<%# Bind("Surname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EmailID" 
                        SortExpression="EmailID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" 
                                runat="server" 
                                Text='<%# Bind("EmailID") %>' Width="180px" Height="40px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" 
                                Text='<%# Bind("EmailID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Sport_ID" 
                        HeaderText="Sport_ID" 
                        SortExpression="Sport_ID" 
                        Visible="False" />
                    <asp:BoundField DataField="SportName" 
                        HeaderText="SportName" 
                        SortExpression="SportName" 
                        Visible="False" />
                    <asp:TemplateField HeaderText="Date" 
                        SortExpression="Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" 
                                runat="server" 
                                Text='<%# Bind("Date", "{0:MM/dd/yyyy}") %>' Width="140px" Height="40px" CssClass="form-control Date" class="Date" AutoCompleteType="Disabled"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" 
                                Text='<%# Bind("Date", "{0:MM/dd/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time" 
                        SortExpression="Time">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" 
                                runat="server" 
                                Text='<%# Bind("Time") %>' Width="140px" Height="40px" CssClass="form-control"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" 
                                Text='<%# Bind("Time") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status" 
                        SortExpression="Status">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" 
                                runat="server" 
                                Text='<%# Bind("Status") %>' Width="150px" Height="40px" CssClass="form-control"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" 
                                Text='<%# Bind("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Requests" 
                        SortExpression="Requests">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" 
                                runat="server" 
                                Text='<%# Bind("Requests") %>' Width="100px" Height="40px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" 
                                Text='<%# Bind("Requests") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Addedby" 
                        SortExpression="Addedby">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" 
                                runat="server" 
                                Text='<%# Bind("Addedby") %>' Width="100px" Height="40px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" 
                                Text='<%# Bind("Addedby") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Flag" 
                        HeaderText="Flag" SortExpression="Flag" 
                        Visible="False" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <%--<asp:LinkButton ID="LinkButton1" 
                                runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" 
                                runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel"></asp:LinkButton>--%>
                            <asp:ImageButton ID="btnUpdate" runat="server" ImageUrl="~/adminimages/Save-PNG-Images-HD.png" Width="40" Height="40" CommandName="Update" ToolTip="Save Changes"/>&nbsp;
                                <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/adminimages/Cancel.png" Width="40" Height="40" CommandName="Cancel" ToolTip="Cancel" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <%--<asp:LinkButton ID="LinkButton1" 
                                runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" 
                                runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="Delete"></asp:LinkButton>--%>
                            <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="~/adminimages/edit-icon-png-3601.png" Width="45" Height="45" CommandName="Edit" ImageAlign="NotSet" ToolTip="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="false">
                            <ItemTemplate>
                                <asp:ImageButton ID="btndel" runat="server" ImageUrl="~/adminimages/delete.png" Width="40" Height="40" CommandName="Delete" OnClientClick='return confirm("Delete roster?");' ToolTip="Delete"/>

                            </ItemTemplate>
                            
                        </asp:TemplateField>
                    <%--<asp:TemplateField HeaderText="CheckAll">
                    <HeaderTemplate>
                        <asp:CheckBox ID="chkSelectAll" runat="server"
                                      AutoPostBack="true"
                                      OnCheckedChanged="chkSelectAll_CheckedChanged"/>
                    </HeaderTemplate>
                        <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server"/>
                        </ItemTemplate>
                     </asp:TemplateField>--%>
                </Columns>
                <EditRowStyle Font-Names="Poppins" 
                    ForeColor="#336666" />
                <HeaderStyle BackColor="#336666" 
                    ForeColor="White" Font-Bold="True" 
                    HorizontalAlign="Center" />
                <PagerStyle BackColor="#336666" 
                    Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" />
            </asp:GridView>
            </div>
            
            <br />
            <div class="row">
                <div class="col-4">
                    <asp:Button ID="btnSendMail" class="btn btn-primary ml-lg-3 alert-success" runat="server" Text="Roster Alert" OnClick="btnSendMail_Click" UseSubmitBehavior="False" OnClientClick="this.disabled='true'; this.value='Please wait....';"/>  
                </div>
                <div class="col-4">
                    <asp:Button ID="Button1" class="btn btn-danger ml-lg-3" runat="server" Text="Cancel Alert" OnClick="Button1_Click" UseSubmitBehavior="False" OnClientClick="this.disabled='true'; this.value='Please wait....';"/>  
                </div>
                <div class="col-4">
                    <asp:Button ID="Button2" class="btn btn-info ml-lg-3" runat="server" Text="Check" OnClick="Button2_Click"/>  
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
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
      $(function () {
          $(".Date").datepicker({
              beforeShowDay: function (date) {
                  var day = date.getDay();
                  return [(day != 0 && day != 2 && day != 4 && day != 5 && day != 6)];
              }
          });
      });
  </script>




    

    
</body>

</html>
