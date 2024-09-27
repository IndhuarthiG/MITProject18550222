<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.WebForm5" %>
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
                <h2 class= "section-title">Register</h2>
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
                               <label>Email</label>
                               <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="E-mail" TextMode="Email" ReadOnly="True"></asp:TextBox>
                               </div>
                             </div>

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
                               <label>Date Joined</label>
                               <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" ontextchanged="TextBox6_TextChanged" AutoPostBack="true" ReadOnly="True"></asp:TextBox>
                               </div>
                             </div>

                         </div>

                         <div class="row">
                             <div class ="col-md-4">
                                 <%--<asp:Label ID="Label2" runat="server" Text="Upload Payment Receipt" Font-Bold="true">
                                 </asp:Label>
                                 <br />
                                 <asp:FileUpload ID="FileUpload1" runat="server"/>
                                  <asp:Label ID="Label1" runat="server" Text="" />--%>
                                 <label>Payment Proof</label>
                               <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Payment Proof" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please make payment to complete registration" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>--%>
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
                                        Text="Register" 
                                        OnClick="Button1_Click"/>
                                </div>
                            </div>
                        </div>
                         <br />
                         <div class="row">
                             <div class="d-grid gap-2 col-4 mx-auto">
                                 <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button4" runat="server" Text="Send Alert" OnClick="Button4_Click"/>
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

<!-- Contact Us -->
<section class="section Contact mb-0" id="Contact">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-title">Contact Us</h2>
          <div class="row contact-bg p-5 rounded mb-0">
            <div class="col-lg-7 mb-4 mb-lg-0">
                <div class="row">
                             
                            <div class="col-lg-7 mb-4 mb-lg-0">
                               <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   
                                       ID="TextBox1" runat="server" 
                                       placeholder="Your Name" 
                                       Width="580px"></asp:TextBox>
                              </div> 
                                <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   
                                        ID="TextBox2" runat="server" 
                                        placeholder="Your Email" Width="580px"></asp:TextBox>
                              </div> 
                                <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox7" runat="server" placeholder="Subject" Width="580px"></asp:TextBox>
                              </div> 
                                <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox8" runat="server" placeholder="Your Message" Width="580px" TextMode="MultiLine"></asp:TextBox>
                              </div> 
                             </div>
                                                
                         </div>
                <div class="d-grid gap-2">
                                  <asp:Button class="btn btn-info btn-lg btn-block" 
                                        ID="Button2" runat="server" 
                                        Text="SEND MESSAGE" OnClick="Button2_Click1"/> 
                                        
                                </div>
            </div>
  
            <div class="col-lg-5">
                <p class="mb-5">If you have more inquiries please don't hestitate to drop us a message or contact us on our hotline.</p>
                <a href="tel:+442081446356" class="text-color h5 d-block">+44 20 8144 6356</a>
                <a href="mailto:sports.metho@gmail.com" class="mb-5 text-color h5 d-block">sports.metho@gmail.com</a>
                <p>No 250 Galle road,<br> Kollupitiya</p>
            </div>
        </div>
          </div>
        </div>
      </div>
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
