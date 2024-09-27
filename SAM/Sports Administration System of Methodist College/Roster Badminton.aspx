<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Roster Badminton.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.Badminton_Roster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <section class="section-lg contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 style="color:#9900CC" class= "section-title">Badminton Roster for the Month</h2>
            </div>
        </div>
       
   <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" 
                          runat="server" 
                          ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" 
                          
                          
                          SelectCommand="SELECT [ID], [SportName], [Date], [Time], [Teacher_ID], [Title], [Surname], [EmailID], [Status], [Requests] FROM [Rosters] WHERE ([SportName] = @SportName)" 
                          ConflictDetection="CompareAllValues" 
                          DeleteCommand="DELETE FROM [Rosters] WHERE [ID] = @original_ID AND [SportName] = @original_SportName AND [Date] = @original_Date AND [Time] = @original_Time AND [Teacher_ID] = @original_Teacher_ID AND [Title] = @original_Title AND [Surname] = @original_Surname AND [EmailID] = @original_EmailID AND [Status] = @original_Status AND [Requests] = @original_Requests" 
                          InsertCommand="INSERT INTO [Rosters] ([SportName], [Date], [Time], [Teacher_ID], [Title], [Surname], [EmailID], [Status], [Requests]) VALUES (@SportName, @Date, @Time, @Teacher_ID, @Title, @Surname, @EmailID, @Status, @Requests)" 
                          OldValuesParameterFormatString="original_{0}" 
                          
                          UpdateCommand="UPDATE [Rosters] SET [SportName] = @SportName, [Date] = @Date, [Time] = @Time, [Teacher_ID] = @Teacher_ID, [Title] = @Title, [Surname] = @Surname, [EmailID] = @EmailID, [Status] = @Status, [Requests] = @Requests WHERE [ID] = @original_ID AND [SportName] = @original_SportName AND [Date] = @original_Date AND [Time] = @original_Time AND [Teacher_ID] = @original_Teacher_ID AND [Title] = @original_Title AND [Surname] = @original_Surname AND [EmailID] = @original_EmailID AND [Status] = @original_Status AND [Requests] = @original_Requests">
                          
                          <DeleteParameters>
                              <asp:Parameter Name="original_ID" 
                                  Type="Int32" />
                              <asp:Parameter Name="original_SportName" 
                                  Type="String" />
                              <asp:Parameter DbType="Date" 
                                  Name="original_Date" />
                              <asp:Parameter Name="original_Time" 
                                  Type="String" />
                              <asp:Parameter Name="original_Teacher_ID" 
                                  Type="String" />
                              <asp:Parameter Name="original_Title" 
                                  Type="String" />
                              <asp:Parameter Name="original_Surname" 
                                  Type="String" />
                              <asp:Parameter Name="original_EmailID" 
                                  Type="String" />
                              <asp:Parameter Name="original_Status" 
                                  Type="String" />
                              <asp:Parameter Name="original_Requests" 
                                  Type="String" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="SportName" 
                                  Type="String" />
                              <asp:Parameter DbType="Date" 
                                  Name="Date" />
                              <asp:Parameter Name="Time" 
                                  Type="String" />
                              <asp:Parameter Name="Teacher_ID" 
                                  Type="String" />
                              <asp:Parameter Name="Title" 
                                  Type="String" />
                              <asp:Parameter Name="Surname" 
                                  Type="String" />
                              <asp:Parameter Name="EmailID" 
                                  Type="String" />
                              <asp:Parameter Name="Status" 
                                  Type="String" />
                              <asp:Parameter Name="Requests" 
                                  Type="String" />
                          </InsertParameters>
                          <SelectParameters>
                              <asp:QueryStringParameter DefaultValue="Badminton" 
                                  Name="SportName" 
                                  QueryStringField="SportName=Badminton" 
                                  Type="String" />
                          </SelectParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="SportName" 
                                  Type="String" />
                              <asp:Parameter DbType="Date" 
                                  Name="Date" />
                              <asp:Parameter Name="Time" 
                                  Type="String" />
                              <asp:Parameter Name="Teacher_ID" 
                                  Type="String" />
                              <asp:Parameter Name="Title" 
                                  Type="String" />
                              <asp:Parameter Name="Surname" 
                                  Type="String" />
                              <asp:Parameter Name="EmailID" 
                                  Type="String" />
                              <asp:Parameter Name="Status" 
                                  Type="String" />
                              <asp:Parameter Name="Requests" 
                                  Type="String" />
                              <asp:Parameter Name="original_ID" 
                                  Type="Int32" />
                              <asp:Parameter Name="original_SportName" 
                                  Type="String" />
                              <asp:Parameter DbType="Date" 
                                  Name="original_Date" />
                              <asp:Parameter Name="original_Time" 
                                  Type="String" />
                              <asp:Parameter Name="original_Teacher_ID" 
                                  Type="String" />
                              <asp:Parameter Name="original_Title" 
                                  Type="String" />
                              <asp:Parameter Name="original_Surname" 
                                  Type="String" />
                              <asp:Parameter Name="original_EmailID" 
                                  Type="String" />
                              <asp:Parameter Name="original_Status" 
                                  Type="String" />
                              <asp:Parameter Name="original_Requests" 
                                  Type="String" />
                          </UpdateParameters>
                      </asp:SqlDataSource>

        <div class="Container">
       <div class ="row">
           <div class="col">
               
                   <label style="font-family: Poppins; font-size: large; font-weight: normal;">My Slots</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" 
                                ID="DropDownList3" runat="server" 
                                Height="60px" DataTextFormatString="{0:MM/dd/yyyy}">
                            
                                <asp:ListItem Text="Select" Value="Select" />
                            </asp:DropDownList>
                        </div>
            </div>
        </div>
       </div>
       <br />

                     <div class="col">
                         <asp:GridView class="table table-striped table table-bordered" 
                             ID="GridView1" runat="server" 
                             AutoGenerateColumns="False" 
                             DataSourceID="SqlDataSource1" 
                             PageSize="8" DataKeyNames="ID" 
                             AllowSorting="True" 
                             BorderStyle="Double" 
                             AllowPaging="True">
                             <Columns>
                                 <asp:TemplateField HeaderText="SportName" 
                                     SortExpression="SportName" 
                                     Visible="False">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox1" 
                                             runat="server" 
                                             Text='<%# Bind("SportName") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label1" runat="server" 
                                             Text='<%# Bind("SportName") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Date" 
                                     SortExpression="Date">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox2" 
                                             runat="server" 
                                             Text='<%# Bind("Date", "{0:MM/dd/yyyy}") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label2" runat="server" 
                                             Text='<%# Bind("Date", "{0:MM/dd/yyyy}") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Time" 
                                     SortExpression="Time">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox3" 
                                             runat="server" 
                                             Text='<%# Bind("Time") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label3" runat="server" 
                                             Text='<%# Bind("Time") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Teacher_ID" 
                                     SortExpression="Teacher_ID">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox4" 
                                             runat="server" 
                                             Text='<%# Bind("Teacher_ID") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label4" runat="server" 
                                             Text='<%# Bind("Teacher_ID") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Title" 
                                     SortExpression="Title">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox5" 
                                             runat="server" 
                                             Text='<%# Bind("Title") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label5" runat="server" 
                                             Text='<%# Bind("Title") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Surname" 
                                     SortExpression="Surname">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox6" 
                                             runat="server" 
                                             Text='<%# Bind("Surname") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label6" runat="server" 
                                             Text='<%# Bind("Surname") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="EmailID" 
                                     SortExpression="EmailID">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox7" 
                                             runat="server" 
                                             Text='<%# Bind("EmailID") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label7" runat="server" 
                                             Text='<%# Bind("EmailID") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Status" 
                                     SortExpression="Status">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox8" 
                                             runat="server" 
                                             Text='<%# Bind("Status") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label8" runat="server" 
                                             Text='<%# Bind("Status") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Requests" 
                                     SortExpression="Requests">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox9" 
                                             runat="server" 
                                             Text='<%# Bind("Requests") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label9" runat="server" 
                                             Text='<%# Bind("Requests") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Change">
                                     <EditItemTemplate>
                                         <asp:LinkButton ID="LinkButton1" runat="server">Send Request</asp:LinkButton>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:LinkButton Visible='<%# CheckEnabled(Eval("EmailID").ToString(), Eval("Teacher_ID").ToString()) %>'  ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CommandArgument='<%# Eval("ID") %>'>Send Request</asp:LinkButton>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                             <HeaderStyle ForeColor="#9900CC" 
                                 HorizontalAlign="Center" />
                         </asp:GridView>
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
