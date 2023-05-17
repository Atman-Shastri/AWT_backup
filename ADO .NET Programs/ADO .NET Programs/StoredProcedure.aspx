<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StoredProcedure.aspx.cs" Inherits="ADO.NET_Programs.StoredProcedure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<link rel="stylesheet" href="SampleStyleSheet.css" />--%>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            id:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="19px" Width="382px">
            </asp:DropDownList>
            <br />
            <br />
            name:<asp:TextBox ID="TextBox1" runat="server" Width="361px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Overline="False" Font-Size="20pt" Height="48px" Text="insert" Width="186px" />
            <asp:Button ID="Button2" runat="server" Font-Size="20pt" Height="48px" Text="update" Width="183px" />
            <asp:Button ID="Button3" runat="server" Font-Size="20pt" Height="48px" Text="delete" Width="184px" />
            <br />
            <br />
            <br />
            
            <br />
            <br />
            <br />
            <br />
          
            
            <asp:GridView ID="GridView1" runat="server" >

            </asp:GridView>
          
            
            <br />
            <br />
            <br />
        </div>

    </form>
</body>
</html>
