<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Request_archery" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 style="color:#9900CC" class= "section-title">Change Requests</h2>

                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" 
                        runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" 
                        OldValuesParameterFormatString="original_{0}" 
                        
                        SelectCommand="SELECT * FROM [Rosters]">
                    </asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView class="table table-striped table table-bordered" 
                             ID="GridView1" runat="server" 
                             AutoGenerateColumns="False" 
                             DataSourceID="SqlDataSource1" 
                             PageSize="8" DataKeyNames="ID" 
                             AllowSorting="True" 
                             BorderStyle="Double" 
                             AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
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
                                             Text='<%# Bind("Sport_ID") %>'></asp:TextBox>
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
                                             Text='<%# Bind("SportName") %>'></asp:TextBox>
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
                                             Text='<%# Bind("Date", "{0:MM/dd/yyyy}") %>'></asp:TextBox>
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
                                             Text='<%# Bind("Time") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label5" runat="server" 
                                             Text='<%# Bind("Time") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Teacher_ID" 
                                     SortExpression="Teacher_ID">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox5" 
                                             runat="server" 
                                             Text='<%# Bind("Teacher_ID") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label6" runat="server" 
                                             Text='<%# Bind("Teacher_ID") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Title" 
                                     SortExpression="Title">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox6" 
                                             runat="server" 
                                             Text='<%# Bind("Title") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label7" runat="server" 
                                             Text='<%# Bind("Title") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Surname" 
                                     SortExpression="Surname">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox7" 
                                             runat="server" 
                                             Text='<%# Bind("Surname") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label8" runat="server" 
                                             Text='<%# Bind("Surname") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="EmailID" 
                                     SortExpression="EmailID">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox8" 
                                             runat="server" 
                                             Text='<%# Bind("EmailID") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label9" runat="server" 
                                             Text='<%# Bind("EmailID") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:BoundField DataField="Status" 
                                     HeaderText="Status" 
                                     SortExpression="Status" 
                                     Visible="False" />
                                 <asp:TemplateField HeaderText="Requests" 
                                     SortExpression="Requests">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox9" 
                                             runat="server" 
                                             Text='<%# Bind("Requests") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label10" runat="server" 
                                             Text='<%# Bind("Requests") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Addedby" 
                                     SortExpression="Addedby">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox10" 
                                             runat="server" 
                                             Text='<%# Bind("Addedby") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label11" runat="server" 
                                             Text='<%# Bind("Addedby") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="ReqFirstName" 
                                     SortExpression="ReqFirstName">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox12" 
                                             runat="server" 
                                             Text='<%# Bind("ReqName") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label13" runat="server" 
                                             Text='<%# Bind("ReqName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="ExchangeWith" 
                                     SortExpression="ExchangeWith">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox11" 
                                             runat="server" 
                                             Text='<%# Bind("ExchangeWith") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label12" runat="server" 
                                             Text='<%# Bind("ExchangeWith") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField ShowHeader="false">
                                     <EditItemTemplate>
                                         <asp:LinkButton ID="LinkButton1" runat="server">Accept</asp:LinkButton>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Click" CommandArgument='<%#Eval("ID")+","+ Eval("Sport_ID")+","+ Eval("SportName")+","+ Eval("Teacher_ID")+","+ Eval("Addedby")+","+ Eval("ReqName")+","+ Eval("ExchangeWith")%>'>Accept</asp:LinkButton>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField ShowHeader="false">
                                     <EditItemTemplate>
                                         <asp:LinkButton ID="LinkButton2" runat="server">Reject</asp:LinkButton>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:LinkButton ID="LinkButton2" runat="server" OnCommand="LinkButton2_Click" CommandArgument='<%#Eval("ID")+","+ Eval("Sport_ID")+","+ Eval("SportName")+","+ Eval("Teacher_ID")+","+ Eval("Addedby")+","+ Eval("ReqName")+","+ Eval("ExchangeWith")%>'>Reject</asp:LinkButton>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                             <HeaderStyle ForeColor="#9900CC" 
                                 HorizontalAlign="Center" />
                         </asp:GridView>
                     </div>
                     
                  </div>
            </div>
        </div>
       
   <div class="row">
                     
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
