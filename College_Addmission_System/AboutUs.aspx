<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/HomePage.Master" CodeBehind="AboutUs.aspx.cs" Inherits="College_Addmission_System.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .style16
        {
            height: 50px;
            width: 747px;
            text-align: center;
            border-style: ridge;
            border-width: 3px;
        }
        .style17
        {
            height: 181px;
            text-align: center;
            border-style: ridge;
            border-width: 3px;
        }
        .style18
        {
            height: 308px;
            width: 582px;
            text-align: left;
            border-style: ridge;
            border-width: 3px;
        }
        .style19
        {
            height: 308px;
            text-align: center;
            border-style: groove;
        }
        .style20
        {
            font-size: medium;
        }
        .style21
        {
            border-style: ridge;
            border-width: 3px;
            height: 183px;
            width: 178px;
            font-size: medium;
        font-weight: bold;
    }
    .style23
    {
        height: 181px;
    }
    .style24
    {
        text-align: center;
        border-style: groove;
        color: #000000;
        font-size: x-large;
        font-family: "Arial Black";
        font-weight: bold;
        background-color: #FFFFCC;
            text-decoration: underline;
        }
    .style25
    {
        height: 38px;
        text-align: center;
        border-style: ridge;
        border-width: 3px;
        font-size: x-large;
        font-family: "Arial Rounded MT Bold";
        background-color: #FFFFCC;
            text-decoration: underline;
            font-weight: bold;
        }
    .style26
    {
        font-weight: bold;
        font-size: large;
        color: #FF0000;
    }
    .style28
    {
        height: 79px;
        text-align: center;
        border-style: groove;
    }
    .style29
    {
        height: 36px;
        text-align: left;
        border-style: groove;
        font-weight: bold;
        font-size: large;
        color: #FF0000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    
</head>
<body style="background-color: #FF99FF">
    <form id="form1" runat="server">
    <div style="height: 707px">--%>
    
        <table class="style1">
            <tr>
                <td class="style16" style="background-color: #FFCCFF">
        <table class="style5" style="width: 815px; height: 203px;">
            <tr style="background-color: #FFCCFF">
                <td class="style25" colspan="2">
                    Inform About College</td>
            </tr>
            <tr style="background-color: #FFCCFF">
                <td class="style17">
                    <asp:Image ID="Image3" runat="server" Height="183px" 
                        ImageUrl="~/Images/CollegeBuilding.jpg" Width="770px" />
                </td>
                <td class="style23">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
            </tr>
        </table>
                </td>
            </tr>
        </table>
        <table class="style5" 
        
    
    
    
        style="background-color: #FFCCFF; margin-right: 118px; height: 170px; width: 875px; margin-top: 1px;">
            <tr>
                <td class="style24" colspan="2">
                    Message From Chairman</td>
            </tr>
            <tr>
                <td class="style19">
                    <asp:Image ID="Image2" runat="server" Height="248px" 
                        ImageUrl="~/Images/images.jpg" Width="200px" />
                </td>
                <td class="style18">
                    <span class="style21">Merchant college of management studies &amp; Research is 
                    located in the Visnagar .Education Campus at Visnagar and was established in the 
                    year 2000 by Shri. Merchant Charitable Trust, Visnagar.It is 18 km from Head 
                    quater of Mehsana Dirstict .We are committed to developing excellence in 
                    education, training and research. Institutionalized attempts are being made to 
                    promote and foster excellence in developing knowledge skills and attitudes in 
                    all students and commitment to values in faculty and staff. Special emphasis has 
                    been placed on developing an environment highly conducive to building of a solid 
                    foundation of knowledge, personality development, confidence building, and 
                    pursuit of excellence, self-discipline and enhancement of creativity through 
                    motivation and drive, which helps to produce professionals who are well trained 
                    for the rigors of professional life. - 
                    <br />
                    <br />
                    </span>
                    <br class="style20" />
                    <span class="style26">Rajeshkumar D. Patel </span>
                </td>
            </tr>
            <tr>
                <td class="style28" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="C_ID" DataSourceID="SqlDataSource1" Height="94px" 
                        Width="714px">
                        <Columns>
                            <asp:BoundField DataField="C_ID" HeaderText="C_ID" ReadOnly="True" 
                                SortExpression="C_ID" />
                            <asp:BoundField DataField="C_Name" HeaderText="C_Name" 
                                SortExpression="C_Name" />
                            <asp:BoundField DataField="C_Duration" HeaderText="C_Duration" 
                                SortExpression="C_Duration" />
                            <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                                SortExpression="Qualification" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CollegeDBConnectionString4 %>" 
                        SelectCommand="SELECT * FROM [CourseTB]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style29" colspan="2">
                    Above Course Are Provide By Our College. If Some New Course Are Started Then We 
                    will Inform You Later.</td>
            </tr>
        </table>
  <%--  
    </div>
    </form>
<hr />
</body>
</html>--%>
</asp:Content>