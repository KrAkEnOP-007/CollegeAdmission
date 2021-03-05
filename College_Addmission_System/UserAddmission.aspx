<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserHome.Master" CodeBehind="UserAddmission.aspx.cs" Inherits="College_Addmission_System.UserAddmission" %>

<%@ Register src="date.ascx" tagname="date" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 99%;
            background-color: #CCCCFF;
            height: 1081px;
            margin-right: 94px;
        }
        .style2
        {
            font-size: xx-large;
            color: #FF00FF;
            text-transform: uppercase;
            font-style: italic;
            font-weight: bold;
            text-align: center;
            text-decoration: underline;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
        }
    .style19
    {
        background-color: #CCCCFF;
    }
        .style21
        {
        background-color: #CCCCFF;
        font-style: italic;
        font-size: large;
        text-align: left;
    }
        .style11
        {
            background-color: #CCCCFF;
            height: 38px;
            font-style: italic;
            font-size: large;
            width: 93px;
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
        .style24
        {
            text-align: center;
            font-weight: bold;
            font-size: larger;
            text-decoration: underline;
        height: 54px;
    }
        .style27
        {
            width: 93px;
            height: 113px;
        }
        .style30
        {
            text-align: left;
            width: 308px;
        }
        .style32
        {
            text-align: left;
            margin-left: 40px;
        }
    .style33
    {
            width: 127px;
        }
    .style35
    {
        background-color: #CCCCFF;
        font-style: italic;
        font-size: large;
        text-align: left;
        width: 127px;
    }
    .style36
    {
        background-color: #CCCCFF;
        height: 38px;
        font-style: italic;
        font-size: large;
        width: 127px;
    }
    .style39
    {
        height: 47px;
    }
    .style40
    {
        height: 33px;
        width: 141px;
    }
    .style41
    {
        height: 38px;
        width: 141px;
    }
    .style42
    {
        height: 34px;
        width: 141px;
    }
    .style43
    {
        height: 47px;
        }
    .style45
    {
        text-align: center;
        font-weight: bold;
        font-size: larger;
        text-decoration: underline;
        height: 56px;
    }
    .style48
    {
        height: 52px;
        width: 141px;
    }
    .style49
    {
        width: 93px;
        height: 52px;
    }
    .style52
    {
        height: 43px;
        width: 141px;
    }
    .style54
    {
        width: 93px;
        height: 43px;
    }
    .style57
    {
        height: 35px;
    }
    .style58
    {
        height: 35px;
        width: 127px;
    }
    .style59
    {
        width: 210px;
        height: 35px;
    }
    .style60
    {
        height: 30px;
        width: 127px;
    }
    .style61
    {
        width: 93px;
        height: 30px;
    }
    .style62
    {
        height: 30px;
    }
    .style63
    {
        height: 36px;
        width: 127px;
    }
    .style64
    {
        width: 93px;
        height: 36px;
    }
    .style65
    {
        height: 36px;
    }
    .style68
    {
        height: 40px;
    }
    .style69
    {
        height: 40px;
        width: 127px;
    }
    .style70
    {
        width: 93px;
        height: 40px;
    }
    .style72
    {
        width: 93px;
        height: 39px;
    }
    .style73
    {
        height: 39px;
    }
    .style80
    {
        background-color: #CCCCFF;
        font-style: italic;
        font-size: large;
        text-align: left;
        height: 30px;
    }
    .style81
    {
        width: 308px;
        height: 57px;
    }
    .style82
    {
        height: 57px;
        width: 127px;
    }
    .style83
    {
        height: 57px;
        width: 93px;
    }
        .style90
        {
            text-align: left;
            height: 140px;
            width: 268435520px;
        }
        .style98
        {
            height: 57px;
            width: 27px;
        }
        .style99
        {
            height: 38px;
            width: 127px;
        }
        .style100
        {
            height: 39px;
            width: 127px;
        }
        .style101
        {
            height: 43px;
            width: 127px;
        }
        .style102
        {
            height: 52px;
            width: 127px;
        }
        .style103
        {
            height: 34px;
            width: 127px;
        }
        .style104
        {
            height: 33px;
            width: 127px;
        }
        .style105
        {
            font-size: xx-large;
            color: #FF00FF;
            text-transform: uppercase;
            font-style: italic;
            font-weight: bold;
            text-align: left;
            width: 100%;
            border-style: solid;
            border-width: 2px;
        }
        .style106
        {
            text-decoration: underline;
        }
        .style111
        {
            width: 162px;
        }
        .style112
        {
            height: 25px;
            width: 127px;
        }
        .style113
        {
            width: 93px;
            height: 25px;
        }
        .style114
        {
            width: 127px;
            height: 113px;
        }
        .style132
        {
            width: 18px;
        }
        .style133
        {
            height: 47px;
            width: 210px;
        }
        .style134
        {
            height: 34px;
            width: 210px;
        }
        .style135
        {
            height: 38px;
            width: 210px;
        }
        .style136
        {
            height: 33px;
            width: 210px;
        }
        .style163
        {
            width: 165px;
            height: 35px;
        }
        .style176
        {
            height: 25px;
            width: 27px;
        }
        .style182
        {
            height: 43px;
            width: 27px;
        }
        .style185
        {
            height: 34px;
            width: 27px;
        }
        .style186
        {
            height: 38px;
            width: 27px;
        }
        .style187
        {
            height: 33px;
            width: 27px;
        }
        .style188
        {
            height: 47px;
            width: 10px;
        }
        .style189
        {
            height: 34px;
            width: 10px;
        }
        .style190
        {
            height: 38px;
            width: 10px;
        }
        .style191
        {
            height: 33px;
            width: 10px;
        }
        .style192
        {
            height: 57px;
            width: 158px;
        }
        .style193
        {
            height: 47px;
            width: 158px;
        }
        .style194
        {
            height: 34px;
            width: 158px;
        }
        .style195
        {
            height: 38px;
            width: 158px;
        }
        .style196
        {
            height: 33px;
            width: 158px;
        }
        .style197
        {
            height: 47px;
            width: 67px;
        }
        .style198
        {
            height: 34px;
            width: 67px;
        }
        .style199
        {
            height: 38px;
            width: 67px;
        }
        .style200
        {
            height: 33px;
            width: 67px;
        }
        .style201
        {
            height: 39px;
            width: 27px;
        }
        .style202
        {
            height: 40px;
            width: 27px;
        }
        .style203
        {
            height: 36px;
            width: 27px;
        }
        .style204
        {
            height: 30px;
            width: 27px;
        }
        .style205
        {
            height: 35px;
            width: 27px;
        }
        .style206
        {
            height: 47px;
            width: 27px;
        }
        .style207
        {
            width: 27px;
        }
        .style208
        {
            height: 47px;
            width: 362px;
        }
        .style209
        {
            height: 34px;
            width: 362px;
        }
        .style210
        {
            height: 38px;
            width: 362px;
        }
        .style211
        {
            height: 33px;
            width: 362px;
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
            font-size: xx-large;
            color: #FF00FF;
            text-transform: uppercase;
            font-style: italic;
            font-weight: bold;
            text-align: center;
            text-decoration: underline;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
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
            background-color: #CCCCFF;
            font-style: italic;
            font-size: large;
            text-align: left;
            width: 371px;
        }
        .style11
        {
            background-color: #CCCCFF;
            height: 38px;
            font-style: italic;
            font-size: large;
            width: 371px;
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
        .style22
        {
            background-color: #CCCCFF;
            font-style: italic;
            font-size: large;
            text-align: left;
        }
        .style24
        {
            text-align: center;
            font-weight: bold;
            font-size: larger;
            text-decoration: underline;
        }
        .style26
        {
            width: 95px;
        }
        .style27
        {
            width: 240px;
            height: 53px;
        }
        .style28
        {
            text-align: center;
            width: 200px;
        }
        .style29
        {
            width: 398px;
        }
        .style30
        {
            text-align: left;
            width: 110px;
        }
        .style31
        {
            width: 240px;
        }
        .style32
        {
            text-align: left;
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>--%>
    
        <table class="style1">
            <tr>
                <td class="style105" colspan="9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style106">Addmission Form</span></td>
            </tr>
            <tr>
                <td colspan="9">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style114">
                    Form No.&nbsp;<br />
                </td>
                <td class="style27" colspan="4">
                    <asp:TextBox ID="txtfno" runat="server" Height="39px" Width="102px" 
                        Enabled="False"></asp:TextBox>
                </td>
                <td class="style30" colspan="3" rowspan="2">
&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="162px" Width="150px" />
                                    </td>
                <td class="style90" rowspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style112">
                    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                 </td>
                <td class="style113" colspan="3">
                    <asp:TextBox ID="txtaname" runat="server" Width="164px" Height="32px"></asp:TextBox>
                &nbsp;<span class="style19"><asp:CustomValidator ID="CustomValidator9" runat="server" 
                        ControlToValidate="txtaname" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric8"></asp:CustomValidator>
                    </span>
                </td>
                <td class="style176">
                    <asp:Label ID="lblname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style82">
                    Address :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style83" colspan="3">
                    <asp:TextBox ID="txtaadd" runat="server" Width="203px" TextMode="MultiLine"></asp:TextBox>
                &nbsp;<span class="style19"><asp:CustomValidator ID="CustomValidator10" runat="server" 
                        ControlToValidate="txtaadd" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric9"></asp:CustomValidator>
                    </span>
                </td>
                <td class="style98">
                    <asp:Label ID="lbladd" runat="server"></asp:Label>
                </td>
                <td class="style192">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="style81" colspan="2">
                    <asp:Button ID="btnimage" runat="server" onclick="btnimage_Click1" 
                        Text="Show Image" />
                </td>
            </tr>
            <tr>
                <td class="style35" rowspan="2">
                    BirthDate :-</td>
                <td class="style21" colspan="8">
                    Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Month&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Year</td>
            </tr>
            <tr>
                <td class="style80" colspan="8"><uc1:date ID="date1" runat="server" />
                    
                    <span class="style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    
                </td>
            </tr>
            <tr>
                <td class="style100">
                    Birth of place :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style72" colspan="3">
                    <asp:TextBox ID="txtabirth" runat="server"></asp:TextBox>
                &nbsp;<span class="style19"><asp:CustomValidator ID="CustomValidator11" runat="server" 
                        ControlToValidate="txtabirth" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric10"></asp:CustomValidator>
                    </span>
                </td>
                <td class="style201">
                    <asp:Label ID="lblbplace" runat="server"></asp:Label>
                </td>
                <td colspan="4" class="style73">
                </td>
            </tr>
            <tr>
                <td class="style36">
                    Gender :-</td>
                <td class="style11" colspan="4">
                    <asp:RadioButtonList ID="RBagender" runat="server" Height="29px" 
                        
                        
                        style="margin-left: 0px; margin-right: 0px; color: #000000; font-weight: 400; font-style: normal; font-size: medium;" Width="173px" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style17" colspan="4">
                    &nbsp;</td>
                </tr>
            <tr>
                <td class="style69">
                    Pin Code&nbsp;:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style70" colspan="3">
                    <asp:TextBox ID="txtapin" runat="server" Height="22px" Width="90px"></asp:TextBox>
                &nbsp;<asp:CustomValidator ID="CustomValidator16" runat="server" OnServerValidate = "Validate_Numeric15"
                        ControlToValidate="txtapin" ErrorMessage="Enter Numeric Value"></asp:CustomValidator>
                </td>
                <td class="style202">
                    <asp:Label ID="lblpin" runat="server"></asp:Label>
                </td>
                <td colspan="4" class="style68">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" 
                        ValidationExpression = "^[\s\S]{0,6}$" runat="server" 
                        ControlToValidate="txtapin" ErrorMessage="Max 6 No."></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style24" colspan="5">
                           &nbsp;Other Details</td>
                <td class="style24" colspan="4">
                           &nbsp;</td></tr>
            <tr>
                <td class="style63">Father&#39;s Name:-</td>
                <td class="style64" colspan="3">
                    <asp:TextBox ID="txtafather" runat="server" Width="192px" ></asp:TextBox>
                &nbsp;<span class="style19"><asp:CustomValidator ID="CustomValidator12" runat="server" 
                        ControlToValidate="txtafather" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric11"></asp:CustomValidator>
                    </span>
                </td>
                <td class="style203">
                    <asp:Label ID="lblfname" runat="server"></asp:Label>
                </td>
                <td colspan="4" class="style65">
                </td>
            </tr>
            <tr>
                <td class="style60">
                    Father&#39;s occupation :-</td>
                <td class="style61" colspan="3">
                    <asp:TextBox ID="txtfocc" runat="server" Width="191px"></asp:TextBox>
                    <span class="style19">
                    <asp:CustomValidator ID="CustomValidator17" runat="server" 
                        ControlToValidate="txtfocc" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric16"></asp:CustomValidator>
                    </span>
                </td>
                <td class="style204">
                    <asp:Label ID="lblfoccu" runat="server"></asp:Label>
                </td>
                <td colspan="4" class="style62">
                </td>
            </tr>
            <tr>
                <td class="style58">
                    Phone No:-</td>
                <td class="style163" colspan="2">
                    <asp:TextBox ID="txtaphone" runat="server"></asp:TextBox>
                </td>
                <td class="style59">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate = "Validate_Numeric"
                        ControlToValidate="txtaphone" ErrorMessage="Enter Numeric Value"></asp:CustomValidator>
                </td>
                <td class="style205">
                    <asp:Label ID="lblmob" runat="server"></asp:Label>
                </td>
                <td colspan="2" class="style57">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                        ValidationExpression = "^[\s\S]{0,10}$" runat="server" 
                        ControlToValidate="txtaphone" ErrorMessage="Enter 10 No."></asp:RegularExpressionValidator>
                </td>
                <td colspan="2" class="style57">
                </td>
            </tr>
            <tr>
                <td class="style101">
                    Nationality :-</td>
                <td class="style54" colspan="3">
                    <asp:TextBox ID="txtanati" runat="server"></asp:TextBox>
                    <span class="style19">
                    <asp:CustomValidator ID="CustomValidator13" runat="server" 
                        ControlToValidate="txtanati" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric12"></asp:CustomValidator>
                    </span>
                </td>
                <td class="style182">
                    <asp:Label ID="lblnationality" runat="server"></asp:Label>
                </td>
                <td class="style52" colspan="4">
                </td>
            </tr>
            <tr>
                <td class="style102">
                    Categories :-&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style49" colspan="4">
                    <asp:CheckBoxList ID="checkacategorey" runat="server" 
                        RepeatDirection="Horizontal" Width="350px">
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>ST</asp:ListItem>
                        <asp:ListItem>OBC</asp:ListItem>
                        <asp:ListItem>General</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="style48" colspan="4">
                </td>
            </tr>
            <tr>
                <td class="style45" colspan="9">
                    Eduction Qualification:-</td>
            </tr>
            <tr>
                <td class="style43">
                    SSC Marks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style188">
                    <asp:TextBox ID="txtssc" runat="server" Height="23px" Width="127px"></asp:TextBox>
                </td>
                <td class="style208">
                    <asp:CustomValidator ID="CustomValidator2" runat="server" OnServerValidate = "Validate_Numeric1"
                        ControlToValidate="txtssc" ErrorMessage="*"></asp:CustomValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                        ValidationExpression = "^[\s\S]{0,3}$" runat="server" 
                        ControlToValidate="txtssc" ErrorMessage="Max 3 No."></asp:RegularExpressionValidator>
                </td>
                <td class="style133">
                    <asp:Label ID="lblssc" runat="server"></asp:Label>
                </td>
                <td class="style206">
                    HSC Marks</td>
                <td class="style193">
                    <asp:TextBox ID="txthsc" runat="server" Height="23px"></asp:TextBox>
                </td>
                <td class="style197">
                    <asp:CustomValidator ID="CustomValidator5" runat="server" OnServerValidate = "Validate_Numeric4"
                        ControlToValidate="txtaphone" ErrorMessage="*"></asp:CustomValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" 
                        ValidationExpression = "^[\s\S]{0,3}$" runat="server" 
                        ControlToValidate="txthsc" ErrorMessage="Max 3 No."></asp:RegularExpressionValidator>
                </td>
                <td class="style39" colspan="2">
                    <asp:Label ID="lblhsc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style103">
                    Total Marks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     </td>
                <td class="style189">
                    <asp:TextBox ID="txtstotal" runat="server" Height="21px" Width="126px"></asp:TextBox>
                </td>
                <td class="style209">
                    <asp:CustomValidator ID="CustomValidator3" runat="server" OnServerValidate = "Validate_Numeric2"
                        ControlToValidate="txtaphone" ErrorMessage="*"></asp:CustomValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                        ValidationExpression = "^[\s\S]{0,3}$" runat="server" 
                        ControlToValidate="txtstotal" ErrorMessage="Max 3 No."></asp:RegularExpressionValidator>
                </td>
                <td class="style134">
                    <asp:Label ID="lblstotal" runat="server"></asp:Label>
                </td>
                <td class="style185">
                    Total Marks &nbsp;</td>
                <td class="style194">
                    <asp:TextBox ID="txthtotal" runat="server"></asp:TextBox>
                </td>
                <td class="style198">
                    <asp:CustomValidator ID="CustomValidator6" runat="server" OnServerValidate = "Validate_Numeric5"
                        ControlToValidate="txtaphone" ErrorMessage="*"></asp:CustomValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
                        ValidationExpression = "^[\s\S]{0,3}$" runat="server" 
                        ControlToValidate="txthtotal" ErrorMessage="Max 3 No."></asp:RegularExpressionValidator>
                </td>
                <td class="style42" colspan="2">
                    <asp:Label ID="lblhtotal" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style99">
                    Attempt<td class="style190">
                    <asp:TextBox ID="txtsatt" runat="server"></asp:TextBox>
                </td>
                <td class="style210">
                    <asp:CustomValidator ID="CustomValidator4" runat="server" OnServerValidate = "Validate_Numeric3"
                        ControlToValidate="txtaphone" ErrorMessage="*"></asp:CustomValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                        ValidationExpression = "^[\s\S]{0,1}$" runat="server" 
                        ControlToValidate="txtsatt" ErrorMessage="Max 1 No."></asp:RegularExpressionValidator>
                </td>
                <td class="style135">
                    <asp:Label ID="lblsattempt" runat="server"></asp:Label>
                </td>
                <td class="style186">
                    Attempt</td>
                <td class="style195">
                    <asp:TextBox ID="txthatt" runat="server"></asp:TextBox>
                </td>
                <td class="style199">
                    <asp:CustomValidator ID="CustomValidator7" runat="server" OnServerValidate = "Validate_Numeric6"
                        ControlToValidate="txtaphone" ErrorMessage="*"></asp:CustomValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                        ValidationExpression = "^[\s\S]{0,1}$" runat="server" 
                        ControlToValidate="txthatt" ErrorMessage="Max 1 No."></asp:RegularExpressionValidator>
                </td>
                <td class="style41" colspan="2">
                    <asp:Label ID="lblhattempt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style104">
                    Board<td class="style191">
                    <asp:TextBox ID="txtsboard" runat="server"></asp:TextBox>
                </td>
                <td class="style211">
                    <span class="style19">
                    <asp:CustomValidator ID="CustomValidator15" runat="server" 
                        ControlToValidate="txtsboard" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric13"></asp:CustomValidator>
                    </span>
                                    </td>
                <td class="style136">
                    <asp:Label ID="lblsboard" runat="server"></asp:Label>
                </td>
                <td class="style187">
                    Per(%)</td>
                <td class="style196">
                    <asp:TextBox ID="txthper" runat="server"></asp:TextBox>
                </td>
                <td class="style200">
                    <asp:CustomValidator ID="CustomValidator8" runat="server" OnServerValidate = "Validate_Numeric7"
                        ControlToValidate="txtaphone" ErrorMessage="*"></asp:CustomValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" 
                        ValidationExpression = "^[\s\S]{0,3}$" runat="server" 
                        ControlToValidate="txthper" ErrorMessage="Max 3 No."></asp:RegularExpressionValidator>
                </td>
                <td class="style40" colspan="2">
                    <asp:Label ID="lblhper" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style33">
                    &nbsp;</td>
                <td class="style111" colspan="3">
                    &nbsp;</td>
                <td class="style207">
                    Board
                <td class="style132">
                    <asp:TextBox ID="txthboard" runat="server"></asp:TextBox>
                </td>
                <td class="style132">
                    <span class="style19">
                    <asp:CustomValidator ID="CustomValidator14" runat="server" 
                        ControlToValidate="txthboard" ErrorMessage="Enter Char" 
                        OnServerValidate="Validate_Numeric14"></asp:CustomValidator>
                    </span>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblhboard" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="5" class="style32">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnfsubmit" runat="server" Font-Bold="True" Height="34px" 
                        onclick="btnfsubmit_Click" Text="Submit Form" Width="145px" />
                </td>
                <td colspan="4" class="style32">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnfcancel" runat="server" Font-Bold="True" Height="30px" 
                        Text="Cancel" Width="91px" />
                </td>
            </tr>
        </table>
    
    </asp:Content>