<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminHome.Master" CodeBehind="AdminWelcome.aspx.cs" Inherits="College_Addmission_System.AdminWelcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            color: #FF3300;
            font-style: italic;
            font-weight: bold;
            font-size: large;
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
    
        <table class="style1">
            <tr>
                <td style="text-align: right">
                    <span class="style4">Wel Come</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Large" ForeColor="#FF3300"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="389px" 
                        ImageUrl="~/Images/111.jpg" Width="850px" />
                </td>
            </tr>
        </table>
    
   <%-- </div>
    </form>
</body>
</html>--%>
</asp:Content>