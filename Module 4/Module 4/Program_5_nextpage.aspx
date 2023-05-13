<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program_5_nextpage.aspx.cs" Inherits="Module_4.Program_5_nextpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="SampleStyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Retrieve " />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#669900"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#669900"></asp:Label>
        </div>

        </div>
    </form>
</body>
</html>
