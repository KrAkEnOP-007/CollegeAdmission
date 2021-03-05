<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminHome.Master" CodeBehind="AdminChangePwd.aspx.cs" Inherits="College_Addmission_System.AdminChangePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
            height: 36px;
            background-color: #CCCCFF;
        }
        .style19
        {
            width: 100%;
            background-color: #CCCCFF;
        }
        .style20
        {
            font-size: x-large;
            color: #FF0000;
            font-style: italic;
            font-weight: bold;
            text-align: center;
        }
        .style6
        {
            background-color: #CCCCFF;
        }
        .style6
        {
            height: 145px;
        }
        .style21
        {
            width: 348px;
        }
        .style23
        {
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            height: 34px;
        }
        .style24
        {
            height: 34px;
        }
        .style25
        {
            width: 348px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            height: 35px;
        }
        .style26
        {
            height: 35px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
            width: 100%;
            height: 36px;
            background-color: #CCCCFF;
        }
        .style1
        {
            width: 100%;
            background-color: CCCCFF;
        }
        .style2
        {
            width: 100%;
            border-style: solid;
            border-width: 2px;
        }
        .style2
        {
            font-size: x-large;
            color: #FF0000;
            font-style: italic;
            font-weight: bold;
            text-align: center;
        }
        .style16
        {
            width: 427px;
        }
        .style6
        {
            height: 145px;
        }
        .style6
    {
        background-color: #CCCCFF;
    }
        .style4
        {
            height: 140px;
            width: 141px;
        }
        .style4
        {
        font-style: italic;
        font-weight: bold;
        font-size: x-large;
        color: #008000;
        background-color: #CCCCFF;
    }
        .style4
        {
            height: 140px;
            width: 141px;
        }
        .style5
        {
            font-size: x-large;
        background-color: #CCCCFF;
    }
        .style5
        {
            width: 947px;
        }
        .style5
        {
            font-size: x-large;
        background-color: #CCCCFF;
    }
        .style5
        {
            width: 947px;
        }
        .style15
        {
            color: #008000;
            font-weight: bold;
            font-style: italic;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>--%>
    
        <table class="style19">
            <tr>
                <td class="style20" colspan="2">
                    Change Password</td>
            </tr>
            <tr>
                <td class="style23" colspan="2">
                    <asp:Label ID="lblrmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style23">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    User Name</td>
                <td class="style24">
                    <asp:TextBox ID="txtAClogname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style23">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Old Password</td>
                <td class="style24">
                    <asp:TextBox ID="txtAClogpwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style25">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    New Password</td>
                <td class="style26">
                    <asp:TextBox ID="txtACRlogpwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    <span class="style6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAlogin" runat="server" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="#006600" Height="38px" Text="Change" 
                        Width="120px" onclick="btnlogin_Click" />
                    </span>
                </td>
                <td>
                    <asp:Button ID="btnlogcal" runat="server" Font-Bold="True" Font-Italic="True" 
                        Height="35px" onclick="btnlogcal_Click" 
                        style="color: #008000; font-size: x-large" Text="Cancel" Width="116px" />
                </td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
    </table>
    
    <%--</div>
    </form>
</body>
</html>--%>
</asp:Content>