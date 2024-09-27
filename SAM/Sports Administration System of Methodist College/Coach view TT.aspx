<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Coach view TT.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Coach_view_TT" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class= "section-title">Table Tennis Schedule</h2>
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
                                 <asp:TemplateField HeaderText="Sport_ID" 
                                     SortExpression="Sport_ID" 
                                     Visible="False">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox1" 
                                             runat="server" 
                                             Text='<%# Bind("Sport_ID") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label2" runat="server" 
                                             Text='<%# Bind("Sport_ID") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="SportName" 
                                     SortExpression="SportName" 
                                     Visible="False">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox2" 
                                             runat="server" 
                                             Text='<%# Bind("SportName") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label3" runat="server" 
                                             Text='<%# Bind("SportName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Date" 
                                     SortExpression="Date">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox3" 
                                             runat="server" 
                                             Text='<%# Bind("Date", "{0:MM/dd/yyyy}") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label4" runat="server" 
                                             Text='<%# Bind("Date", "{0:MM/dd/yyyy}") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Time" 
                                     SortExpression="Time">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox4" 
                                             runat="server" 
                                             Text='<%# Bind("Time") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label5" runat="server" 
                                             Text='<%# Bind("Time") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="EmailID" 
                                     SortExpression="EmailID" 
                                     Visible="False">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox5" 
                                             runat="server" 
                                             Text='<%# Bind("EmailID") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label6" runat="server" 
                                             Text='<%# Bind("EmailID") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Status" 
                                     SortExpression="Status">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox6" 
                                             runat="server" 
                                             Text='<%# Bind("Status") %>' CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label7" runat="server" 
                                             Text='<%# Bind("Status") %>'></asp:Label>
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
                    <asp:Button ID="Button1" class="btn btn-danger ml-lg-3" runat="server" Text="Cancel Alert"/>  
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
