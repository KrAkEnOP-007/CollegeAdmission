<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserHome.Master" CodeBehind="UserChangePwd.aspx.cs" Inherits="College_Addmission_System.UserChangePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style  type="text/css">
        .style1
        {
            width: 100%;
            
        }
        .style2
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
        .style7
        {
        }
        .style16
        {
            width: 46px;
        }
        .style25
        {
            height: 35px;
        }
        .style26
        {
            text-align: center;
        }
        .style27
        {
            width: 299px;
            text-align: center;
        }
        .style28
        {
            width: 299px;
        }
        .style29
        {
            height: 35px;
            width: 299px;
        }
        .style30
        {
            width: 290px;
            text-align: center;
        }
        .style31
        {
            width: 290px;
        }
        .style32
        {
            height: 35px;
            width: 290px;
        }
        .style33
        {
            text-align: left;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            width: 43px;
        }
        .style34
        {
            font-size: large;
            color: #008000;
            font-style: italic;
            font-weight: bold;
            width: 43px;
        }
        .style35
        {
            height: 35px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            width: 43px;
        }
        .style36
        {
            width: 43px;
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
        .style2
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
        .style7
        {
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
        .style15
        {
            color: #008000;
            font-weight: bold;
            font-style: italic;
        }
        .style16
        {
            width: 319px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>--%>
    
        <table class="style1">
            <tr>
                <td class="style2" colspan="5">
                    Change Password</td>
            </tr>
            <tr>
                <td class="style7" colspan="5">
                    <asp:Label ID="lblrmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    &nbsp;</td>
                <td class="style33">
                    User Name</td>
                <td class="style30">
                    <span class="style6"> 
                    <asp:TextBox ID="txtClogname" runat="server" Height="32px" Width="168px"></asp:TextBox>
                    </span>
                </td>
                <td class="style27">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style34">
                    &nbsp;Password</td>
                <td class="style31">
                    <span class="style6"> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="txtClogpwd" runat="server" Height="32px" Width="168px" 
                        TextMode="Password"></asp:TextBox>
                    </span>
                </td>
                <td class="style28">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style25">
                    </td>
                <td class="style35">
                    &nbsp;New Password</td>
                <td class="style32">
                    <span class="style6"> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="txtCRlogpwd" runat="server" Height="32px" Width="168px" 
                        TextMode="Password"></asp:TextBox>
                    </span>
                </td>
                <td class="style29">
                    &nbsp;</td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style36">
                    <span class="style6"> 
                    <asp:Button ID="btnlogin" runat="server" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="#006600" Height="38px" Text="Change" 
                        Width="120px" onclick="btnlogin_Click" />
                    </span>
                </td>
                <td class="style31">
                    <span class="style6"> 
                    <asp:Button ID="btnlogcan" runat="server" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="#006600" Height="40px" Text="Cancle" 
                        Width="140px" onclick="btnlogcan_Click" />
                    </span>
                </td>
                <td class="style28">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" colspan="4">
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