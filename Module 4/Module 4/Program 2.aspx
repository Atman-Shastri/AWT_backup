<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 2.aspx.cs" Inherits="Module_4.Program_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="SampleStyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="HiddenField1" runat="server" Value="Baban Yadav, 187" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Click to reveal the Content" PostBackUrl="~/HiddenObjects.aspx" />
        </div>
    </form>
</body>
</html>
