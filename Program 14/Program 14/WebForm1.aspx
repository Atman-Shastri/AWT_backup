<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Program_14.WebForm1" %>

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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter full name" ForeColor="Red" ControlToValidate="FullName"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Address :"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Address" runat="server" Height="56px" Width="173px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter address" ForeColor="Red" ControlToValidate="Address"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Select State :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="State" runat="server" Height="18px" Width="138px">
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Gujrat</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter state" ForeColor="Red" ControlToValidate="State"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Mobile Number:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MobileNumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter mobile number" ForeColor="Red" ControlToValidate="MobileNumber"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Select DOB :"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server" Height="194px" Width="283px"></asp:Calendar>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="choose a birth date" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Email :"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="choose a birth date" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Wrong email</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Password :"></asp:Label>
&nbsp;
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="choose a birth date" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Confirm Password :"></asp:Label>
&nbsp;
            <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="choose a birth date" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="30px" Text="Register" Width="86px" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="30px" Text="Cancel" Width="86px" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>--%>





<form id="form1" runat="server">
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
</form>
