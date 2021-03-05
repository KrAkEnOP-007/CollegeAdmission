<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminHome.Master" CodeBehind="AdminMerit.aspx.cs" Inherits="College_Addmission_System.AdminMerit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 385px;
            background-color: #CCCCFF;
        }
        .style5
        {
        }
        .style6
        {
            font-weight: bold;
            font-size: xx-large;
            color: #FF0000;
            text-align: center;
            text-decoration: underline;
        }
        .style8
        {
            height: 37px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 385px;
            background-color: #CCCCFF;
        }
        .style5
        {
        }
        .style6
        {
            font-style: italic;
            font-weight: bold;
            font-size: xx-large;
            color: #FF0000;
            text-align: center;
        }
        .style8
        {
            height: 37px;
        }
        .style9
        {
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>--%>
    
        <table class="style2">
            <tr>
                <td class="style6" colspan="2">
                    Merit</td>
            </tr>
            <tr>
                <td class="style5" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        Height="266px" Width="608px" GridLines="Horizontal">
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblmes" runat="server"></asp:Label>
                </td>
                <td class="style8">
                </td>
            </tr>
            <tr>
                <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnshow" runat="server" Height="37px" Text="Show" 
                        Width="112px" Font-Bold="True" Font-Italic="True" Font-Size="20px" 
                        onclick="btnshow_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btninsert" runat="server" Height="37px" Text="Insert" 
                        Width="112px" Font-Bold="True" Font-Italic="True" Font-Size="20px" 
                        onclick="btninsert_Click" />
                </td>
            </tr>
        </table>
    
    <%--</div>
    </form>
</body>
</html>--%>
</asp:Content>