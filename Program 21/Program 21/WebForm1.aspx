<%--Select Operation--%>

<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Program_21.WebForm1" %>

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
            <div class="container2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ID :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="151px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Name :"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="151px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Salary :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="151px"></asp:TextBox>
            </div>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Height="45px" OnClick="Button1_Click" Text="Insert Data" Width="283px" />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Inserted Data Succesfully" Visible="false"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="230px">
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
</html>--%>

<%--Update & Delete Operations--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Program_21.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <%--<link rel="stylesheet" href="SampleStyleSheet.css" />--%>
</head>
<body>
    <form id="form2" runat="server">
        <div class="container">
                                                                                           
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Atman Shastri, 182"></asp:Label>
            <br />
            <br />
                <div class="container2">  
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ID :"></asp:Label>
   
            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="143px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <br />
            <br />
          
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Name :"></asp:Label>
   
            <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="151px"></asp:TextBox>
            <br />
            <br />
          
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Salary :"></asp:Label>
 <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="151px"></asp:TextBox>
            <br />
            <br />
                      </div>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Height="44px" Text="Update" Width="132px" OnClick="Button1_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" Height="44px" Text="Delete" Width="132px" OnClick="Button2_Click" />
            &nbsp;<br />
 <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="230px">
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
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>