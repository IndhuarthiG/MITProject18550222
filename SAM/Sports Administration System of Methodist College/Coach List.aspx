<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coach List.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Athletic_roster" %>

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
                </ul>
            </li>
            <li><a href="#" class="duty-btn"><i class="fas fa-clipboard-list"></i>&nbsp Duty Teachers
                <span class= "fas fa-caret-down fourth"></span>
                </a>
                <ul class="duty-show">
                    <li><a href="adminAssignTeacher.aspx">Complete list</li>
                    <li><a href="adminduty Archery.aspx">Archery</a></li>
                    <li><a href="adminduty Athletics.aspx">Athletics</a></li>
                    <li><a href="adminduty Basketball.aspx">Basketball</a></li>
                    <li><a href="adminduty Badminton.aspx">Badminton</a></li>
                    <li><a href="adminduty Chess.aspx">Chess</a></li>
                    <li><a href="adminduty Netball.aspx">Netball</a></li>
                    <li><a href="adminduty Swimming.aspx">Swimming</a></li>
                    <li><a href="adminduty TableTennis.apsx">Table Tennis</a></li>
                    <li><a href="adminduty Tennis.aspx">Tennis</a></li>
                    <li><a href="adminduty Squash.aspx">Squash</a></li>
                    <li><a href="adminduty Volleyball.aspx">Volleyball</a></li>
                </ul>
            </li>
            <li><a href="adminRoster.aspx"><i class="fas fa-clipboard-list"></i>&nbsp Roster</a></li>
            <li><a href="adminParticipants.aspx"><i class="fas fa-people-arrows"></i>&nbsp Participants</a></li>
            <li><a href="adminInventory.aspx"><i class="fas fa-boxes"></i>&nbsp Inventory</a></li>
            <li><a href="#"><i class="fas fa-trophy"></i>&nbsp Achievers</a> </li>
            <li><a href="AdminReports.aspx"><i class="fas fa-file-alt"></i>&nbsp Reports</a></li>
            <li><a href="adminEmail.aspx"><i class="fas fa-envelope"></i>&nbsp Messages</a></li>
            <li><a href="#"><i class="fas fa-sign-out-alt"></i>&nbsp Logout</a></li>

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
        $('.duty-btn').click(function () {
            $('nav ul.duty-show').toggleClass("show3");
            $('nav ul.fourth').toggleClass("rotate");
        });
        $('nav ul li').click(function () {
            $(this).addClass("active").siblings().removeClass("active");
        });
    </script>

    <!--End of side bar-->

<!--Start of main content-->
    <div class="main" aria-setsize="2000">
        <h2 style="color: #008080">Coach Table</h2>
    <br />
    <br />
    <br />
        <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                                         
                     <div class="d-grid gap-2 col-9 mx-auto text-left">
                        <asp:TextBox ID="TextBox6" 
                             CssClass="form-control" runat="server" 
                             placeholder="Search" Height="60px" 
                             Width="500px"></asp:TextBox>
                      </div>
                    <div class="d-grid gap-2 col-3 mx-auto">
                        <asp:Button ID="Button2" 
                              class="btn btn-primary ml-lg-3 primary-shadow" 
                              runat="server" Text="Add" 
                              Height="50px" 
                            
                            Width="150px" 
                            OnClick="Button2_Click" /> 
                             
                            
                      </div>
                  </div>
                
                               
                <br />
            <asp:GridView ID="GridView1" 
                runat="server" AllowPaging="True" 
                AllowSorting="True" 
                AutoGenerateColumns="False" 
                BackColor="White" CellPadding="1" 
                DataKeyNames="Coach_ID" 
                DataSourceID="SqlDataSource1" 
                Width="850px" 
                
                CssClass="table table-bordered table-hover" 
                ForeColor="#336666">
                <Columns>
                    <asp:TemplateField HeaderText="Title" 
                        SortExpression="Title">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" 
                                runat="server" 
                                Text='<%# Bind("Title") %>' Width="50px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" 
                                Text='<%# Bind("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FirstName" 
                        SortExpression="FirstName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" 
                                runat="server" 
                                Text='<%# Bind("FirstName") %>' Width="150px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" 
                                Text='<%# Bind("FirstName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Surname" 
                        SortExpression="Surname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" 
                                runat="server" 
                                Text='<%# Bind("Surname") %>' Width="200px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" 
                                Text='<%# Bind("Surname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sp_ID" 
                        SortExpression="Sport_ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" 
                                runat="server" 
                                Text='<%# Bind("Sport_ID") %>' Width="50"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" 
                                Text='<%# Bind("Sport_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SportName" 
                        SortExpression="SportName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" 
                                runat="server" 
                                Text='<%# Bind("SportName") %>' Width="150px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" 
                                Text='<%# Bind("SportName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Type" 
                        SortExpression="Type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" 
                                runat="server" 
                                Text='<%# Bind("Type") %>' Width="90px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" 
                                Text='<%# Bind("Type") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact No" 
                        SortExpression="ContactNo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" 
                                runat="server" 
                                Text='<%# Bind("ContactNo") %>' Width="150px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" 
                                Text='<%# Bind("ContactNo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" 
                        SortExpression="EmailID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" 
                                runat="server" 
                                Text='<%# Bind("EmailID") %>' Width="150px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" 
                                Text='<%# Bind("EmailID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <EditItemTemplate>
                            <%--<asp:LinkButton ID="LinkButton1" 
                                runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" 
                                runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel"></asp:LinkButton>--%>
                            <asp:ImageButton ID="btnUpdate" runat="server" ImageUrl="~/adminimages/Save-PNG-Images-HD.png" Width="45" Height="45" CommandName="Update" ToolTip="Save Changes"/>&nbsp;
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
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:ImageButton ID="btndel" runat="server" ImageUrl="~/adminimages/delete.png" Width="40" Height="40" CommandName="Delete" OnClientClick='return confirm("Delete Sport?");' ToolTip="Delete"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#336666" 
                    Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" />
                <PagerStyle BackColor="#336666" 
                    ForeColor="White" 
                    HorizontalAlign="Center" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" 
                runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" 
                DeleteCommand="DELETE FROM [Coach] WHERE [Coach_ID] = @original_Coach_ID AND [Title] = @original_Title AND [FirstName] = @original_FirstName AND [Surname] = @original_Surname AND [Sport_ID] = @original_Sport_ID AND [SportName] = @original_SportName AND [Type] = @original_Type AND [ContactNo] = @original_ContactNo AND [EmailID] = @original_EmailID" 
                InsertCommand="INSERT INTO [Coach] ([Coach_ID], [Title], [FirstName], [Surname], [Sport_ID], [SportName], [Type], [ContactNo], [EmailID]) VALUES (@Coach_ID, @Title, @FirstName, @Surname, @Sport_ID, @SportName, @Type, @ContactNo, @EmailID)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [Coach]" 
                UpdateCommand="UPDATE [Coach] SET [Title] = @Title, [FirstName] = @FirstName, [Surname] = @Surname, [Sport_ID] = @Sport_ID, [SportName] = @SportName, [Type] = @Type, [ContactNo] = @ContactNo, [EmailID] = @EmailID WHERE [Coach_ID] = @original_Coach_ID AND [Title] = @original_Title AND [FirstName] = @original_FirstName AND [Surname] = @original_Surname AND [Sport_ID] = @original_Sport_ID AND [SportName] = @original_SportName AND [Type] = @original_Type AND [ContactNo] = @original_ContactNo AND [EmailID] = @original_EmailID">
                <DeleteParameters>
                    <asp:Parameter Name="original_Coach_ID" 
                        Type="String" />
                    <asp:Parameter Name="original_Title" 
                        Type="String" />
                    <asp:Parameter Name="original_FirstName" 
                        Type="String" />
                    <asp:Parameter Name="original_Surname" 
                        Type="String" />
                    <asp:Parameter Name="original_Sport_ID" 
                        Type="Int32" />
                    <asp:Parameter Name="original_SportName" 
                        Type="String" />
                    <asp:Parameter Name="original_Type" 
                        Type="String" />
                    <asp:Parameter Name="original_ContactNo" 
                        Type="String" />
                    <asp:Parameter Name="original_EmailID" 
                        Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Coach_ID" 
                        Type="String" />
                    <asp:Parameter Name="Title" 
                        Type="String" />
                    <asp:Parameter Name="FirstName" 
                        Type="String" />
                    <asp:Parameter Name="Surname" 
                        Type="String" />
                    <asp:Parameter Name="Sport_ID" 
                        Type="Int32" />
                    <asp:Parameter Name="SportName" 
                        Type="String" />
                    <asp:Parameter Name="Type" 
                        Type="String" />
                    <asp:Parameter Name="ContactNo" 
                        Type="String" />
                    <asp:Parameter Name="EmailID" 
                        Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" 
                        Type="String" />
                    <asp:Parameter Name="FirstName" 
                        Type="String" />
                    <asp:Parameter Name="Surname" 
                        Type="String" />
                    <asp:Parameter Name="Sport_ID" 
                        Type="Int32" />
                    <asp:Parameter Name="SportName" 
                        Type="String" />
                    <asp:Parameter Name="Type" 
                        Type="String" />
                    <asp:Parameter Name="ContactNo" 
                        Type="String" />
                    <asp:Parameter Name="EmailID" 
                        Type="String" />
                    <asp:Parameter Name="original_Coach_ID" 
                        Type="String" />
                    <asp:Parameter Name="original_Title" 
                        Type="String" />
                    <asp:Parameter Name="original_FirstName" 
                        Type="String" />
                    <asp:Parameter Name="original_Surname" 
                        Type="String" />
                    <asp:Parameter Name="original_Sport_ID" 
                        Type="Int32" />
                    <asp:Parameter Name="original_SportName" 
                        Type="String" />
                    <asp:Parameter Name="original_Type" 
                        Type="String" />
                    <asp:Parameter Name="original_ContactNo" 
                        Type="String" />
                    <asp:Parameter Name="original_EmailID" 
                        Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
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
