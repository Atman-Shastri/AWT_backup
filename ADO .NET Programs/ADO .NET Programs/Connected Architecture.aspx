<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connected Architecture.aspx.cs" Inherits="ADO.NET_Programs.Connected_Architecture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="SampleStyleSheet.css" />
</head>
<body>
     <form id="form1" runat="server">
        <div class="container">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Atman Shastri, 182"></asp:Label>
            <br />
            <br />
            <div>
                <asp:Label ID="ID_Label" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ID :"></asp:Label>
               <asp:DropDownList ID="ID_dropdown_list" runat="server" Height="26px" Width="143px" AutoPostBack="True" OnSelectedIndexChanged="ID_dropdown_list_SelectedIndexChanged">
            </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Name_Label" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Name :"></asp:Label>
                <asp:TextBox ID="Name_TextBox" runat="server" Height="20px" Width="151px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Salary_Label" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Salary :"></asp:Label>
                <asp:TextBox ID="Salary_TextBox" runat="server" Height="20px" Width="151px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Date_Label" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Date of Birth :"></asp:Label>
                <asp:TextBox ID="Date_TextBox" runat="server" Height="20px" Width="151px" TextMode="Date" AutoPostBack="True"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Contact_Label" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Contact :"></asp:Label>
                <asp:TextBox ID="Contact_TextBox" runat="server" Height="20px" Width="151px"></asp:TextBox>
            </div>
            <br />
            <br />
            <asp:Button ID="View_Button" runat="server" Font-Bold="True" Font-Size="Large" Height="44px" Text="View" Width="132px" OnClick="View_Button_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Insert_Button" runat="server" Font-Bold="True" Font-Size="Large" Height="44px" Text="Insert" Width="132px" ValidationGroup="Registration" OnClick="Insert_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Update_Button" runat="server" Font-Bold="True" Font-Size="Large" Height="44px" Text="Update" Width="132px" ValidationGroup="Registration" OnClick="Update_Button_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Delete_Button" runat="server" Font-Bold="True" Font-Size="Large" Height="44px" Text="Delete" Width="132px" />
            &nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Label ID="Message_Label" runat="server" Font-Bold="True" Font-Size="XX-Large" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="446px">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
