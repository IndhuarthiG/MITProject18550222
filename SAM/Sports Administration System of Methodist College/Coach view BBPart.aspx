<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Coach view BBPart.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Coach_view_BBPart" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class= "section-title">Basketball Participants</h2>
            </div>
        </div>
        <br />

        
             
   <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" 
                          runat="server" 
                          ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" 
                          
                          
                          SelectCommand="SELECT [ID], [AdmissionNo], [FirstName], [Surname], [SportName], [Email] FROM [Student_Sport] WHERE ([SportName] = @SportName)" 
                          ConflictDetection="CompareAllValues" 
                          DeleteCommand="DELETE FROM [Student_Sport] WHERE [ID] = @original_ID AND [AdmissionNo] = @original_AdmissionNo AND [FirstName] = @original_FirstName AND [Surname] = @original_Surname AND [SportName] = @original_SportName AND [Email] = @original_Email" 
                          InsertCommand="INSERT INTO [Student_Sport] ([AdmissionNo], [FirstName], [Surname], [SportName], [Email]) VALUES (@AdmissionNo, @FirstName, @Surname, @SportName, @Email)" 
                          OldValuesParameterFormatString="original_{0}" 
                          
                          
                          UpdateCommand="UPDATE [Student_Sport] SET [AdmissionNo] = @AdmissionNo, [FirstName] = @FirstName, [Surname] = @Surname, [SportName] = @SportName, [Email] = @Email WHERE [ID] = @original_ID AND [AdmissionNo] = @original_AdmissionNo AND [FirstName] = @original_FirstName AND [Surname] = @original_Surname AND [SportName] = @original_SportName AND [Email] = @original_Email">
                          <DeleteParameters>
                              <asp:Parameter Name="original_ID" 
                                  Type="Int32" />
                              <asp:Parameter 
                                  Name="original_AdmissionNo" 
                                  Type="String" />
                              <asp:Parameter Name="original_FirstName" 
                                  Type="String" />
                              <asp:Parameter Name="original_Surname" 
                                  Type="String" />
                              <asp:Parameter Name="original_SportName" 
                                  Type="String" />
                              <asp:Parameter Name="original_Email" 
                                  Type="String" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter 
                                  Name="AdmissionNo" Type="String" />
                              <asp:Parameter Name="FirstName" 
                                  Type="String" />
                              <asp:Parameter Name="Surname" 
                                  Type="String" />
                              <asp:Parameter Name="SportName" 
                                  Type="String" />
                              <asp:Parameter Name="Email" 
                                  Type="String" />
                          </InsertParameters>
                          <SelectParameters>
                              <asp:QueryStringParameter DefaultValue="Basketball" 
                                  Name="SportName" 
                                  QueryStringField="SportName=Basketball" 
                                  Type="String" />
                          </SelectParameters>
                          <UpdateParameters>
                              <asp:Parameter 
                                  Name="AdmissionNo" Type="String" />
                              <asp:Parameter Name="FirstName" 
                                  Type="String" />
                              <asp:Parameter Name="Surname" 
                                  Type="String" />
                              <asp:Parameter Name="SportName" 
                                  Type="String" />
                              <asp:Parameter Name="Email" 
                                  Type="String" />
                              <asp:Parameter Name="original_ID" 
                                  Type="Int32" />
                              <asp:Parameter Name="original_AdmissionNo" 
                                  Type="String" />
                              <asp:Parameter 
                                  Name="original_FirstName" 
                                  Type="String" />
                              <asp:Parameter Name="original_Surname" 
                                  Type="String" />
                              <asp:Parameter Name="original_SportName" 
                                  Type="String" />
                              <asp:Parameter Name="original_Email" 
                                  Type="String" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView class="table table-striped table table-bordered" 
                             ID="GridView1" runat="server" 
                             AutoGenerateColumns="False" 
                             DataSourceID="SqlDataSource1" 
                             PageSize="8" DataKeyNames="ID" 
                             AllowSorting="True">
                             <Columns>
                                 <asp:TemplateField HeaderText="AdmissionNo" 
                                     SortExpression="AdmissionNo">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox1" 
                                             runat="server" 
                                             Text='<%# Bind("AdmissionNo") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label1" runat="server" 
                                             Text='<%# Bind("AdmissionNo") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="FirstName" 
                                     SortExpression="FirstName">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox2" 
                                             runat="server" 
                                             Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label2" runat="server" 
                                             Text='<%# Bind("FirstName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Surname" 
                                     SortExpression="Surname">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox3" 
                                             runat="server" 
                                             Text='<%# Bind("Surname") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label3" runat="server" 
                                             Text='<%# Bind("Surname") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="SportName" 
                                     SortExpression="SportName">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox4" 
                                             runat="server" 
                                             Text='<%# Bind("SportName") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label4" runat="server" 
                                             Text='<%# Bind("SportName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Email" 
                                     SortExpression="Email">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox5" 
                                             runat="server" 
                                             Text='<%# Bind("Email") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label5" runat="server" 
                                             Text='<%# Bind("Email") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField>
                                     <HeaderTemplate>
                                         <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox2_CheckedChanged"/>
                                     </HeaderTemplate>
                                     <EditItemTemplate>
                                         <asp:CheckBox ID="CheckBox1" runat="server"/>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:CheckBox ID="CheckBox1" OnCheckedChanged="CheckBox1_CheckedChanged" 
                                             runat="server" />
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                             <HeaderStyle HorizontalAlign="Center" 
                                 ForeColor="#0099CC" />
                         </asp:GridView>
                     </div>
       
   </div>
        <br />
       <br />
       <br />
       <%--<div class="row">
                             <div class="col-10">
                              <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox2" runat="server" placeholder="Senders Email"></asp:TextBox>
                              </div>
                                 
                              <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox3" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                              </div>
                                     
                              <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox1" runat="server" placeholder="Receivers Email" TextMode="Email"></asp:TextBox>
                              </div>
                                     
                                 <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox5" runat="server" placeholder="Subject"></asp:TextBox>
                              </div>

                                
                              <div class="mb-3">
                                  <asp:TextBox Cssclass="form-control"   ID="TextBox4" runat="server" placeholder="Type message here" TextMode="MultiLine" Height="300px"></asp:TextBox>
                              </div>
                               <div class="d-grid gap-2 col-10 mx-auto text-right">
                        <asp:Button ID="Button2" 
                              class="btn btn-primary ml-lg-3 primary-shadow" 
                              runat="server" Text="Send" 
                              Height="50px" 
                            
                            Width="150px" OnClick="Button2_Click" /> 
                        
                      </div>
                         </div>
                     </div>--%>
           <div class="row">
               <asp:Button ID="Button1" 
                              class="btn btn-primary ml-lg-3 primary-shadow" 
                              runat="server" Text="Report" 
                              Height="50px" 
                            
                            Width="150px" OnClick="Button1_Click"/>
           </div>
</div>
    <!-- background shapes -->
    <img class="contact-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
    <img class="contact-bg-2 left-right-animation" src="images/background-shape/green-half-cycle.png" alt="background-shape">
    <img class="contact-bg-3 up-down-animation" src="images/background-shape/green-dot.png" alt="background-shape">
    <img class="contact-bg-4 left-right-animation" src="images/background-shape/service-half-cycle.png" alt="background-shape">
    <img class="contact-bg-5 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
</section>

    
</asp:Content>
