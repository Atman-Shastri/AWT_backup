<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program7.aspx.cs" Inherits="Program_7.Program7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 7</title>
    <style type="text/css">
        .red-bg{
            background-color:red;color:black;
        }.blue-bg{
            background-color:blue;color:black;
        }.green-bg{
            background-color:green;color:black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" Height="67px" OnClick="Button1_Click" Text="Red" Width="114px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="67px" Text="Blue" Width="114px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="67px" Text="Green" Width="114px" OnClick="Button3_Click" />
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
