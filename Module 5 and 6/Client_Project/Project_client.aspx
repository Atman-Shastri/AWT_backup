<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_client.aspx.cs" Inherits="Client_Project.Project_client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
             <asp:Label ID="Label2" runat="server" Text="enter first number"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <br />
             <asp:Label ID="Label3" runat="server" Text="enter second number"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Addition" />
        </div>
    </form>
</body>
</html>
