<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 9.aspx.cs" Inherits="Module_4.Program_9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<br />
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<Triggers>
<asp:AsyncPostBackTrigger ControlID="Timer1" EventName="tick">
</asp:AsyncPostBackTrigger>
</Triggers>
<ContentTemplate>
<asp:Timer ID="Timer1" runat="server" Interval="1"
OnTick="Timer1_Tick"></asp:Timer>
<asp:Label ID="Label1" runat="server" Text="Label" BackColor="Black"
Font-Bold="true" Font-Names="Arial-Black" Font-Size="X-Large"
ForeColor="White"></asp:Label>
</ContentTemplate>
</asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
