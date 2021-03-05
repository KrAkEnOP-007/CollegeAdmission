<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminWelcome.aspx.cs" Inherits="CollegeAdmission.AdminWelcome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     thead{
         align-content:center;
     }
     table{
         background-color:cadetblue;
     }
     AdmisiionList{
         color:burlywood;
         width:200px;
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
    
       
    
   <%-- </div>
    </form>
</body>
</html>--%>
    <div>
        <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Height="36px" Orientation="Horizontal" 
                    style="color: #FF0000; font-size: x-large" Width="816px" 
                    onmenuitemclick="Menu1_MenuItemClick" meta:resourcekey="Menu1Resource1" 
                    BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" 
                    Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="10px">
                    <StaticSelectedStyle BackColor="#1C5E55" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                    <DynamicMenuStyle BackColor="#E3EAEB" />
                    <DynamicSelectedStyle BackColor="#1C5E55" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                    <Items>
                        <asp:MenuItem NavigateUrl="~/AdminWelcome.aspx" Text="WelCome" Value="WelCome" 
                            meta:resourcekey="MenuItemResource1">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AdminMerit.aspx" Text="Merit" Value="Merit" 
                            meta:resourcekey="MenuItemResource2">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AdminChangePwd.aspx" Text="Change Password" 
                            Value="Change Password" meta:resourcekey="MenuItemResource3"></asp:MenuItem>
                        
                    </Items>
                </asp:Menu>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View runat="server" ID="AdmisiionData">
            <table>
                <thead><tr><td><h1> Admission Applications 
                    
                    </h1></td></tr></thead>
                <tbody>
                    <tr>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </tr>
                </tbody>
            </table>
        </asp:View>
        <asp:View runat="server" ID="MaritList"></asp:View>
        <asp:View runat="server" ID="ChangePassword"></asp:View>
    </asp:MultiView>
</asp:Content>