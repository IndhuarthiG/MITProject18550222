<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AthTeamMemberView.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.AthTeamMemberView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class= "section-title">Athletics Team Members</h2>
            </div>
        </div>
       <br />
        <div class ="row">
            <div class="col-md-4">
                <div class="form-group">
                               <asp:DropDownList class="form-control" 
                                ID="DropDownList3" runat="server" 
                                Height="60px" 
                                        
                                       DataTextField="TeamName" 
                                       DataValueField="TeamName" 
                                       AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"> 
                                        
                                       
                                <asp:ListItem Text="Select" Value="Select" />

                            </asp:DropDownList>
                                   
                                   
                                   
                               </div>
            </div>
            <div class="col-md-2" style="margin-right:24px">
                <asp:Button ID="Button1" class="btn btn-info ml-lg-3" runat="server" Text="Display" OnClick="Button1_Click"/>  
              
           </div>
                     
                        
        </div>
   <div class="row">
                     <div class="col">
                         <asp:GridView class="table table-striped table table-bordered" 
                             ID="GridView1" runat="server" 
                             AutoGenerateColumns="False" 
                             PageSize="8" DataKeyNames="ID" 
                             OnRowEditing="GridView1_RowEditing"
                             OnRowUpdating="GridView1_RowUpdating"
                             OnRowCancelingEdit="GridView1_RowCancelingEdit"
                             OnPageIndexChanging="GridView1_PageIndexChanging"
                             OnSorting="GridView1_Sorting"
                             AllowSorting="True" 
                             AllowPaging="True">
                             <Columns>
                                 <asp:TemplateField HeaderText="ID" 
                                     InsertVisible="False" 
                                     SortExpression="ID" Visible="False">
                                     <EditItemTemplate>
                                         <asp:Label ID="Label1" runat="server" 
                                             Text='<%# Eval("ID") %>'></asp:Label>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label1" runat="server" 
                                             Text='<%# Bind("ID") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="AdmissionNo" 
                                     SortExpression="AdmissionNo" 
                                     Visible="True">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox1" 
                                             runat="server" 
                                             Text='<%# Bind("AdmissionNo") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label2" runat="server" 
                                             Text='<%# Bind("AdmissionNo") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="FirstName" 
                                     SortExpression="FirstName" 
                                     Visible="True">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox2" 
                                             runat="server" 
                                             Text='<%# Bind("FirstName") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label3" runat="server" 
                                             Text='<%# Bind("FirstName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Surname" 
                                     SortExpression="Surname" 
                                     Visible="True">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox3" 
                                             runat="server" 
                                             Text='<%# Bind("Surname") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label4" runat="server" 
                                             Text='<%# Bind("Surname") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Team_ID" 
                                     SortExpression="Team_ID" Visible="False">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox4" 
                                             runat="server" 
                                             Text='<%# Bind("Team_ID") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label5" runat="server" 
                                             Text='<%# Bind("Team_ID") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="TeamName" 
                                     SortExpression="TeamName" 
                                     Visible="True">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox5" 
                                             runat="server" 
                                             Text='<%# Bind("TeamName") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label6" runat="server" 
                                             Text='<%# Bind("TeamName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Category" 
                                     SortExpression="Category" 
                                     Visible="True">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox6" runat="server" 
                                             Text='<%# Bind("Category") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>                                  
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label7" runat="server" 
                                             Text='<%# Bind("Category") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Position" 
                                     SortExpression="Position" 
                                     Visible="True">
                                     <EditItemTemplate>
                                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" >
                                            <asp:ListItem Text="Select Position" Value="Select Position" />
                               <asp:ListItem Text="Captain" Value="Captain" />
                               <asp:ListItem Text="Vice Captain" Value="Vice Captain" />
                               <asp:ListItem Text="Player" Value="Player" />
                               <asp:ListItem Text="Reserve" Value="Reserve" />
                                         </asp:DropDownList>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label8" runat="server" 
                                             Text='<%# Bind("Position") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField ShowHeader="False">
                                     <EditItemTemplate>
                                         <asp:LinkButton ID="LinkButton1" 
                                             runat="server" CausesValidation="True" 
                                             CommandName="Update" Text="Update"></asp:LinkButton>
                                         &nbsp;<asp:LinkButton ID="LinkButton2" 
                                             runat="server" CausesValidation="False" 
                                             CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:LinkButton ID="LinkButton1" 
                                             runat="server" CausesValidation="False" 
                                             CommandName="Edit" Text="Edit"></asp:LinkButton>
                                      
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 
                             </Columns>
                             <HeaderStyle HorizontalAlign="Center" 
                                 ForeColor="#0099CC" 
                                 Font-Bold="False" />
                         </asp:GridView>
                     </div>
                  </div>
        <div class="row">
                
                <div class="col-4">
                    <%--<asp:Button ID="Button1" class="btn btn-danger ml-lg-3" runat="server" Text="Cancel Alert" OnClick="Button1_Click"/> --%> 
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
</asp:Content>
