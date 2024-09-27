<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Application for Sports Positions.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Application_for_Sports_Positions" %>
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

<!-- contact -->
<section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 style="color:#339966" class= "section-title">Application for Sports Positions</h2>
            </div>
        </div>
        <div class="col-lg-12 mx-auto">
                 <div class="card">
                     <div class="card-body">
                          <div class="row">
                             <div class="col-md-4">
                             <label>Admission No</label>
                              <div class="form-group">
                                  <div class="input-group">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox5" runat="server" placeholder="Admission No"></asp:TextBox>
                                  <asp:LinkButton class="btn btn-secondary" 
                                   ID="LinkButton2" runat="server" 
                                   CssClass="btn-secondary" 
                                   Width="40px" ToolTip="Enter Admission No and Click here" OnClick="LinkButton2_Click"> 
                                   
                                   <center><i class="fas fa-check-circle" aria-orientation="horizontal"></i></center></asp:LinkButton>
                              </div>
                              </div>
                              </div>
                            <div class="col-md-4">
                               <label>First name</label>
                              <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox3" runat="server" placeholder="First name" ReadOnly="True"></asp:TextBox>
                              </div>                                                               
                             </div>

                             <div class="col-md-4">
                                <label>Last name</label>
                              <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox4" runat="server" placeholder="Last name" ReadOnly="True"></asp:TextBox>
                              </div>                                                              
                             </div>
                                                            
                         </div>

                         <div class="row">
                                          
                             <div class="col-md-4">
                               <label>Sport</label>
                                <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Sport" TextMode="SingleLine"></asp:TextBox>
                                </div>
                             </div>

                             <div class="col-md-4">
                        <label>Team Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" 
                                ID="DropDownList3" runat="server" 
                                Height="60px">
                            
                                <asp:ListItem Text="Select" Value="Select" />
                            </asp:DropDownList>
                        </div>
                         <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                             runat="server" 
                             ErrorMessage="Team Name is a required field" 
                             ControlToValidate="DropDownList3" 
                             ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
                     </div>
                             <div class="col-md-4">
                               <label>Current Position</label>
                                <div class="form-group">
                                <asp:DropDownList class="form-control" 
                                ID="DropDownList1" runat="server" 
                                Height="60px">
                            
                                <asp:ListItem Text="Select" Value="Select" />
                                <asp:ListItem Text="None" Value="None"/>
                                <asp:ListItem Text="Goal keeper" Value="Goal keeper"/>
                                <asp:ListItem Text="Goal defense" Value="Goal defense"/>
                                <asp:ListItem Text="Wing defense" Value="Wing defense"/>
                                <asp:ListItem Text="Centre" Value="Centre"/>
                                <asp:ListItem Text="Wing attack" Value="Wing attack"/>
                                <asp:ListItem Text="Goal attack" Value="Goal attack"/>
                                <asp:ListItem Text="Goal shooter" Value="Goal shooter"/>
                                <asp:ListItem Text="Point Guard" Value="Point Guard"/>
                                <asp:ListItem Text="Shooting Guard" Value="Shooting Guard"/>
                                <asp:ListItem Text="Centre" Value="Centre"/>
                                <asp:ListItem Text="Power Forward" Value="Power Forward"/>
                                <asp:ListItem Text="Small Forward" Value="Small Forward"/>
                                <asp:ListItem Text="Outside Hitter" Value="Outside Hitter"/>
                                <asp:ListItem Text="Opposite Hitter" Value="Opposite Hitter"/>
                                <asp:ListItem Text="Middle Blocker" Value="Middle Blocker"/>
                                <asp:ListItem Text="Setter" Value="Setter"/>
                                <asp:ListItem Text="Liberto" Value="Liberto"/>
                                <asp:ListItem Text="Defensive Specialist" Value="Defensive Specialist"/>
                                <asp:ListItem Text="Serving Specialist" Value="Serving Specialist"/>
                                <asp:ListItem Text="Captain" Value="Captain"/>
                                <asp:ListItem Text="Vice Captain" Value="Vice Captain"/>
                            </asp:DropDownList>
                                </div>
                             </div>

                       
                         </div>

                         <div class="row">

                             <div class="col-md-4">
                               <label>Applying Position</label>
                               <div class="form-group">
                               <asp:DropDownList class="form-control" 
                                ID="DropDownList2" runat="server" 
                                Height="60px">
                            
                                <asp:ListItem Text="Select" Value="Select" />
                                <asp:ListItem Text="None" Value="None"/>
                                <asp:ListItem Text="Goal keeper" Value="Goal keeper"/>
                                <asp:ListItem Text="Goal defense" Value="Goal defense"/>
                                <asp:ListItem Text="Wing defense" Value="Wing defense"/>
                                <asp:ListItem Text="Centre" Value="Centre"/>
                                <asp:ListItem Text="Wing attack" Value="Wing attack"/>
                                <asp:ListItem Text="Goal attack" Value="Goal attack"/>
                                <asp:ListItem Text="Goal shooter" Value="Goal shooter"/>
                                <asp:ListItem Text="Point Guard" Value="Point Guard"/>
                                <asp:ListItem Text="Shooting Guard" Value="Shooting Guard"/>
                                <asp:ListItem Text="Centre" Value="Centre"/>
                                <asp:ListItem Text="Power Forward" Value="Power Forward"/>
                                <asp:ListItem Text="Small Forward" Value="Small Forward"/>
                                <asp:ListItem Text="Outside Hitter" Value="Outside Hitter"/>
                                <asp:ListItem Text="Opposite Hitter" Value="Opposite Hitter"/>
                                <asp:ListItem Text="Middle Blocker" Value="Middle Blocker"/>
                                <asp:ListItem Text="Setter" Value="Setter"/>
                                <asp:ListItem Text="Liberto" Value="Liberto"/>
                                <asp:ListItem Text="Defensive Specialist" Value="Defensive Specialist"/>
                                <asp:ListItem Text="Serving Specialist" Value="Serving Specialist"/>
                                <asp:ListItem Text="Captain" Value="Captain"/>
                                <asp:ListItem Text="Vice Captain" Value="Vice Captain"/>
                                
                            </asp:DropDownList>
                               </div>
                             </div>

                             <div class="col-md-4">
                               <label>Date</label>
                               <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Date" OnTextChanged ="TextBox6_TextChanged" AutoPostBack="True"></asp:TextBox>
                               </div>
                             </div>
                         </div>
                       <br />
                         <br />
                            <div class="row">
                            <div class="col-12">
                                <div class="d-grid gap-2">
                                  <asp:Button class="btn btn-primary btn-lg btn-block" 
                                        ID="Button1" runat="server" 
                                        Text="Submit" OnClick="Button1_Click" /> 
                                        
                                </div>
                            </div>
                        </div>
                         
                         </div>
                     </div>
            </div>
      
   
        
</div>

    <!-- background shapes -->
    <img class="contact-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
    <img class="contact-bg-2 left-right-animation" src="images/background-shape/green-half-cycle.png" alt="background-shape">
    <img class="contact-bg-3 up-down-animation" src="images/background-shape/green-dot.png" alt="background-shape">
    <img class="contact-bg-4 left-right-animation" src="images/background-shape/service-half-cycle.png" alt="background-shape">
    <img class="contact-bg-5 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
</section>



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

</asp:Content>
