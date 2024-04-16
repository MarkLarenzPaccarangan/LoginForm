<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regform.aspx.cs" Inherits="LoginForm.regform" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .form-container {
            width: 350px;
            margin: 100px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .form-header {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #007bff; 
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }
        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .form-group button {
            width: 100%;
            padding: 15px; 
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
        .login-link {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
        }
        .login-link a {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .login-link a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="form-header">Register Here</div>
            <div class="form-group">
                <label for="txtName">Name</label>
                <asp:TextBox ID="txtName" runat="server" Width="100%" CssClass="form-control" BackColor="White" BorderColor="#33CCFF"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtAdd">Address</label>
                <asp:TextBox ID="txtAdd" runat="server" Width="100%" CssClass="form-control" BorderColor="#33CCFF"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtUser">Username</label>
                <asp:TextBox ID="txtUser" runat="server" Width="100%" CssClass="form-control" BorderColor="#33CCFF"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPass">Password</label>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="100%" CssClass="form-control" BorderColor="#33CCFF"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="btn-primary" Width="100%" BackColor="#0066FF" BorderStyle="Solid" style="border-color: #0056b3;" Height="46px" />
            </div>
            <div class="login-link">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Back to Login Page</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
