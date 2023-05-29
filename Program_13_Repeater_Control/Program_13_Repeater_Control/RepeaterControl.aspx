<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterControl.aspx.cs" Inherits="Program_13_Repeater_Control.RepeaterControl" %>

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
                   <table border="1" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-align: center; background-color: #FF9933; border: thin dashed #00FFFF; table-layout: auto; border-spacing: 5px">
                       <tr>
                           <th>ID</th>
                           <th>Name</th>
                           <th>Price</th>
                       </tr>
               </HeaderTemplate>
               <ItemTemplate>
                   <tr>
                       <td>
                           <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("Id")%>' ReadOnly="True">'></asp:TextBox>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("Price")%>'></asp:TextBox>
                       </td>
                       <td>
                           <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Update">Update
                           </asp:LinkButton>
                       </td>
                       <td>
                           <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete
                           </asp:LinkButton>
                       </td>
                    </tr>
               </ItemTemplate>
                <FooterTemplate>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%#Bind("Id")%>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%#Bind("Name")%>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%#Bind("Price")%>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Insert">Insert
                            </asp:LinkButton>
                        </td>
                    </tr>
                    </table>
                </FooterTemplate>

            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [product] ([Name], [Price]) VALUES (@Name, @Price)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [Name] = @Name, [Price] = @Price WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Price" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Price" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
