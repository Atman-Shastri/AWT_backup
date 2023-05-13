<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 10.aspx.cs" Inherits="Module_4.Program_10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="tick"/>
                </Triggers>
                <ContentTemplate>
                    <asp:Image ID="Image1" runat="server" Height="238px" Width="485px"/>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
            
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
