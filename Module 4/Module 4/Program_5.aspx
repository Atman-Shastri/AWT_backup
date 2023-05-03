<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program_5.aspx.cs" Inherits="Module_4.Program_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="city"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Agency FB" Font-Overline="False" Font-Size="Medium" ForeColor="#FF0066"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="send" />
            <br />

        </div>
    </form>
</body>
</html>
