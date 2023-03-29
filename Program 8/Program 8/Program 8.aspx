<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 8.aspx.cs" Inherits="Program_8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }

    form {
        background-color: #fff;
        width: 600px;
        margin: 0 auto;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    label {
        font-weight: bold;
        font-size: 1.0em;
        margin-bottom: 10px;
        display:contents;
    }

    /* Set font size and color for the response message */
        #Label4 {
        display: block;
  margin-top: 10px;
  padding: 10px;
  background-color: #d4edda;
  border: 1px solid #c3e6cb;
  color: #155724;
  font-size: 16px;
  font-weight: bold;
        }



    input[type="text"],
    input[type="email"],
    input[type="password"],
    textarea {
        width: 100%;
        padding: 10px;
        font-size: 1.2em;
        border-radius: 5px;
        border: none;
        background-color: #f2f2f2;
        margin-bottom: 20px;
        box-sizing: border-box;
    }

    input[type="checkbox"],
    input[type="radio"] {
        margin-right: 10px;
        margin-bottom: 10px;
    }

    button {
        padding: 10px;
        font-size: 1.2em;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    button:hover {
        background-color: #3e8e41;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Please Enter your Name:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="241px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="What would you like to eat?"></asp:Label>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Large" Text="Idli" />
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" Font-Size="Large" Text="Poha" />
        <br />
        <asp:CheckBox ID="CheckBox3" runat="server" Font-Size="Large" Text="Dosa" />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="When would you like to eat?"></asp:Label>
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="Large" GroupName="supply" Text="now" />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Large" GroupName="supply" Text="later" />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Size="X-Large" OnClick="Button1_Click" Text="Thank You !" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" EnableViewState="False" BorderWidth="8px" EnableTheming="True" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
