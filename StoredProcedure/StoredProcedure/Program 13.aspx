<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 13.aspx.cs" Inherits="StoredProcedure.Program_13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                <HeaderTemplate>
                    <table>
                        <tr class="header">
                             <th>
                                <b> Id</b>
                            </th>
                            <th>
                                <b>Name</b>
                            </th>
                        
                        </tr>
                    
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("Id")%>' 
                        ReadOnly="true"></asp:TextBox>
                         </td>
                         <td>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("name")%>'></asp:TextBox>
                         </td>       
                        </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr>
                        <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("Id")%>' 
                        ReadOnly="true"></asp:TextBox>
                         </td>
                         <td>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("name")%>'></asp:TextBox>
                         </td>
     
                              
                        </tr>
                </AlternatingItemTemplate>
    <FooterTemplate>
                    <tr>
                        <td>
                            <asp:LinkButton ID="insert" runat="server">Insert</asp:LinkButton>
                           
                            <asp:LinkButton ID="update" runat="server">Update</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="delete" runat="server">Delete</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="view" runat="server">View</asp:LinkButton>
                        </td>
                    </tr>
                    </table>
                </FooterTemplate>

            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [emp] WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL))" InsertCommand="INSERT INTO [emp] ([name]) VALUES (@name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [emp]" UpdateCommand="UPDATE [emp] SET [name] = @name WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL))">
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
        </div>
    </form>
</body>
</html>
