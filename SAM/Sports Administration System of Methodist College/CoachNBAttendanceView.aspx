<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CoachNBAttendanceView.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.CoachNBAttendanceView" %>
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
                <h2 class= "section-title">Netball Attendance View</h2>
            </div>
        </div>
       
   <div class="row">
       
           <div class="col-md-3">
                               
                               <div class="form-group">
                               <asp:DropDownList class="form-control" 
                                ID="DropDownList3" runat="server" 
                                Height="60px" 
                                        
                                       DataTextField="Date" 
                                       DataValueField="Date" 
                                       AutoPostBack="True"> 
                                        
                                       
                                <asp:ListItem Text="Select" Value="Select" />

                            </asp:DropDownList>
                                   
                                   
                                   
                               </div>
                             </div>
       <div class="row">
           <div class="col-3" style="margin-right:24px">
                <asp:Button ID="Button1" class="btn btn-info ml-lg-3" runat="server" Text="Display" OnClick="Button1_Click"/>  
              
           </div>
            
           <%--<div class="d-grid gap-2 col-4 mx-auto">
                <asp:Button ID="Button3" class="btn btn-info ml-lg-3" runat="server" Text="Total" OnClick="Button3_Click"/> 
           </div>--%>
           
       </div>
       
       </div>

       <br />
       

        <div class="row">
       
                     <div class="col-9">
                         <asp:GridView runat="server" AutoGenerateColumns="False" ID ="GridView1" class="table table-striped table table-bordered" Width="850px"> 
                             
                             <Columns>
                                 <asp:BoundField DataField="ID" 
                                     HeaderText="ID" InsertVisible="False" 
                                     ReadOnly="True" 
                                     SortExpression="ID" />
                                 <asp:BoundField DataField="AdmissionNo" 
                                     HeaderText="AdmissionNo" 
                                     SortExpression="AdmissionNo" />
                                 <asp:BoundField DataField="FirstName" 
                                     HeaderText="FirstName" 
                                     SortExpression="FirstName" />
                                 <asp:BoundField DataField="Surname" 
                                     HeaderText="Surname" 
                                     SortExpression="Surname" />
                                 <asp:BoundField DataField="Sport_ID" 
                                     HeaderText="Sport_ID" 
                                     SortExpression="Sport_ID" />
                                 <asp:BoundField DataField="SportName" 
                                     HeaderText="Sport Name" 
                                     SortExpression="SportName" />
                                 <asp:BoundField DataField="DateOfPractice" 
                                     HeaderText="DateOfPractice" 
                                     SortExpression="DateOfPractice" /> 
                                     
                                 <asp:BoundField DataField="Attendance" 
                                     HeaderText="Attendance" 
                                     SortExpression="Attendance" /> 
                                     <asp:BoundField DataField="Category" 
                                     HeaderText="Category" 
                                     SortExpression="Category" /> 
                                                                 
                                 <asp:BoundField DataField="Performance" 
                                     HeaderText="Performance" 
                                     SortExpression="Performance" />

                             </Columns>
                             
                         </asp:GridView>
                         
                     </div>

                  </div>
        
        
        
        
</div>
        
<!-- Main Script -->
<script src="js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <%--<script>
      function FindAge() {
          var day = document.getElementById("TextBox3").value;
          var DOB = new Date(day);
          var today = new Date();
          var Age = today.getTime() - DOB.getTime();
          Age = Math.floor(Age / (1000 * 60 * 60 * 24 * 365.25));
          document.getElementById("TextBox4").value = Age;
      }
  </script>--%>
    <!-- background shapes -->
    <img class="contact-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
    <img class="contact-bg-2 left-right-animation" src="images/background-shape/green-half-cycle.png" alt="background-shape">
    <img class="contact-bg-3 up-down-animation" src="images/background-shape/green-dot.png" alt="background-shape">
    <img class="contact-bg-4 left-right-animation" src="images/background-shape/service-half-cycle.png" alt="background-shape">
    <img class="contact-bg-5 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
</section>

</asp:Content>
