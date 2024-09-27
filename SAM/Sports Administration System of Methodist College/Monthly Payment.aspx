<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Monthly Payment.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Monthly_Payment" %>
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

<!-- Registration -->
<section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class= "section-title" style="color: #008080">Monthly Fee Payments</h2>
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
                               <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Enter Admission No"></asp:TextBox>
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
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox3" runat="server" placeholder="First name"></asp:TextBox>
                              </div>                                                               
                             </div>

                             <div class="col-md-4">
                                <label>Last name</label>
                              <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox4" runat="server" placeholder="Last name"></asp:TextBox>
                              </div>                                                              
                             </div>

                         </div>

                         <div class="row">
                             <div class="col-md-4">
                                 <label>Select sport</label>
                                 <div class="form-group">
                                    <%--<asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="11" Height="150">
                                        <asp:ListItem Text="Athletics" Value="Athletics" />
                                        <asp:ListItem Text="Archery" Value="Archery" />
                                        <asp:ListItem Text="Basket Ball" Value="Basket Ball" />
                                        <asp:ListItem Text="Badminton" Value="Badminton" />
                                        <asp:ListItem Text="Chess" Value="Chess" />
                                        <asp:ListItem Text="Netball" Value="Netball" />
                                        <asp:ListItem Text="Swimming" Value="Swimming" />
                                        <asp:ListItem Text="Squash" Value="Squash" />
                                        <asp:ListItem Text="Tennis" Value="Tennis" />
                                        <asp:ListItem Text="Table Tennis" Value="Table Tennis" /> 
                                        <asp:ListItem Text="Volleyball" Value="Volleyball" />
                                    </asp:ListBox>--%>

                                <asp:DropDownList class="form-control" 
                                ID="DropDownList3" runat="server" 
                                Height="60px">
                            
                                <asp:ListItem Text="Select" Value="Select" />
                            </asp:DropDownList>
                                 </div>
                             </div>

                             <div class="col-md-4">
                               <label>Month</label>
                               <div class="form-group">
                               <asp:DropDownList class="form-control" 
                                ID="DropDownList1" runat="server" 
                                Height="60px">
                            
                                <asp:ListItem Text="Select" Value="Select" />
                                   <asp:ListItem Text="January" Value="January" />
                                   <asp:ListItem Text="February" Value="February" />
                                   <asp:ListItem Text="March" Value="March" />
                                   <asp:ListItem Text="April" Value="April" />
                                   <asp:ListItem Text="May" Value="May" />
                                   <asp:ListItem Text="June" Value="June" />
                                   <asp:ListItem Text="July" Value="July" />
                                   <asp:ListItem Text="August" Value="August" />
                                   <asp:ListItem Text="September" Value="September" />
                                   <asp:ListItem Text="October" Value="October" />
                                   <asp:ListItem Text="November" Value="November" />
                                   <asp:ListItem Text="December" Value="December" />
                            </asp:DropDownList>
                               </div>
                             </div>
                                          
                             <div class="col-md-4">
                               <label>Date</label>
                               <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" ontextchanged="TextBox6_TextChanged" AutoPostBack="true"></asp:TextBox>
                               </div>
                             </div>

                         </div>

                         <div class="row">
                             <div class="col-md-4">
                                 <label>Reason</label>
                                 <div class="form-group">
                                    
                                <asp:DropDownList class="form-control" 
                                ID="DropDownList2" runat="server" 
                                Height="60px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                            
                                <asp:ListItem Text="Select" Value="Select" />
                                    <asp:ListItem Text="For One Sport" Value="1000" />
                                    <asp:ListItem Text="For Two Sports" Value="2000" />
                                    <asp:ListItem Text="For Three Sports" Value="3000" />
                                    <asp:ListItem Text="For Four Sports" Value="4000" />
                            </asp:DropDownList>
                                 </div>
                             </div>

                             <div class="col-md-4">
                                 <label>Fee</label>
                               <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Fee" ReadOnly="True"></asp:TextBox>
                             </div>
                             </div>

                             <div class="col-md-4">
                                 <label>Description</label>
                               <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Description"></asp:TextBox>
                             </div>
                             </div> 
                             
                         </div>

                         <div class="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Enter" OnClick="Button2_Click"/>
                              </div>
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-info btn-block btn-lg" ID="Button3" runat="server" Text="Generate Receipt" OnClick="Button3_Click" OnClientClick="target ='_blank';"/>
                             </div>
                             
                          </div>
                         <br />

                         <div class="row">
                             <div class ="col-md-4">
                                 <asp:Label ID="Label2" runat="server" Text="Upload Payment Receipt" Font-Bold="true">
                                 </asp:Label>
                                 <br />
                                 <asp:FileUpload ID="FileUpload1" runat="server"/>
                                  <asp:Label ID="Label1" runat="server" Text="" />
                                 
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




<!-- /contact -->

<!-- footer -->
<%--<footer class="footer-section footer" style="background-image: url(images/backgrounds/footer-bg.png);">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 text-center text-lg-left mb-4 mb-lg-0">
        <!-- logo -->
        <a href="index.html">
          <img class="img-fluid" src="images/logo.png" alt="logo">
        </a>
      </div>
      <!-- footer menu -->
      <nav class="col-lg-8 align-self-center mb-5">
        <ul class="list-inline text-lg-right text-center footer-menu">
          <li class="list-inline-item active"><a href="index.html">Home</a></li>
          <li class="list-inline-item"><a class="page-scroll" href="#feature">Feature</a></li>
          <li class="list-inline-item"><a href="about.html">About</a></li>
          <li class="list-inline-item"><a class="page-scroll" href="#team">Team</a></li>
          <li class="list-inline-item"><a class="page-scroll" href="#pricing">Pricing</a></li>
          <li class="list-inline-item"><a href="contact.html">Contact</a></li>
        </ul>
      </nav>
      <!-- footer social icon -->
      <nav class="col-12">
        <ul class="list-inline text-lg-right text-center social-icon">
          <li class="list-inline-item">
            <a class="facebook" href="#"><i class="ti-facebook"></i></a>
          </li>
          <li class="list-inline-item">
            <a class="twitter" href="#"><i class="ti-twitter-alt"></i></a>
          </li>
          <li class="list-inline-item">
            <a class="linkedin" href="#"><i class="ti-linkedin"></i></a>
          </li>
          <li class="list-inline-item">
            <a class="black" href="#"><i class="ti-github"></i></a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</footer>--%>
<!-- /footer -->

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
