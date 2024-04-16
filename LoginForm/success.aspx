<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="LoginForm.success" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 400px;
            margin: 100px auto;
            padding: 20px;
            background-color: #00FFFF;
            border: 2px solid #000;
            border-radius: 5px;
            text-align: center;
        }
        .success-message {
            font-size: 20px;
            margin-bottom: 20px;
        }
        .link-container {
            margin-top: 20px;
            width: 411px;
        }
        .link-container a {
            margin: 0 10px;
            text-decoration: none;
            padding: 5px 10px;
            border: 2px solid #000;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            transition: background-color 0.3s ease;
        }
        .link-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <p class="success-message">LOGGED IN SUCCESSFULLY!</p>
            <p class="success-message">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
            <div class="link-container">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Login Again</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/regform.aspx">Register Again</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>

