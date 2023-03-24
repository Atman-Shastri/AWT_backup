<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 8.aspx.cs" Inherits="Program_8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Please Enter your Name:"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="241px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="What would you like to eat?"></asp:Label>
        <br />
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Large" Text="Idli" />
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" Font-Size="Large" Text="Poha" />
        <br />
        <asp:CheckBox ID="CheckBox3" runat="server" Font-Size="Large" Text="Dosa" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="When would you like to eat?"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="Large" GroupName="supply" Text="Now" />
        <br />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Large" GroupName="supply" Text="Later" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Size="X-Large" OnClick="Button1_Click" Text="Thank You !" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
