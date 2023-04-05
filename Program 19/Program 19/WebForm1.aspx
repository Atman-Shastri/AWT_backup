<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Program_19.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>--%>
    <script src="https://releases.jquery.com/git/jquery-git.min.js"></script>
    <script>
$(document).ready(function () {
$("p").hide(1000)
$("p").show(2000)
$("p").toggle(3000)
$("p").slideUp(4000)
    $("p").slideDown(4000)
$("h1").animate({ opacity: 0.5, marginLeft: "50px", fontSize: "50px" }, 8000)
    $("*").css("background-color", "LightGreen")
    $("h2").animate({ opacity: 0.4, marginLeft: "30px", fontSize: "100px"}, 4000)
});
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to Program 19</h1>
            <h1>Atman Shastri</h1>
            <h2>182</h2>
            <p>Hello World</p>
            
        </div>
    </form>
</body>
</html>
