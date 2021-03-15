<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminWelcome.aspx.cs" Inherits="CollegeAdmission.AdminWelcome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <style type="text/css">
        body{
            margin:10px;
        }
        thead {
            align-content: center;
        }

        table {
            background-color: cadetblue;
        }

        AdmisiionList {
            color: burlywood;
            width: 200px;
        }

        td {
            height: 40px;
        }
        .hoverbtn{
            color:aliceblue;
            padding:5px;
            background-color:transparent;

        }
        .hoverbtn:hover {
            
            color: darkblue;
            transition: 1s;
            background-color:cornflowerblue;
            border-radius:5px;
        }

        li {
            display: flex;
            margin: 10px;
            font-size: 15px;
            font-weight: 900;
        }
        .Mybtn{
            width:200px;
           margin:20px 20px;
        }

         .ChangePassBox{
            align-content:center;
            justify-content:center;
            background-color:rgba(0, 0, 0, 0.8);
            box-shadow:8px 8px black;
            height:500px; 
            width: 400px;
            margin:20px auto;
            
            margin-bottom:20px;
            padding:25px;
        }
        #LoginLbl{
          
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            width: 160px;
            margin:auto;
            border:2px solid blue;
        }
        .loginLbl{
            
            position:relative;
            color:cyan;
            font-size:25px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            left:85px;
            
        }
        .BtnLogin{
            position:relative;
            width:70px;
            top:70px;
            left:30%;
            
        }
        .auto-style5 {
            
            border: 2px solid #000080;
            margin-right: 0px;
        }
        .auto-style8 {
      
        }
        .auto-style11 {
            width: 420px;
        }
        .auto-style13 {
            width: 383px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #CCCCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>--%><%-- </div>
    </form>
</body>
</html>--%>    
        <%-- 
        <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Height="36px" Orientation="Horizontal" 
                    style="color: #FF0000; font-size: x-large" Width="816px" 
                     meta:resourcekey="Menu1Resource1" 
                    BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                    Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="10px">
                    <StaticSelectedStyle BackColor="#1C5E55" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                    <DynamicMenuStyle BackColor="#E3EAEB" />
                    <DynamicSelectedStyle BackColor="#1C5E55" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                    <Items>
                        <asp:MenuItem Text="WelCome" Value="WelCome" 
                            meta:resourcekey="MenuItemResource1">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AdminMerit.aspx" Text="Merit" Value="Merit" 
                            meta:resourcekey="MenuItemResource2">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AdminChangePwd.aspx" Text="Change Password" 
                            Value="Change Password" meta:resourcekey="MenuItemResource3"></asp:MenuItem>
                        
                    </Items>
                </asp:Menu>
        --%>
    

    <div class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <asp:Button runat="server" ID="WelcomeAdmin" CssClass="navbar-brand hoverbtn" Text="Welcome" BorderStyle="None" OnClick="WelcomeAdmin_Click" />
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <asp:Button runat="server" ID="AdmissionWindow" CssClass="nav-item hoverbtn" Text="Admission Window" BorderStyle="None"  OnClick="AdmissionWindow_Click" />
                    </li>
                    <li class="nav-item">
                        <asp:Button runat="server" ID="Marit" CssClass=" hoverbtn" Text="Marit list" BorderStyle="None"  OnClick="Marit_Click" />
                    </li>
                    <li class="nav-item">
                        <asp:Button runat="server" ID="ChamgePass" CssClass="hoverbtn" Text="Change Password" BorderStyle="None"  OnClick="ChamgePass_Click" />
                    </li>
                </ul>
            </div>
        </div>
    </div>



    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="3">
        <asp:View runat="server" ID="View1">
           
            
                    <asp:FormView ID="FormView1" runat="server" style="font-size:24px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;  " AllowPaging="True" CssClass="auto-style8" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="999px" Caption="Student Data" CaptionAlign="Top" HeaderText="Student Data" HorizontalAlign="Center">

                        <EditItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            FIrstName:
                            <asp:TextBox ID="FIrstNameTextBox" runat="server" Text='<%# Bind("FIrstName") %>' />
                            <br />
                            LastName:
                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                            <br />
                            FatherName:
                            <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' />
                            <br />
                            MobileNo:
                            <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                            <br />
                            Gender:
                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                            <br />
                            BirthDate:
                            <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            City:
                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                            <br />
                            Category:
                            <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                            <br />
                            HSCMarks:
                            <asp:TextBox ID="HSCMarksTextBox" runat="server" Text='<%# Bind("HSCMarks") %>' />
                            <br />
                            Percentage:
                            <asp:TextBox ID="PercentageTextBox" runat="server" Text='<%# Bind("Percentage") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>

                        <HeaderStyle HorizontalAlign="Center" />

                        <InsertItemTemplate>
                            Id:
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                            <br />
                            FIrstName:
                            <asp:TextBox ID="FIrstNameTextBox" runat="server" Text='<%# Bind("FIrstName") %>' />
                            <br />
                            LastName:
                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                            <br />
                            FatherName:
                            <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' />
                            <br />
                            MobileNo:
                            <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                            <br />
                            Gender:
                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                            <br />
                            BirthDate:
                            <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            City:
                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                            <br />
                            Category:
                            <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                            <br />
                            HSCMarks:
                            <asp:TextBox ID="HSCMarksTextBox" runat="server" Text='<%# Bind("HSCMarks") %>' />
                            <br />
                            Percentage:
                            <asp:TextBox ID="PercentageTextBox" runat="server" Text='<%# Bind("Percentage") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table cellpadding="2" class="auto-style5">
                                <tr>
                                    <td class="auto-style13">Id:-</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Student Picture</td>
                                    <td class="auto-style11">
                                        <asp:Image ID="StudImage" runat="server" Height="62px" ImageUrl='<%# Eval("StudentPicture") %>' Width="87px" AlternateText='<%# Eval("StudentPicture") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">First Name</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="FirstName" runat="server" Text='<%# Eval("FIrstName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Last Name</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="lastName" runat="server" Style="margin-left: 10px;" Text='<%# Eval("LastName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Gender</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="genderLbl" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Birthdate</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="BdayLbl" runat="server" Text='<%# Eval("BirthDate") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Category</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="CategoryLbl" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Father&#39;s Name</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("FatherName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Father occ</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("FatherOccupation") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Mobile No</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="MobileNoLbl" runat="server" Text='<%# Eval("MobileNo") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Email</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Address</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="addressLbl" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">City</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Pincode</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="PincodeLbl" runat="server" Text='<%# Eval("Pincode") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">SSC Marks</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="SSCMarks" runat="server" Text='<%# Eval("SSCmarks") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">SSC Attempts</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="SSCAttenpts" runat="server" Text='<%# Eval("AttemptsSSC") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">HSC marks</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="HSCMarks" runat="server" Text='<%# Eval("HSCMarks") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">HSC Attempts</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="HSCAttempts" runat="server" Text='<%# Eval("AttemptsHSC") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Percentage</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="perLbl" runat="server" Text='<%# Eval("Percentage") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>

                    </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DATAMAIN %>" SelectCommand="SELECT * FROM [RegistrationTable]"></asp:SqlDataSource>
        </asp:View>
        
        <asp:View runat="server" ID="MaritList" >
          

                    <asp:Button runat="server" CssClass="btn btn-danger Mybtn" ID="getMarit" Text="Generate Marit List" OnClick="getMarit_Click" />
                    <asp:Button ID="PublishMaritList" runat="server" CssClass="btn btn-warning" OnClick="PublishMaritList_Click" style="width:300px; margin:10px;" Text="Publish marit List" Visible="False" />
                    <asp:Panel ID="MaritListPanel" runat="server"  Visible="False">
                        <asp:GridView ID="MaritListGrid" runat="server"  CssClass="table-dark" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" PageSize="1" Width="60%">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="FIrstName" HeaderText="FIrstName" SortExpression="FIrstName" />
                                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="HSCMarks" HeaderText="HSCMarks" SortExpression="HSCMarks" />
                                <asp:BoundField DataField="Percentage" HeaderText="Percentage" SortExpression="Percentage" />
                                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DATAMAIN %>" SelectCommand="SELECT [Id], [FIrstName], [LastName], [FatherName], [MobileNo], [Gender], [BirthDate], [Email], [City], [HSCMarks], [Percentage], [Category] FROM [RegistrationTable]"></asp:SqlDataSource>
                        
                    </asp:Panel>
                

        </asp:View>
        <asp:View runat="server" ID="ChangePassword">
           <div class="ChangePassBox">
            <asp:Label runat="server" CssClass="loginLbl" ID="CpLabel">Change Password</asp:Label>
           <div class="form-floating mb-3" style="margin-top:20px;">
               <asp:TextBox runat="server" type="password" class="form-control bg-dark text-white border-3" ID="OldPasswordText" placeholder="Enter Old Password"/>
               <label class="text-white" for="floatingInput">Enter Old Password</label>
           </div>
           <div class="form-floating">
               <asp:TextBox runat="server" type="password" class="form-control bg-dark text-white border-3" ID="NewPassw1" placeholder="Password"/>
               <label class="text-white" for="floatingPassword">Enter New Password</label>
           </div>
                <div class="form-floating" style="margin-top:10px;">
               <asp:TextBox runat="server" type="password" class="form-control bg-dark text-white border-3" ID="NewPassw2" placeholder="Password"/>
               <label class="text-white" for="floatingPassword">Re Enter Password</label>
           </div>
       <asp:Button runat="server" ID ="LoginBtn" CssClass="btn btn-danger BtnLogin" Text="Change"  Width="100px" OnClick="LoginBtn_Click"/>
       
      
   </div>
        </asp:View>
        <asp:View runat="server" ID="WelcomeAdminView">
            <div style="background-color:coral;color:indigo; height:200px;   text-align:center; width:100%; font-size:90px;">
                <p style="text-shadow: 10px 3px 11px navy;">Welcome Admin</p>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
