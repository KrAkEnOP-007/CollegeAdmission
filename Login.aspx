<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CollegeAdmission.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <style>
        .loginBox{
            align-content:center;
            justify-content:center;
            background-color:rgba(0, 0, 0, 0.8);
            box-shadow:8px 8px black;
            height:500px; 
            width: 400px;
            margin:auto;
            margin-bottom:20px;
            padding:25px;
        }
        #LoginLbl{
          
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            width: 160px;
            margin:auto;
            border:2px solid blue;
        }
        .loginLbl{
            
            position:relative;
            color:cyan;
            font-size:45px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            left:120px;
        }
        .BtnLogin{
            position:relative;
            width:70px;
            top:70px;
            left:30%;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="loginBox">
            <asp:Label runat="server" CssClass="loginLbl" ID="LoginLbl">Login</asp:Label>
           <div class="form-floating mb-3">
               <input type="email" class="form-control bg-dark text-white border-3" id="floatingInput" placeholder="name@example.com"/>
               <label class="text-white" for="floatingInput">Email address</label>
           </div>
           <div class="form-floating">
               <input type="password" class="form-control bg-dark text-white border-3" id="floatingPassword" placeholder="Password"/>
               <label class="text-white" for="floatingPassword">Password</label>
           </div>
       <asp:Button runat="server" ID ="LoginBtn" CssClass="btn btn-secondary BtnLogin" Text="Submit"  Width="100px"/>
       
      
   </div>
</asp:Content>
