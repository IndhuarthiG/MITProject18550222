<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sports Schedule.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Sports_Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <!-- themefy-icon -->
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
  <!-- slick slider -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <!-- venobox popup -->
  <link rel="stylesheet" href="plugins/Venobox/venobox.css">
  <!-- aos -->
  <link rel="stylesheet" href="plugins/aos/aos.css">

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="images/favicon.ico" type="image/x-icon">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section class="section-lg service-bg-image position-relative" style="background-image: url(images/backgrounds/service-page-bg.png);">
        <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <center><h3>Sports Schedule</h3></center>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-12 mx-auto text-left">
                        <asp:TextBox ID="TextBox6" 
                             CssClass="form-control" runat="server" 
                             placeholder="Enter Sport" Height="60px" 
                             Width="500px" OnTextChanged="TextBox6_TextChanged" AutoCompleteType="Disabled"></asp:TextBox>
                      </div>
                         </div>
                         <br />
                         <br />
                         <div class="row">
                             
                             <asp:GridView class="table table-striped table table-bordered" 
                             ID="GridView1" runat="server" 
                             AutoGenerateColumns="False" 
                             PageSize="8" DataKeyNames="ID" 
                             AllowSorting="True" ShowHeaderWhenEmpty="true" EmptyDataText="Enter your correct Sport!">
                             <Columns>
                                 <asp:BoundField DataField="Coach_ID" 
                                     HeaderText="ID" InsertVisible="False" 
                                     ReadOnly="True" SortExpression="Coach_ID" 
                                     Visible="False" />
                                 <asp:BoundField DataField="Title" 
                                     HeaderText="Title" 
                                     SortExpression="Title" />
                                 <asp:BoundField DataField="FirstName" 
                                     HeaderText="FirstName" 
                                     SortExpression="FirstName" />
                                 <asp:BoundField DataField="Surname" 
                                     HeaderText="Surname" 
                                     SortExpression="Surname" />
                                 <asp:BoundField DataField="SportName" 
                                     HeaderText="SportName" 
                                     SortExpression="SportName" />
                                

                             </Columns>
                             <HeaderStyle HorizontalAlign="Center" 
                                 Font-Bold="True" ForeColor="#339966" />
                         </asp:GridView>
                         </div>
                         <div class="row">
                            <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-success btn-block btn-lg" 
                                     ID="Button6" runat="server" 
                                     Text="Schedule" Visible="False" OnClick="Button6_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                                     
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-success btn-block btn-lg" 
                                     ID="Button23" runat="server" 
                                     Text="Attendance" Visible="False" OnClick="Button23_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-success btn-block btn-lg" 
                                     ID="Button24" runat="server" 
                                     Text="Team Selection" Visible="False" OnClick="Button24_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                                     
                             </div>

                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-success btn-block btn-lg" 
                                     ID="Button14" runat="server" 
                                     Text="Participants" Visible="False" OnClick="Button14_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                            </div>

                          </div>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-danger btn-block btn-lg" 
                                     ID="Button3" runat="server" 
                                     Text="Schdule" Visible="False" OnClick="Button3_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-danger btn-block btn-lg" 
                                     ID="Button12" runat="server" 
                                     Text="Participants" Visible="False" OnClick="Button12_Click1" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                              </div>

                         </div>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" 
                                     ID="Button4" runat="server" 
                                     Text="Schedule" Visible="False" OnClick="Button4_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                              </div>

                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" 
                                     ID="Button25" runat="server" 
                                     Text="Attendance" Visible="False" OnClick="Button25_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                                     
                             </div>

                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" 
                                     ID="Button26" runat="server" 
                                     Text="Team Selection" Visible="False" OnClientClick="target ='_blank';" OnClick="Button26_Click" UseSubmitBehavior="False" /> 
                                     
                             </div>

                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" 
                                     ID="Button13" runat="server" 
                                     Text="Participants" Visible="False" OnClick="Button13_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                                     
                             </div>

                         </div>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-primary btn-block btn-lg" 
                                     ID="Button5" runat="server" 
                                     Text="Schedule" Visible="False" OnClick="Button5_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                               </div>
                                                          
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-primary btn-block btn-lg" 
                                     ID="Button15" runat="server" 
                                     Text="Participants" Visible="False" OnClick="Button15_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                                     
                             </div>
                          </div>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-warning btn-block btn-lg" 
                                     ID="Button7" runat="server" 
                                     Text="Schedule" Visible="False" OnClick="Button7_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                              </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-warning btn-block btn-lg" 
                                     ID="Button16" runat="server" 
                                     Text="Participants" Visible="False" OnClick="Button16_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" /> 
                             </div>
                          </div>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" ID="Button8" runat="server" Text="Netball" Visible="False" OnClick="Button8_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                             </div>

                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" ID="Button27" runat="server" Text="Attendance" Visible="False" OnClientClick="target ='_blank';" OnClick="Button27_Click" UseSubmitBehavior="False" />
                             </div>

                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" ID="Button28" runat="server" Text="Team Selection" Visible="False" OnClientClick="target ='_blank';" OnClick="Button28_Click" UseSubmitBehavior="False" />
                             </div>


                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" ID="Button17" runat="server" Text="Participants" Visible="False" OnClick="Button17_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                             </div>
                             </div>
                         <br />
                         <br />
                         <div class ="row">
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button9" runat="server" Text="Squash" Visible="False" OnClick="Button9_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                             </div>
                            <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button18" runat="server" Text="Participants" Visible="False" OnClick="Button18_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                             </div>
                          </div>
                         <br />
                         <br />
                            <div class ="row">
                                <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-dark btn-block btn-lg" ID="Button10" runat="server" Text="Swimming" Visible="False" OnClick="Button10_Click" UseSubmitBehavior="False" />
                             </div>
                             <div class="d-grid gap-2 col-3 mx-auto">
                                 <asp:Button class="btn btn-dark btn-block btn-lg" ID="Button19" runat="server" Text="Participants" Visible="False" OnClick="Button19_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                             </div>

                            </div>
                         <br />
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-warning btn-block btn-lg" ID="Button1" runat="server" Text="Tennis" Visible="False" OnClick="Button1_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                              </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-warning btn-block btn-lg" ID="Button20" runat="server" Text="Participants" Visible="False" OnClick="Button20_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                              </div>

                             </div>
                         <div class ="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Table Tennis" Visible="False" OnClick="Button2_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                             </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" ID="Button21" runat="server" Text="Participants" Visible="False" OnClick="Button21_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                             </div>

                          </div>
                         <br />
                         <br />
                         <div class ="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button11" runat="server" Text="Volleyball" Visible="False" OnClick="Button11_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                             </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button22" runat="server" Text="Participants" Visible="False" OnClick="Button22_Click" OnClientClick="target ='_blank';" UseSubmitBehavior="False" />
                             </div>

                         </div>
                   </div>
                </div>
            </div>
        </div>
     </div>
    
    <!-- background shapes -->
    <img class="service-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="">
    <img class="service-bg-2 left-right-animation" src="images/background-shape/seo-half-cycle.png" alt="">
    <img class="service-bg-3 up-down-animation" src="images/background-shape/team-bg-triangle.png" alt="">
    <img class="service-bg-4 left-right-animation" src="images/background-shape/green-dot.png" alt="">
    <img class="service-bg-5 up-down-animation" src="images/background-shape/team-bg-triangle.png" alt="">
</section>
</asp:Content>
