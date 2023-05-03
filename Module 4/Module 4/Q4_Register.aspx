<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Q4_Register.aspx.cs" Inherits="Module_4.Q4_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>User Name:&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<br />
Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<br />
Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<br />
<br />
Mobile:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
<br />
<br />
Enter the event to Register:&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
<asp:ListItem>None</asp:ListItem>
<asp:ListItem>Singing</asp:ListItem>
<asp:ListItem>Dancing</asp:ListItem>
<asp:ListItem>Coding</asp:ListItem>
<asp:ListItem>Gaming</asp:ListItem>
</asp:DropDownList>
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login Page"
/>

        </div>
    </form>

</body>
</html>
