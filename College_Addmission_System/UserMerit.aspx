<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserHome.Master" CodeBehind="UserMerit.aspx.cs" Inherits="College_Addmission_System.UserMerit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        
    .style9
    {
        height: 34px;
        font-style: italic;
        font-weight: bold;
        font-size: xx-large;
        color: #FF0000;
        text-align: center;
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
            height: 391px;
            background-color: #CCCCFF;
        }
        .style4
        {
            height: 343px;
        }
        .style5
        {
            height: 45px;
            font-style: italic;
            font-weight: bold;
            font-size: xx-large;
            color: #FF0000;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>--%>
    
        <table class="style2">
            <tr>
                <td class="style9">
                    Merit</td>
            </tr>
            <tr>
                <td>
&nbsp;
                    <asp:Label ID="lblmerit" runat="server" style="text-align: left"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:GridView ID="GridView1" runat="server" Height="139px" Width="327px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <asp:Button ID="btnmerit" runat="server" Height="39px" onclick="btnmerit_Click" 
                        Text="Show Merit" Width="112px" Font-Bold="True" Font-Italic="True" 
                        Font-Size="17px" />
                </td>
            </tr>
        </table>
    
   <%-- </div>
    </form>
</body>
</html>--%>

</asp:Content>