<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Program_17.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src ="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="Controllers/app.js"></script>
    <script src="Controllers/controller.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div ng-app="myapp" ng-controller="TestController">
            addition of 10 + 20 = {{10+20}}
            <h1>{{testmessage}}</h1>
        </div>
    </form>
</body>
</html>
