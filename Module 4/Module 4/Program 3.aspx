<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program 3.aspx.cs" Inherits="Module_4.Program_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
ControlToValidate="TextBox1" ErrorMessage="Please Enter Name"
ForeColor="Red">*</asp:RequiredFieldValidator>
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Age:"></asp:Label>
&nbsp;
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
ControlToValidate="TextBox2" ErrorMessage="Please Enter Age"
ForeColor="Red">*</asp:RequiredFieldValidator>
<br />
<br />
<asp:Label ID="Label3" runat="server" Text="Height: "></asp:Label>
&nbsp;
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
ControlToValidate="TextBox3" ErrorMessage="Please enter Height"
ForeColor="Red">*</asp:RequiredFieldValidator>
<br />
<br />
<asp:Label ID="Label4" runat="server" Text="Email: "></asp:Label>
&nbsp;
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Email"
ForeColor="Red"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
    </asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
ControlToValidate="TextBox4" ErrorMessage="Please Enter Email"
ForeColor="Red">*</asp:RequiredFieldValidator>
<br />
<br />
<asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
&nbsp;
<asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;&nbsp;&nbsp;
<asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
<br />
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Click"
/>

        </div>
    </form>

</body>
</html>
