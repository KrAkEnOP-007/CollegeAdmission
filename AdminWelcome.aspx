<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminWelcome.aspx.cs" Inherits="CollegeAdmission.AdminWelcome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <style type="text/css">
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

        .auto-style2 {
            width: 211px;
            height: 218px;
        }

        .auto-style3 {
            height: 218px;
        }

        .auto-style4 {
            width: 211px;
        }

        .hoverbtn:hover {
            font-size: 20px;
            color: green;
            transition: 1s;
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
    <div>--%>
    <%-- </div>
    </form>
</body>
</html>--%>
    <div>
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
    </div>

    <div class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand disabled" href="#">Welcome</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <asp:Button runat="server" ID="AdmissionWindow" CssClass="nav-link active hoverbtn" Text="Admission Window" BorderStyle="None" BackColor="Transparent" OnClick="AdmissionWindow_Click" />
                    </li>
                    <li class="nav-item">
                        <asp:Button runat="server" ID="Marit" CssClass="nav-link active hoverbtn" Text="Marit list" BorderStyle="None" BackColor="Transparent" OnClick="Marit_Click" />
                    </li>
                    <li class="nav-item">
                        <asp:Button runat="server" ID="ChamgePass" CssClass="nav-link active hoverbtn" Text="Change Password" BorderStyle="None" BackColor="Transparent" OnClick="ChamgePass_Click" />
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>



    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View runat="server" ID="View1">
            <table style="width: 80%; margin: 10px; background-color: darkslategray; color: aliceblue;">
                <thead>
                    <tr>
                        <td colspan="3">
                            <h1 style="text-align: center;">Admission Applications </h1>
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Image4" runat="server" />
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="FirstName" runat="server" Text="First Name"></asp:Label>
                            <asp:Label ID="lastName" Style="margin-left: 10px;" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="genderLbl" runat="server" Text="Gender"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="MobileNoLbl" runat="server" Text="Mobile No."></asp:Label>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="BdayLbl" runat="server" Text="BirthDate"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="addressLbl" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="CityLabel" runat="server" Text="City"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="PincodeLbl" runat="server" Text="Pincode"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:Label ID="CategoryLbl" runat="server" Text="Category"></asp:Label>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="SSCLabel" runat="server" Text="SSC Marks"></asp:Label>
                            &nbsp;:-
                           <asp:Label ID="SSCMarks" runat="server" Text="SSC MRkS"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="SSCAttenpts" runat="server" Text="Attenpts"></asp:Label>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="HSCMarksLbl" runat="server" Text="HSC marks ="></asp:Label>
                            <asp:Label ID="HSCMarks" runat="server" Text="HSC Mrks"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="HSCAttempts" runat="server" Text="Attempts"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="perLbl" runat="server" Text="PECENTAGE"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Button ID="PrvData" runat="server" Text="Previous Data" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="NextDataBtn" runat="server" Text="Next Data" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </asp:View>
        <asp:View runat="server" ID="MaritList">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                <ContentTemplate>

                    <asp:Button runat="server" CssClass="btn btn-danger Mybtn" ID="getMarit" Text="Generate Marit List" OnClick="getMarit_Click" />
                    <asp:Panel ID="MaritListPanel" runat="server" Visible="False">
                        <asp:GridView ID="MaritListGrid" runat="server" CssClass="table-dark"></asp:GridView>
                        <asp:Button ID="PublishMaritList" runat="server" CssClass="btn btn-warning" style="width:300px; margin:10px;" Text="Publish marit List" OnClick="PublishMaritList_Click" />
                    </asp:Panel>
                </ContentTemplate>

            </asp:UpdatePanel>


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
       <asp:Button runat="server" ID ="LoginBtn" CssClass="btn btn-danger BtnLogin" Text="Change"  Width="100px"/>
       
      
   </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
