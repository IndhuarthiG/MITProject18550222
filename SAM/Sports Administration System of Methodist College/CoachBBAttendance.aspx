<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CoachBBAttendance.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.CoachBBAttendance" %>
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
                <h2 class= "section-title">Basketball Attendance</h2>
            </div>
        </div>
       
   <div class="row">
       
           <div class="col-md-4">
                               <label>Date of Practice</label>
                               <div class="form-group">
                               <asp:TextBox ID="TextBox6" runat="server" placeholder="Date" CssClass="form-control Date" class="Date" AutoCompleteType="Disabled"></asp:TextBox>
                                   <asp:Label ID="Label1" runat="server" Text="" />
                               </div>
                             </div>
       <br />
       <br />
       <br />
                     <div class="col">
                         <asp:GridView class="table table-striped table table-bordered" 
                             ID="GridView2" runat="server" 
                             AutoGenerateColumns="False"> 
                             
                            <Columns>
                                 <asp:BoundField DataField="AdmissionNo" 
                                     HeaderText="Admission No" 
                                     SortExpression="AdmissionNo">
                                 <HeaderStyle ForeColor="#0066CC" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="FirstName" 
                                     HeaderText="First Name" 
                                     SortExpression="FirstName">
                                 <HeaderStyle ForeColor="#0066CC" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Surname" 
                                     HeaderText="Surname" 
                                     SortExpression="Surname">
                                 <HeaderStyle ForeColor="#0066CC" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="Sport_ID" 
                                     HeaderText="Sport ID" 
                                     SortExpression="Sport_ID">
                                 <HeaderStyle ForeColor="#0066CC" />
                                 </asp:BoundField>
                                
                                 <asp:BoundField DataField="SportName" 
                                     HeaderText="Sport Name" 
                                     SortExpression="SportName">
                                 <HeaderStyle ForeColor="#0066CC" />
                                 </asp:BoundField>
                                 <asp:TemplateField HeaderText="Attendance">
                                     <HeaderStyle ForeColor="#0066CC" />
                                     <ItemTemplate>
                                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                             <asp:ListItem Text="Select" Value="Select" />
                                    <asp:ListItem Text="1" Value="1"/>
                                    <asp:ListItem Text="0" Value="0" />
                                         </asp:DropDownList>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Category">
                                     <HeaderStyle ForeColor="#0066CC" />
                                     <ItemTemplate>
                                         <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                     <asp:ListItem Text="Select" Value="Select" />
                                    <asp:ListItem Text="None" Value="None"/>
                                    <asp:ListItem Text="Point Guard" Value="Point Guard"/>
                                    <asp:ListItem Text="Shooting Guard" Value="Shooting Guard"/>
                                    <asp:ListItem Text="Centre" Value="Centre"/>
                                    <asp:ListItem Text="Power Forward" Value="Power Forward"/>
                                    <asp:ListItem Text="Small Forward" Value="Small Forward"/>
                                         </asp:DropDownList>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Performance">
                                     <HeaderStyle ForeColor="#0066CC" />
                                     <ItemTemplate>
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
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                         </asp:GridView>
                         
                     </div>
                  </div>
        <br />
        <br />
        <div class="row">
                
                <div class="col-4">
                    <asp:Button ID="Button1" class="btn btn-info ml-lg-3" runat="server" Text="Save" OnClick="Button1_Click"/>  
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
                  return [(day != 0 && day != 2 && day != 4 && day != 5 && day != 6)];
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
