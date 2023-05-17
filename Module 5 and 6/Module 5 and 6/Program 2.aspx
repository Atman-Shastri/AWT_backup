<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 2.aspx.cs" Inherits="Module_5_and_6.Program_21" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Class"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:Button ID="Button1" runat="server" Text="Insert" Height="58px" OnClick="Button1_Click" Width="108px" />

        </div>
    </form>
</body>
</html>
