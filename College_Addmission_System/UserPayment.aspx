<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserHome.Master" CodeBehind="UserPayment.aspx.cs" Inherits="College_Addmission_System.UserPayment" %>

<%@ Register src="date.ascx" tagname="date" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        .style3
        {
            color: #008000;
            font-style: italic;
            font-weight: bold;
            font-size: large;
        }
        .style4
        {
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
        }
        .style5
        {
            width: 293px;
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            color: #008000;
            background-color: #CCCCFF;
        }
        .style6
        {
            width: 487px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            height: 28px;
        }
        .style7
        {
            height: 28px;
        }
    .style8
    {
        width: 478px;
        font-style: italic;
        font-weight: bold;
        font-size: large;
        color: #008000;
        height: 38px;
    }
    .style11
    {
        color: #008000;
        font-style: italic;
        font-weight: bold;
        font-size: large;
        height: 59px;
        width: 772px;
    }
        .style12
        {
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            color: #008000;
            height: 20px;
            background-color: #CCCCFF;
        }
        .style14
    {
        width: 239px;
        font-style: italic;
        font-weight: bold;
        font-size: large;
        color: #008000;
        height: 39px;
    }
        .style15
        {
            font-size: x-large;
            color: #FF0000;
            font-style: italic;
            font-weight: bold;
            text-align: center;
            width: 100%;
            height: 37px;
            border-style: solid;
            border-width: 2px;
        }
        .style16
        {
            font-size: larger;
        }
        .style20
        {
            width: 239px;
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            color: #008000;
            height: 59px;
            background-color: #CCCCFF;
        }
        .style22
        {
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            height: 39px;
        }
        .style23
        {
            width: 597px;
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            color: #008000;
            height: 59px;
            background-color: #CCCCFF;
        }
        .style24
        {
            width: 239px;
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            color: #008000;
            background-color: #CCCCFF;
        }
        .style25
        {
            width: 597px;
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            color: #008000;
            background-color: #CCCCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
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
        .style3
        {
            color: #008000;
            font-style: italic;
            font-weight: bold;
            font-size: large;
        }
        .style4
        {
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
        }
        .style5
        {
            width: 487px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
        }
        .style6
        {
            width: 487px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            height: 28px;
        }
        .style7
        {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>--%>
    
        <table class="style1">
            <tr>
                <td class="style15" colspan="3">
                    Select Payment Way</td>
            </tr>
            <tr>
                <td class="style12" colspan="3">
                    <asp:Label ID="lblpaymsg" runat="server" style="color: #0000FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Receipt No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    :-</td>
                <td class="style25">
                    <asp:TextBox ID="txtreceipt" runat="server" 
                        ></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Merit ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    :-</td>
                <td class="style25">
                    <asp:TextBox ID="txtmerit" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    :-</td>
                <td class="style25">
                    <asp:TextBox ID="txtpname" runat="server" 
                        ontextchanged="txtpname_TextChanged"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fees&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    :-</td>
                <td class="style25">
                    <asp:TextBox ID="txtfees" runat="server" Enabled="False">9000</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                        class="style16">Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    :-</span></td>
                <td class="style22" colspan="2">
                    <uc1:date ID="date1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style24">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    :-</td>
                <td class="style25">
                    <asp:TextBox ID="txtyear" runat="server"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator8" 
                        ValidationExpression = "^[\s\S]{6,6}$" runat="server" 
                        ControlToValidate="txtno" ErrorMessage="Max 4 No" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium"></asp:RegularExpressionValidator>
                                    </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" OnServerValidate = "Validate_Numeric1"
                        ControlToValidate="txtno" ErrorMessage="Enter Numeric Value"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment Type&nbsp;&nbsp;&nbsp;&nbsp;:-<td>
                                        <asp:DropDownList ID="DDpaytype" runat="server" Height="36px" Width="185px">
                        <asp:ListItem>Cheqe</asp:ListItem>
                        <asp:ListItem>Draft</asp:ListItem>
                    </asp:DropDownList>
                                    </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    :-</td>
                <td class="style25">
                    <asp:TextBox ID="txtno" runat="server"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7" 
                        ValidationExpression = "^[\s\S]{6,6}$" runat="server" 
                        ControlToValidate="txtno" ErrorMessage="Enter 6 Digits No" 
                        Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate = "Validate_Numeric"
                        ControlToValidate="txtno" ErrorMessage="Enter Numeric Value"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnok" runat="server" Font-Bold="True" Font-Italic="True" 
                        Height="29px" onclick="btnok_Click" Text="Submit" Width="124px" 
                        style="text-align: justify" />
                &nbsp;
                    </td>
                <td class="style23">
                    <asp:Button ID="btncan" runat="server" Height="26px" Text="Cancel" 
                        Width="134px" onclick="btncan_Click" style="font-weight: 700" />
                </td>
                <td class="style11">
                    </td>
            </tr>
            <tr>
                <td class="style5" colspan="2">
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