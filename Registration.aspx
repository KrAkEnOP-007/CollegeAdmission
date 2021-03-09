<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CollegeAdmission.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
 
    <style>
        td {
            height: 40px;
            text-align: center;
        
            padding: 10px;
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
            border-collapse: separate;
            border-spacing: 0 15px;
          
        }
        label{
            color:black;
        }
     
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <table style="width:80%; align-self:center; border: 2px solid blue; background-color:black; color:aqua; box-sizing: content-box; margin-left:50px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size:20px;">
            <thead ><tr><td style="height:120px; text-align:center; align-items:center; justify-content:center; font-size:50px ;" colspan="3" class="auto-style1">Registration form</td></tr></thead>
            <tbody>
                <tr>
                    <td>NAME :-<br />
                    </td>
                    <td>
                        <div class="col">
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="FirstName" runat="server" type="text" CssClass="form-control bg-dark text-white border-3" placeholder="First name" style="display:inline;" aria-label="First name" MaxLength="20" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name*" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col">
                                    <asp:TextBox ID="LastName" runat="server" type="text" CssClass="form-control bg-dark text-white border-3" placeholder="Last name" aria-label="Last name" MaxLength="15" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name*" ControlToValidate="LastName"></asp:RequiredFieldValidator>
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
                            Style="background-color:whitesmoke;  margin-left: 0px; margin-right: 0px" Width="173px"
                            RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>

                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Select Gender*" ControlToValidate="RBgender"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">BIRTH DATE :-</td>
                    <td>

                        <asp:DropDownList ID="dd" runat="server" Height="25px" Width="66px"
                            OnSelectedIndexChanged="dd_SelectedIndexChanged">
                        </asp:DropDownList>
                        &nbsp;
                        <asp:DropDownList ID="mm" runat="server" Height="25px" Width="72px">
                        </asp:DropDownList>
                        &nbsp;
                        <asp:DropDownList ID="yyyy" runat="server" Height="40px" Width="94px"
                            OnSelectedIndexChanged="yyyy_SelectedIndexChanged"></asp:DropDownList>


                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td class="auto-style2">MOBILE NO. :-</td>
                    <td>
                        <asp:TextBox ID="MobileText" runat="server"  CssClass="form-control bg-dark text-white border-3"  type="number" placeholder="Enter Phone No." aria-label="Enter Phone No." style="width: 32%" MaxLength="10" TextMode="Phone" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="MobileText" ErrorMessage="Enter Mobile No.!"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="MobileText" ErrorMessage="Enter Valid Phone No.!" ValidationExpression="^(\+?\d{1,4}[\s-])?(?!0+\s+,?$)\d{10}\s*,?$" ForeColor="#FFCCFF"></asp:RegularExpressionValidator>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2">EMAIL ID :-</td>
                    <td>
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="emailText" runat="server" type="email" CssClass="form-control bg-dark text-white border-3"  placeholder="name@example.com" MaxLength="30"/>
                            <label class="text-white" for="floatingInput">Email address</label>
                        </div>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Enter Email Id..!" ControlToValidate="emailText"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label1" runat="server" Text="Address Information"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">ADDRESS :-</td>
                    <td>
                        <div class="form-floating">
                            <asp:TextBox ID="AddressText" runat="server" class="form-control bg-dark text-white border-3" placeholder="ENTER YOUR ADDRESS HERE" MaxLength="100" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Address" ControlToValidate="AddressText"></asp:RequiredFieldValidator>
                            <label class="text-white" for="floatingTextarea">ADDRESS</label>
                        </div>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2">CITY :-</td>
                    <td>
                        <div class="form-floating mb-3">
                            <asp:TextBox runat="server" type="text" CssClass="form-control bg-dark text-white border-3" ID="CityTxt" placeholder="city" MaxLength="15"/>                   
                            
                            <label class="text-white" for="floatingInput">City</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter City" ControlToValidate="CityTxt"></asp:RequiredFieldValidator>
                        </div>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td class="auto-style2">PINCODE :-</td>
                    <td>
                        <div class="form-floating">
                            <asp:TextBox  runat="server" type="number" Width="120px" class="form-control bg-dark text-white border-3 " ID="PincodeTxt" placeholder="city" MaxLength="6" TextMode="Number"/>
                            <label class="text-white" for="floatingInput">Pincode</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="PincodeTxt" ErrorMessage="Enter Pincode..!"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Pincode" ValidationExpression="^\d{3}\s?\d{3}$" ControlToValidate="PincodeTxt"></asp:RegularExpressionValidator>
                        </div>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label2" runat="server" Text="Other Informations"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Father&#39;s Name :-</td>
                    <td> <asp:TextBox ID="FatherName" runat="server" type="text" CssClass="form-control bg-dark text-white border-3" placeholder="father name" aria-label="Father name" MaxLength="30" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Father's Name" ControlToValidate="FatherName"></asp:RequiredFieldValidator>
                    </td>
                    
                    <td></td>
                </tr>
                <tr>
                    <td>Father&#39;s Occupation :-</td>
                    <td><asp:TextBox ID="FatherOcc" runat="server" type="text" CssClass="form-control bg-dark text-white border-3" placeholder="father Occupation" aria-label="Father Occupation" MaxLength="20" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Father's Occupation" ControlToValidate="FatherOcc"></asp:RequiredFieldValidator>
                    </td>

                    <td></td>
                </tr>
                <tr>
                    <td>Category ;-</td>
                    <td>
                        <asp:RadioButtonList ID="CategoryList" runat="server" BackColor="White" ForeColor="#660066" RepeatDirection="Horizontal">
                            <asp:ListItem>SC</asp:ListItem>
                            <asp:ListItem>ST</asp:ListItem>
                            <asp:ListItem>OBC</asp:ListItem>
                            <asp:ListItem>OPEN</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="CategoryList" ErrorMessage="Select Category"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label3" runat="server" Text="Education Qualifications"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>SSC Marks-Total : -</td>
                    <td><asp:TextBox ID="SSCMarks" runat="server" type="number" CssClass="form-control bg-dark text-white border-3" placeholder="SSC marks" aria-label="ssc marks" MaxLength="3" TextMode="Number" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter SSC Marks*" ControlToValidate="SSCMarks"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Attempts :-</td>
                    <td><asp:TextBox ID="AttemptsTxtSSc" runat="server" type="text" CssClass="form-control bg-dark text-white border-3" placeholder="Attempts" aria-label="Attempts" OnTextChanged="AttemptsTxtSSc_TextChanged" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Number Of Attempts" ControlToValidate="AttemptsTxtSSc"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>HSC Marks-Total : -</td>
                    <td><asp:TextBox ID="HSCMarksTxt" runat="server" type="text" CssClass="form-control bg-dark text-white border-3" placeholder="HSC marks" aria-label="hsc marks" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter HSC Marks*" ControlToValidate="HSCMarksTxt"></asp:RequiredFieldValidator>
                     </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Attempts :-</td>
                    <td><asp:TextBox ID="AttemptsTxtHsc" runat="server" type="text" CssClass="form-control bg-dark text-white border-3" placeholder="Attempts" aria-label="Attempts" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter HSC Attempts*" ControlToValidate="AttemptsTxtHsc"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Percentage( % ) :-</td>
                    <td><asp:TextBox ID="PercentageTxt" runat="server" type="text" CssClass="form-control bg-dark text-white border-3" placeholder="Percentage" aria-label="Per" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Enter Percentage" ControlToValidate="PercentageTxt"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>HSC Marksheet PIC:-</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Student Photo :-</td>
                    <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="FormSubmitBtn" runat="server" CssClass="btn btn-outline-primary" Text="Submit" OnClick="FormSubmitBtn_Click" />
                    </td>
                </tr>
                
            </tbody>
        </table>

</asp:Content>
