﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Disconnected_Architecture.WebForm1" %>

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
            	&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
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
</html>