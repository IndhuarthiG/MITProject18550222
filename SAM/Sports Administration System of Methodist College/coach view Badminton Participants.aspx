<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="coach view Badminton Participants.aspx.cs" Inherits="Sports_Administration_System_of_Methodist_College.coach_view_Badminton_Participants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head"
    runat="server">
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
    <link rel="shortcut icon" href="images/favicon.ico"
        type="image/x-icon">
    <link rel="icon" href="images/favicon.ico"
        type="image/x-icon">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1"
    runat="server">
    <section class="section-lg contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-title">Badminton Participants
                    </h2>
                </div>
            </div>

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
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="AdmissionNo"
                            Type="String" />
                        <asp:Parameter
                            Name="FirstName" Type="String" />
                        <asp:Parameter Name="Surname"
                            Type="String" />
                        <asp:Parameter Name="SportName"
                            Type="String" />
                        <asp:Parameter Name="Email"
                            Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="Badminton"
                            Name="SportName"
                            QueryStringField="SportName = Badminton"
                            Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="AdmissionNo"
                            Type="String" />
                        <asp:Parameter
                            Name="FirstName" Type="String" />
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
                        <asp:Parameter Name="original_FirstName"
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
                        AllowSorting="True"
                        BorderStyle="Double"
                        AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="AdmissionNo"
                                HeaderText="AdmissionNo"
                                SortExpression="AdmissionNo" />
                            <asp:BoundField DataField="FirstName"
                                HeaderText="FirstName"
                                SortExpression="FirstName" />
                            <asp:BoundField DataField="Surname"
                                HeaderText="Surname"
                                SortExpression="Surname" />
                            <asp:BoundField DataField="Email"
                                HeaderText="Email"
                                SortExpression="Email" Visible="False" />
                        </Columns>
                        <HeaderStyle
                            HorizontalAlign="Center" />
                    </asp:GridView>
                </div>

            </div>

            <br />
            <br />
            <br />
            <%--<div class="row">
                <div class="col-10">
                    <div class="mb-3">
                        <asp:TextBox CssClass="form-control" ID="TextBox2"
                            runat="server" placeholder="Senders Email"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:TextBox CssClass="form-control" ID="TextBox3"
                            runat="server" placeholder="Password"
                            TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                            runat="server" placeholder="Receivers Email" Enabled="False"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:TextBox CssClass="form-control" ID="TextBox5"
                            runat="server" placeholder="Subject"></asp:TextBox>
                    </div>


                    <div class="mb-3">
                        <asp:TextBox CssClass="form-control" ID="TextBox4"
                            runat="server" placeholder="Type message here"
                            TextMode="MultiLine" Height="300px"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="d-grid gap-2 col-6 mx-auto text-left">
                            <asp:Button ID="Button2"
                                class="btn btn-secondary"
                                runat="server" Text="Emails"
                                Height="50px"
                                Width="150px" 
                                OnClick="Button2_Click"/>

                        </div>
                        <div class="d-grid gap-2 col-6 mx-auto text-right">
                            <asp:Button ID="Button1"
                                class="btn btn-primary ml-lg-3 primary-shadow"
                                runat="server" Text="Send"
                                Height="50px"
                                Width="150px" 
                                OnClick="Button1_Click"/>
                        </div>
                    </div>

                </div>
            </div>--%>

        </div>
        <!-- background shapes -->
        <img class="contact-bg-1 up-down-animation"
            src="images/background-shape/feature-bg-2.png"
            alt="background-shape">
        <img class="contact-bg-2 left-right-animation"
            src="images/background-shape/green-half-cycle.png"
            alt="background-shape">
        <img class="contact-bg-3 up-down-animation"
            src="images/background-shape/green-dot.png"
            alt="background-shape">
        <img class="contact-bg-4 left-right-animation"
            src="images/background-shape/service-half-cycle.png"
            alt="background-shape">
        <img class="contact-bg-5 up-down-animation"
            src="images/background-shape/feature-bg-2.png"
            alt="background-shape">
    </section>
</asp:Content>
