<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Program_14.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <asp:Label ID="Label10" runat="server" EnableTheming="False" Font-Size="XX-Large" ValidateRequestMode="Enabled" ViewStateMode="Enabled" OnDataBinding="Page_Load"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Full Name :"></asp:Label>

            <asp:TextBox ID="FullName" runat="server" CssClass="form__input" Placeholder="FullName"></asp:TextBox>

            <asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="enter full name" ForeColor="Red" ControlToValidate="FullName" ValidationGroup="Registration" CssClass="form--no" Font-Size="X-Large" Display="Dynamic">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Address :"></asp:Label>

            &nbsp;

            <asp:TextBox ID="Address" runat="server" Height="114px" Width="384px" CssClass="form" Placeholder="Address"></asp:TextBox>

            <asp:RequiredFieldValidator ID="AddressValidator" runat="server" ErrorMessage="enter address" ForeColor="Red" ControlToValidate="Address" ValidationGroup="Registration" Font-Size="X-Large">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Select State :"></asp:Label>

            <asp:DropDownList ID="State" runat="server" Height="36px" Width="394px" Placeholder="State" CssClass="form">
                <asp:ListItem Selected="True">Select a country</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                <asp:ListItem>Assam</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Chhattisgarh</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Gujarat</asp:ListItem>
                <asp:ListItem>Haryana</asp:ListItem>
                <asp:ListItem>Himachal Pradesh</asp:ListItem>
                <asp:ListItem>Jharkhand</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Manipur</asp:ListItem>
                <asp:ListItem>Meghalaya</asp:ListItem>
                <asp:ListItem>Mizoram</asp:ListItem>
                <asp:ListItem>Nagaland</asp:ListItem>
                <asp:ListItem>Odisha</asp:ListItem>
                <asp:ListItem>Punjab</asp:ListItem>
                <asp:ListItem>Rajasthan</asp:ListItem>
                <asp:ListItem>Sikkim</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
                <asp:ListItem>Telangana</asp:ListItem>
                <asp:ListItem>Tripura</asp:ListItem>
                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                <asp:ListItem>Uttarakhand</asp:ListItem>
                <asp:ListItem>West Bengal</asp:ListItem>
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="StateValidator" runat="server" ErrorMessage="enter state" ForeColor="Red" ControlToValidate="State" ValidationGroup="Registration" Font-Size="X-Large" InitialValue="Select a country">*</asp:RequiredFieldValidator>
            <br />
            
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Mobile Number:"></asp:Label>

            <asp:TextBox ID="MobileNumber" runat="server" CssClass="form__input" Placeholder="Contact Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="NumberValidator" runat="server" ErrorMessage="enter mobile number" ForeColor="Red" ControlToValidate="MobileNumber" ValidationGroup="Registration" Font-Size="X-Large">*</asp:RequiredFieldValidator>
            
            <asp:RangeValidator ID="NumberRangeValidator" runat="server" ControlToValidate="MobileNumber" ErrorMessage="Number not 10 digits" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1000000000" Type="Double" ValidationGroup="Registration" Font-Size="X-Large"></asp:RangeValidator>
            <br />
           
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Select DOB :"></asp:Label>
            
            <asp:TextBox ID="DOB" runat="server" TextMode="Date" CssClass="form__input" Placeholder="Date of Birth"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="DOBValidator" runat="server" ErrorMessage="DOB cannot be empty" ForeColor="Red" ControlToValidate="DOB" ValidationGroup="Registration" Font-Size="X-Large">*</asp:RequiredFieldValidator>
            <br />
            
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Email :"></asp:Label>

            <asp:TextBox ID="Email" runat="server" CssClass="form__input" Placeholder="Email"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="email required" ForeColor="Red" ControlToValidate="Email" ValidationGroup="Registration" Font-Size="X-Large">*</asp:RequiredFieldValidator>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:RegularExpressionValidator ID="RegexEmailValidator" runat="server" ControlToValidate="Email" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Registration" Font-Size="X-Large"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Password :"></asp:Label>

            <asp:TextBox ID="Password" runat="server" CssClass="form__input" Placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="password required" ForeColor="Red" ControlToValidate="Password" ValidationGroup="Registration" Font-Size="X-Large">*</asp:RequiredFieldValidator>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:CustomValidator ID="PasswordLengthValidator" runat="server" ControlToValidate="Password" ErrorMessage="Password length should be 8 to 15 characters" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True" ValidationGroup="Registration" ValidateEmptyText="True" Font-Size="X-Large">Password length should be 8 to 15 characters</asp:CustomValidator>
           
            <br />
           
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Confirm Password :"></asp:Label>

            <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="form__input" Placeholder="Confirm Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ConfirmPassValidator" runat="server" ErrorMessage="password required" ForeColor="Red" ControlToValidate="ConfirmPassword" ValidationGroup="Registration" Font-Size="X-Large">*</asp:RequiredFieldValidator>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:CompareValidator ID="ComparePasswordValidator" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Password does not match" ForeColor="Red" ValidationGroup="Registration" Font-Size="X-Large"></asp:CompareValidator>
            <br />
          

            <asp:Button ID="Button1" runat="server" Height="51px" Text="Register" Width="122px" OnClick="Button1_Click" ValidationGroup="Registration" CssClass="btn" />

           

            <asp:Button ID="Button2" runat="server" Height="51px" Text="Cancel" Width="122px" OnClick="Button2_Click" CssClass="btn" />
            <br />
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Registration" />
            <br />
            
            
        </div>
    </form>
</body>
</html>


<%--<div class="user">
    <header class="user__header">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg" alt="" />
        <h1 class="user__title">A lightweight and simple sign-up form</h1>
        <style>
            $font-family:   "Roboto";
$font-size:     14px;

$color-primary: #ABA194;

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: $font-family;
    font-size: $font-size;
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    transform: translate3d(0, 0, 0);
    background: linear-gradient(45deg, #49D49D 10%, #A2C7E5 90%);
    height: 100vh
}

.user {
    width: 90%;
    max-width: 340px;
    margin: 10vh auto;
}

.user__header {
    text-align: center;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.7s forwards;
}

.user__title {
    font-size: $font-size;
    margin-bottom: -10px;
    font-weight: 500;
    color: white;
}

.form {
    margin-top: 40px;
    border-radius: 6px;
    overflow: hidden;
    opacity: 0;
    transform: translate3d(0, 500px, 0);
    animation: arrive 500ms ease-in-out 0.9s forwards;
}

.form--no {
    animation: NO 1s ease-in-out;
    opacity: 1;
    transform: translate3d(0, 0, 0);
}

.form__input {
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    border: 0;
    outline: 0;
    transition: 0.3s;
    
    &:focus {
        background: darken(#fff, 3%);
    }
}

.btn {
    display: block;
    width: 100%;
    padding: 20px;
    font-family: $font-family;
    -webkit-appearance: none;
    outline: 0;
    border: 0;
    color: white;
    background: $color-primary;
    transition: 0.3s;
    
    &:hover {
        background: darken($color-primary, 5%);
    }
}

@keyframes NO {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes arrive {
    0% {
        opacity: 0;
        transform: translate3d(0, 50px, 0);
    }
    
    100% {
        opacity: 1;
        transform: translate3d(0, 0, 0);
    }
}

@keyframes move {
    0% {
        background-position: 0 0
    }

    50% {
        background-position: 100% 0
    }

    100% {
        background-position: 0 0
    }
}
        </style>
    </header>
    
    <form class="form">
        <div class="form__group">
            <input type="text" placeholder="Username" class="form__input" />
        </div>
        
        <div class="form__group">
            <input type="email" placeholder="Email" class="form__input" />
        </div>
        
        <div class="form__group">
            <input type="password" placeholder="Password" class="form__input" />
        </div>
        
        <button class="btn" type="button">Register</button>
    </form>
</div>--%>