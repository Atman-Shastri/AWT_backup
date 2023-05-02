<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 4.aspx.cs" Inherits="Module_4.Program_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <body>
  <form id="form1" runat="server">
        <div>
            User Name:&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<br />
Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
&nbsp;&nbsp;&nbsp;
<asp:LinkButton ID="LinkButton1" runat="server"
OnClick="LinkButton1_Click">Register</asp:LinkButton>
        </div>
    </form>
  </body>
</html>
