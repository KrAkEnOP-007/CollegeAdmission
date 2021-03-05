<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="RegistrationDemo.aspx.cs" Inherits="CollegeAdmission.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #66FFFF;
        }
        .style4
        {
            background-color: #CCCCFF;
            font-style: italic;
            font-weight: bold;
            font-size: 50px;
            color: #FF00FF;
            text-transform: uppercase;
            text-align: center;
        }
        .style11
        {
            background-color: #CCCCFF;
            height: 38px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            width: 270px;
        }
        .style16
        {
            background-color: #CCCCFF;
            height: 38px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            width: 234px;
        }
        .style17
        {
            background-color: #CCCCFF;
            height: 38px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
        }
        .style18
        {
            background-color: #CCCCFF;
            height: 38px;
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            color: #FF00FF;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style19
    {
        background-color: #CCCCFF;
    }
    .style20
    {
        background-color: #CCCCFF;
        font-style: italic;
        font-size: large;
        color: #008000;
        text-align: left;
    }
        .style21
        {
            font-style: italic;
            font-weight: bold;
            font-size: xx-large;
            color: #FF00FF;
            text-transform: uppercase;
            height: 59px;
            text-align: center;
            background-color: #CCCCFF;
        }
        .style22
        {
            background-color: #CCCCFF;
            font-style: italic;
            font-size: large;
            color: #008000;
            text-align: left;
            height: 27px;
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
            background-color: #66FFFF;
        }
        .style4
        {
            background-color: #FFCC99;
            font-style: italic;
            font-weight: bold;
            font-size: 50px;
            color: #FF00FF;
            text-transform: uppercase;
            text-align: center;
        }
        .style9
        {
            background-color: #66FFFF;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            text-align: left;
        }
        .style11
        {
            background-color: #66FFFF;
            height: 38px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            width: 270px;
        }
        .style16
        {
            background-color: #66FFFF;
            height: 38px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
            width: 234px;
        }
        .style17
        {
            background-color: #66FFFF;
            height: 38px;
            font-style: italic;
            font-weight: bold;
            font-size: large;
            color: #008000;
        }
        .style18
        {
            background-color: #FFCC99;
            height: 38px;
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            color: #FF00FF;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>--%>
  
    
        <table class="style1" 
            
            
        style="color: #FFFFFF; background-color: #808080; font-size: 20px; font-weight: bold; height: 515px; margin-left: 0px; width: 100%;">
            <tr>
                <td class="style21" colspan="2">
                    -:registration:-</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style20">
                    <asp:TextBox ID="txtArno" runat="server" Enabled="False" Height="26px" 
                        Width="154px" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    First Name :-</td>
                <td class="style20">
                    <span class="style19">
                    <asp:TextBox ID="txtfname" runat="server" Height="25px" Width="157px" 
                        ></asp:TextBox>
                    &nbsp;</span><asp:Label ID="lblfname" runat="server"></asp:Label>
                &nbsp;&nbsp;
                    <asp:CustomValidator ID="CustomValidator2" runat="server" 
                        ControlToValidate="txtfname" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric1"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    Last Name :-&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style20">
                    <span class="style19">
                    <asp:TextBox ID="txtlname" runat="server" Height="25px" Width="157px" 
                        ></asp:TextBox>
                    &nbsp;<asp:Label ID="lbllname" runat="server"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:CustomValidator ID="CustomValidator3" runat="server" 
                        ControlToValidate="txtlname" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric2"></asp:CustomValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Gender :-</td>
                <td class="style17">
                    <asp:RadioButtonList ID="RBgender" runat="server" Height="29px" 
                        style="margin-left: 0px; margin-right: 0px" Width="173px" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                </tr>
            <tr>
                <td class="style20" rowspan="2">
                    BirthDate :</td>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Month&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Year</td>
            </tr>
            <tr>
                <td class="style20">
                    <span class="style19">
                    
                    <br />
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    City&nbsp;:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style22">
                    <span class="style19">
                    <asp:TextBox ID="txtcity" runat="server" Height="25px" Width="157px"></asp:TextBox>
                    &nbsp;<asp:Label ID="lblcity" runat="server"></asp:Label>
                    &nbsp;
                    <asp:CustomValidator ID="CustomValidator4" runat="server" 
                        ControlToValidate="txtcity" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric3"></asp:CustomValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    Mobile No. :-</td>
                <td class="style20">
                    <span class="style19">
                    <asp:TextBox ID="txtmob" runat="server" Height="25px" Width="157px" 
                        ></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate = "Validate_Numeric"
                        ControlToValidate="txtmob" ErrorMessage="Enter Numeric Value"></asp:CustomValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                        ValidationExpression = "^[\s\S]{0,10}$" runat="server" 
                        ControlToValidate="txtmob" ErrorMessage="Enter 10 No."></asp:RegularExpressionValidator>
                &nbsp;<asp:Label ID="lblmob" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18" colspan="2">
                    -:
                    Enter your Login &amp; Password :-</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;Login ID&nbsp;:-&nbsp;&nbsp;
                    </td>
                <td class="style20">
                    <span class="style19">
                    <asp:TextBox ID="txtuname" runat="server" Height="26px" Width="157px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lblid" runat="server"></asp:Label>
                    &nbsp;
                    </span>
                    <asp:Button ID="btnavl" runat="server" Height="29px" onclick="btnavl_Click" 
                        Text="Availibility" Width="121px" />
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    Password&nbsp;&nbsp;:-</td>
                <td class="style20">
                    <span class="style19">
                    <asp:TextBox ID="txtpwd" runat="server" Height="26px" Width="157px" 
                        TextMode="Password"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblpwd" runat="server"></asp:Label>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                        ValidationExpression = "^[\s\S]{8,16}$" runat="server" 
                        ControlToValidate="txtpwd" ErrorMessage="Min 8 Max 16 Digits"></asp:RegularExpressionValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style20" colspan="2">
                    <span class="style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsubmit" runat="server" Font-Bold="True" Font-Underline="False" 
                        Height="34px" onclick="btnsubmit_Click" Text="SUBMIT" Width="116px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Underline="False" 
                        Height="34px" onclick="btncancle_Click" Text="CANCAL" Width="116px" />
                    </span>
                </td>
            </tr>
            </table>
    
  <%-- </div>
    </form>
   
</body>
</html>--%>
</asp:Content>