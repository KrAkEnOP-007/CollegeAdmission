<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CollegeAdmission.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 38px;
            background-color: #CCCCFF;
        }
        .style3
        {
            font-style: italic;            
            font-weight: bold;
            font-size: large;
            color: #008000;
            background-color: #CCCCFF;
        }
        .style4
        {
        font-style: italic;
        font-weight: bold;
        font-size: x-large;
        color: #008000;
        background-color: #CCCCFF;
    }
        .style5
        {
            font-size: x-large;
        background-color: #CCCCFF;
    }
    .style6
    {
        background-color: #CCCCFF;
    }
        .style12
        {
            width: 100%;
            background-color: #CCCCFF;
        }
        .style13
        {
        }
        .style14
        {
        }
        .style15
        {
            color: #008000;
            font-weight: bold;
            font-style: italic;
        }
        .style16
        {
        }
        .style17
        {
            width: 339px;
            height: 46px;
        }
        .style18
        {
            height: 46px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

    .style1
    {
        width: 100%;
        border-color: #66FFFF;
        background-color: #66FFFF;
    }
    .style3
    {
        height: 48px;
    }
    .style5
    {
        font-size: x-large;
        color: #008000;
        font-style: italic;
        font-weight: bold;
    }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>--%><%--<span class="style6">--%> 
    <table class="style12">
        <tr>
            <td class="style16" colspan="2">
                <span class="style6">
                    <asp:Label ID="lblmessage" runat="server"></asp:Label>
                    </span>
                </td>
        </tr>
        <tr>
            <td class="style16">
                <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name</span></td>
            <td>
                <span class="style6">
                    <asp:TextBox ID="txtloginame" runat="server" Height="32px" Width="183px" ></asp:TextBox>
                    </span>
                </td>
        </tr>
        <tr>
            <td class="style16">
                <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style15">Password</span></span><span 
                        class="style6">&nbsp;</span></td>
            <td class="style13">
                <span class="style6">
                    <asp:TextBox ID="txtlogpwd" runat="server" Height="32px" Width="187px" 
                        TextMode="Password"></asp:TextBox>
                    </span>
                </td>
        </tr>
        <tr>
            <td class="style16">
                    <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                User Type</span></td>
            <td class="style13">
                    <span class="style6">
                    <asp:DropDownList ID="DDUtype" runat="server" Height="39px" Width="149px">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                    </asp:DropDownList>
                    </span>
            </td>
        </tr>
        <tr>
            <td class="style17">
                    <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnlogin" runat="server" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="#006600" Height="38px" Text="Log-In" 
                        Width="120px" onclick="btnlogin_Click" />
                    </span>
            </td>
            <td class="style18">
                    <span class="style6">&nbsp;&nbsp;
                    <asp:Button ID="btnlogcan" runat="server" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="#006600" Height="40px" Text="Cancle" 
                        Width="140px" onclick="btnlogcan_Click" />
                    </span>
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="2">
                &nbsp;</td>
        </tr>
        </table>
    
    <%--</div>
</form>
</body>
</html>--%>
</asp:Content>

