<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 9.aspx.cs" Inherits="StoredProcedure.Program_9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [emp] WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL))" InsertCommand="INSERT INTO [emp] ([name]) VALUES (@name)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [emp]" UpdateCommand="UPDATE [emp] SET [name] = @name WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Fuchsia" Text="Selected Data :"></asp:Label>
&nbsp;
            <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="ID :"></asp:Label>
&nbsp;<asp:TextBox ID="ID_TextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Name : "></asp:Label>
            <asp:TextBox ID="Name_Textbox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" ForeColor="Fuchsia" Text="Enter the data to be added in the table"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Name : "></asp:Label>
            <asp:TextBox ID="Insert_Name_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click">Insert</asp:LinkButton>
        </div>
    </form>
</body>
</html>
