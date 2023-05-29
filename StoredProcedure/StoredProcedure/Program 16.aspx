<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 16.aspx.cs" Inherits="StoredProcedure.Program_16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="LinqDataSource1" AutoGenerateColumns="False" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="StoredProcedure.DataClasses3DataContext" EntityTypeName="" TableName="emps">
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
