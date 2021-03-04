<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CollegeAdmission.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
 
    <style>
        td {
            height: 40px;
        }

        .auto-style1 {
            height: 46px;
        }

        .auto-style2 {
            width: 224px;
        }
        #firstName , #lastName{
            width: 160px;
           
        }
        table{
            margin:5px;
          
        }
       
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <table style="width:90%; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size:20px;">
            <thead ><tr"><td style="height:120px; text-align:center; align-items:center; justify-content:center; font-size:50px ;" colspan="3" class="auto-style1">Registration form</td></tr></thead>
            <tbody>
                <tr>
                    <td>NAME :-<br />
                    </td>
                    <td>
                        <div class="col">
                            <div class="row">
                                <div class="col">
                                    <input id="firstName" type="text" class="form-control" placeholder="First name" aria-label="First name">
                                </div>
                                <div class="col">
                                    <input id="lastName" type="text" class="form-control" placeholder="Last name" aria-label="Last name">
                                </div>
                            </div>
                        </div>
                    </td>
                    <td></td>
                </tr>




                <tr>
                    <td class="auto-style2">GENDER :-</td>
                    <td>
                        <asp:RadioButtonList ID="RBgender" runat="server" Height="29px"
                            Style="margin-left: 0px; margin-right: 0px" Width="173px"
                            RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2">BIRTH DATE :-</td>
                    <td></td>
                    <td></td>
                </tr>


                <tr>
                    <td class="auto-style2">MOBILE NO. :-</td>
                    <td>
                        <input class="form-control " type="text" placeholder="Enter Phone No." aria-label="Enter Phone No.">
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2">EMAIL ID :-</td>
                    <td>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                            <label for="floatingInput">Email address</label>
                        </div>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2">ADDRESS :-</td>
                    <td>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="ENTER YOUR ADDRESS HERE" id="floatingTextarea"></textarea>
                            <label for="floatingTextarea">ADDRESS</label>
                        </div>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2">CITY :-</td>
                    <td>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="FloatingCity" placeholder="city">
                            <label for="floatingInput">City</label>
                        </div>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2">PINCODE :-</td>
                    <td>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="FloatingPincode" placeholder="city">
                            <label for="floatingInput">Pincode</label>
                        </div>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2"></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2"></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>

</asp:Content>
