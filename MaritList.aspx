<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="MaritList.aspx.cs" Inherits="CollegeAdmission.MaritList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br /><br />
    <asp:Button ID="MaritCheckBtn" runat="server" Text="Check For Marit List" CssClass="btn btn-secondary" OnClick="MaritCheckBtn_Click"/><br /><br />

    <asp:Panel ID="Panel1" runat="server" Visible="False">

        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </asp:Panel>
</asp:Content>
