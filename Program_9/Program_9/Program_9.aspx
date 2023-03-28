<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program_9.aspx.cs" Inherits="Program_9.Program_9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" BackColor="#99CCFF" Font-Size="25pt" Text="Select font name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Size="20pt" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Arial</asp:ListItem>
            <asp:ListItem>Times New Roman</asp:ListItem>
            <asp:ListItem>Verdana</asp:ListItem>
            <asp:ListItem>Helvetica</asp:ListItem>
            <asp:ListItem>Gothic</asp:ListItem>
            <asp:ListItem>Colonna MT</asp:ListItem>
            <asp:ListItem>Calibri</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" BackColor="#CCFFFF" Font-Size="25pt" Text="Select font size"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Font-Size="20pt" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>40</asp:ListItem>
            <asp:ListItem>80</asp:ListItem>
            <asp:ListItem>100</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" BackColor="#CC66FF" Font-Size="25pt" Text="Select font effect"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Size="20pt" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Bold" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="20pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="Italics" />
&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" Font-Size="20pt" OnCheckedChanged="CheckBox3_CheckedChanged" Text="Underline" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" BackColor="#FF9966" Font-Names="Arial" Font-Size="25pt" Text="Welcome Atman Shastri, 182"></asp:Label>
    </form>
</body>
</html>
