<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Program_14.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Full Name :"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="FullName" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="enter full name" ForeColor="Red" ControlToValidate="FullName" ValidationGroup="Registration"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Address :"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Address" runat="server" Height="56px" Width="173px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="AddressValidator" runat="server" ErrorMessage="enter address" ForeColor="Red" ControlToValidate="Address" ValidationGroup="Registration"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Select State :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="State" runat="server" Height="18px" Width="138px">
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Gujrat</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <asp:RequiredFieldValidator ID="StateValidator" runat="server" ErrorMessage="enter state" ForeColor="Red" ControlToValidate="State" ValidationGroup="Registration"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Mobile Number:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MobileNumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="NumberValidator" runat="server" ErrorMessage="enter mobile number" ForeColor="Red" ControlToValidate="MobileNumber" ValidationGroup="Registration"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RangeValidator ID="NumberRangeValidator" runat="server" ControlToValidate="MobileNumber" ErrorMessage="Number not 10 digits" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1000000000" Type="Double" ValidationGroup="Registration"></asp:RangeValidator>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Select DOB :"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="DOB" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="DOBValidator" runat="server" ErrorMessage="DOB cannot be empty" ForeColor="Red" ControlToValidate="DOB" ValidationGroup="Registration"></asp:RequiredFieldValidator>
            <asp:Calendar ID="Calendar" runat="server" Height="194px" Width="283px" OnSelectionChanged="Calendar_SelectionChanged"></asp:Calendar>
            &nbsp;<br />
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="choose a birth date" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            <br />
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Email :"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="email required" ForeColor="Red" ControlToValidate="Email" ValidationGroup="Registration"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegexEmailValidator" runat="server" ControlToValidate="Email" ErrorMessage="Wrong email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Registration"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Password :"></asp:Label>
&nbsp;
            <asp:TextBox ID="Password" runat="server" AutoPostBack="True"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="password required" ForeColor="Red" ControlToValidate="Password" ValidationGroup="Registration"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:CustomValidator ID="PasswordLengthValidator" runat="server" ControlToValidate="Password" ErrorMessage="Password length should be 8 to 15 characters" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True" ValidationGroup="Registration">Password length should be 8 to 15 characters</asp:CustomValidator>
            <br />
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Confirm Password :"></asp:Label>
&nbsp;
            <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="ConfirmPassValidator" runat="server" ErrorMessage="password required" ForeColor="Red" ControlToValidate="ConfirmPassword" ValidationGroup="Registration"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:CompareValidator ID="ComparePasswordValidator" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Password does not match" ForeColor="Red" ValidationGroup="Registration"></asp:CompareValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="30px" Text="Register" Width="86px" OnClick="Button1_Click" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="30px" Text="Cancel" Width="86px" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>





<%--<form id="form1" runat="server">
<div><table align="center" class="tbl">
<tr>
<td class="tblhead" colspan="2">Meera Academy</td>
</tr>
<tr>
<td class="tblhead1" colspan="2">RequiredFieldValidator Example</td>
</tr>
<tr>
<td class="lbl">Name : </td>
<td>
<asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Name !!</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="lbl">City : </td>
<td><asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcity" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter City !!</asp:RequiredFieldValidator>
</td></tr>
<tr>
<td> </td>
<td><asp:Button ID="Button1" runat="server" CssClass="btn" Text="Save" /></td>
</tr></table>
</div>
</form>--%>
