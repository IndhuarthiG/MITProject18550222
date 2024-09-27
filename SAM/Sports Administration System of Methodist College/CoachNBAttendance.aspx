<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CoachNBAttendance.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.CoachNBAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <!--Calender plugin-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css"/>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
    <section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class= "section-title">Netball Attendance</h2>
            </div>
        </div>
       
   <div class="row">
       <div class="col-md-4">
            <label>Date of Practice</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:TextBox ID="TextBox6" runat="server" placeholder="Date" CssClass="form-control Date" class="Date" AutoCompleteType="Disabled" Height="50"></asp:TextBox>
                                   <asp:Label ID="Label1" runat="server" Text="" />
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
            <label>Admission No</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:TextBox ID="TextBox1" runat="server" placeholder="Admission No" CssClass="form-control"  AutoCompleteType="Disabled" Height="50" ReadOnly="True"></asp:TextBox>
                                  
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
            <label>Attendance</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Select" Value="Select" />
                                    <asp:ListItem Text="1" Value="1"/>
                                    <asp:ListItem Text="0" Value="0" />
                                         </asp:DropDownList>
                                  
                               </div>
           </div>
       </div>
        <div class="row">
           <div class="col-md-4">
            <label>Category</label>
       </div>
           <div class="col-md-4">
                              
                               <div class="form-group">
                               <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                     <asp:ListItem Text="Select" Value="Select" />
                                    <asp:ListItem Text="None" Value="None"/>
                                    <asp:ListItem Text="Goal Keeper" Value="Goal Keeper"/>
                                    <asp:ListItem Text="Goal Shooter" Value="Goal Shooter"/>
                                    <asp:ListItem Text="Centre" Value="Centre"/>
                                    <asp:ListItem Text="Goal Defence" Value="Goal Defence"/>
                                    <asp:ListItem Text="Wing Defence" Value="Wing Defence"/>
                                   <asp:ListItem Text="Goal Attack" Value="Goal Attack"/>
                                   <asp:ListItem Text="Wing Attack" Value="Wing Attack"/>
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
                                             <asp:ListItem Text="9" Value="9" />
                                             <asp:ListItem Text="8" Value="8" />
                                             <asp:ListItem Text="7" Value="7" />
                                             <asp:ListItem Text="6" Value="6" />
                                             <asp:ListItem Text="5" Value="5" />
                                             <asp:ListItem Text="4" Value="4" />
                                             <asp:ListItem Text="3" Value="3" />
                                             <asp:ListItem Text="2" Value="2" />
                                             <asp:ListItem Text="1" Value="1" />
                                             <asp:ListItem Text="0" Value="0" />
                                         </asp:DropDownList>
                                  
                               </div>
           </div>
       </div>
        <br />
        <div class="row">
                
                <div class="col-4">
                    <asp:Button ID="Button1" class="btn btn-info ml-lg-3" runat="server" Text="Save" OnClick="Button1_Click"/>  
                    
                </div>
            <div class="col-4">
                    <asp:Button ID="Button3" class="btn btn-danger ml-lg-3" runat="server" Text="View" OnClientClick="target ='_blank';" OnClick="Button3_Click"/>  
                    
                </div>
            </div>
        
</div>
<!-- Main Script -->
<script src="js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
      $(function () {
          $(".Date").datepicker({
              beforeShowDay: function (date) {
                  var day = date.getDay();
                  return [(day != 0 && day != 1 && day != 2 && day != 3 && day != 4 && day != 6)];
              }
          });
      });
  </script>
    <!-- background shapes -->
    <img class="contact-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
    <img class="contact-bg-2 left-right-animation" src="images/background-shape/green-half-cycle.png" alt="background-shape">
    <img class="contact-bg-3 up-down-animation" src="images/background-shape/green-dot.png" alt="background-shape">
    <img class="contact-bg-4 left-right-animation" src="images/background-shape/service-half-cycle.png" alt="background-shape">
    <img class="contact-bg-5 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
</section>

</asp:Content>