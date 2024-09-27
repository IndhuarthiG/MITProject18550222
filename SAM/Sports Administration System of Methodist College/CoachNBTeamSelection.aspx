<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CoachNBTeamSelection.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.CoachNBTeamSelection" %>
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
                <h2 class= "section-title">Netball Team Selection</h2>
            </div>
        </div>
       
   <div class="row">
       
           <div class="col-md-2">
                               
                               <div class="form-group">
                               <asp:DropDownList class="form-control" 
                                ID="DropDownList3" runat="server" 
                                Height="60px" 
                                        
                                       DataTextField="Category" 
                                       DataValueField="Category" 
                                       AutoPostBack="True"> 
                                        
                                       
                                <asp:ListItem Text="Select" Value="Select" />

                            </asp:DropDownList>
                                   
                                   
                                   
                               </div>
                             </div>
       <div class="row">
           <div class="col-md-2" style="margin-right:24px">
                <asp:Button ID="Button1" class="btn btn-info ml-lg-3" runat="server" Text="Display" OnClick="Button1_Click"/>  
              
           </div>
            </div>
       
       <div class="col-md-2">
                        <div class="form-group">
                           <asp:DropDownList class="form-control" 
                                ID="DropDownList5" runat="server" 
                                Height="60px" Visible="False">
                            
                                <asp:ListItem Text="-Position-" Value="-Position-"/>
                               <asp:ListItem Text="Captain" Value="Captain" />
                               <asp:ListItem Text="Vice Captain" Value="Vice Captain" />
                               <asp:ListItem Text="Player" Value="Player" />
                               <asp:ListItem Text="Reserve" Value="Reserve" />
                            </asp:DropDownList>
                        </div>
                         <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                             runat="server" 
                             ErrorMessage="Team Name is a required field" 
                             ControlToValidate="DropDownList3" 
                             ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
                     </div>

       <div class="col-md-2">
                        
                        <div class="form-group">
                           <asp:DropDownList class="form-control" 
                                ID="DropDownList6" runat="server" 
                                Height="60px" Visible="False">
                            
                                <asp:ListItem Text="Select Team" Value="Select Team" />
                            </asp:DropDownList>
                        </div>
                         <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                             runat="server" 
                             ErrorMessage="Team Name is a required field" 
                             ControlToValidate="DropDownList3" 
                             ForeColor="#CC0000"></asp:RequiredFieldValidator>--%>
                     </div>
       
       
           <div class="col-md-2">
                  <asp:Button ID="Button3" class="btn btn-danger ml-lg-3" runat="server" Text="View" OnClientClick="target ='_blank';" UseSubmitBehavior="False" OnClick="Button3_Click1"/> 
              
           </div>
            
       </div>

       <br />
       

        <div class="row">
       <div class="col-3">
           <asp:GridView ID="GridView2" 
               class="table table-striped table table-bordered" 
               runat="server" OnSorting="GridView2_Sorting" RowStyle-Height="84"> 
                         
       </asp:GridView>
       </div>
                     <div class="col-9">
                         <asp:GridView runat="server" AutoGenerateColumns="False" ID ="GridView1" class="table table-striped table table-bordered" OnSorting="GridView1_Sorting" Width="850px" Visible="False" OnRowCommand="GridView1_RowCommand"> 
                             
                             <Columns>
                                 <asp:BoundField DataField="ID" 
                                     HeaderText="ID" InsertVisible="False" 
                                     ReadOnly="True" 
                                     SortExpression="ID" />
                                 <asp:TemplateField HeaderText="AdmissionNo" SortExpression="AdmissionNo">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AdmissionNo") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("AdmissionNo") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Surname" SortExpression="Surname">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Surname") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("Surname") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
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
                                     
                                 <asp:TemplateField HeaderText="Category" SortExpression="Category">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label4" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 
                                 

                                 <asp:TemplateField HeaderText="Select Member">
                                <ItemTemplate>
                                    <%--<asp:ImageButton  ID="btnsel" ImageUrl="~/adminimages/select.jpg" runat="server" Height="50" Width="50" OnClick="btnsel_Click" CommandName="SelectRow" CommandArgument='<%# Container.DataItemIndex %>' />--%>
                                    <asp:Button ID="Button1" class="btn btn-info ml-lg-3" runat="server" Text="Select" CommandName="Select" CommandArgument="<%# Container.DataItemIndex %>"/>
                                </ItemTemplate>
                                </asp:TemplateField>
                             </Columns>
                             
                         </asp:GridView>
                         
                     </div>

                  </div>
        <br />
        
        
        <div class="row">
                <div class="col-md-12">
            
                  <div class="row">
                     <div class="col">
                        <center>
                           <h2 style="color: #0099CC">
                               <asp:Label ID="Label1" runat="server" Text="Check Age of Candidates" Visible="False"></asp:Label> </h2>
                        </center>
                     </div>
                  </div>
                  
                  
                  
                  <div class ="row">
            <div class="col-md-3">
                               
                               <div class="form-group">
                               <asp:DropDownList class="form-control" 
                                ID="DropDownList1" runat="server" 
                                Height="60px" 
                                   DataTextField="FirstName" 
                                   DataValueField="FirstName" 
                                       AutoPostBack="True"> 
                                        
                                <asp:ListItem Text="Select" Value="Select" />
                                
                            </asp:DropDownList>
                                   
                                   
                                   
                               </div>
                             </div>
            
            <div class="col-3" style="margin-right:24px">
                <asp:Button ID="Button2" class="btn btn-info ml-lg-3" runat="server" Text="Check" OnClick="Button2_Click"/>  
              
           </div>
            
        </div>

        

        <div class ="row">
            <asp:GridView ID="GridView3" 
               class="table table-striped table table-bordered" 
               runat="server" RowStyle-Height="84"> 
                         
       </asp:GridView>
        </div>
                   

                   
                            
                <br />
                                 
            

            
          </div>                
            </div>
        <div class="d-grid gap-2 col-3 mx-auto">
                
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
