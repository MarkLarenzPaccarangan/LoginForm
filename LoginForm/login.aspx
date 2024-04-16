<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LoginForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .login-container {
            width: 387px;
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .login-header {
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #007bff; 
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color: #555;
        }
        .form-group input[type="text"],
        .form-group input[type="password"] {
            padding: 10px;
            border: 2px solid #007bff; 
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            color: #333;
        }
        .form-group button {
            width: 100%;
            padding: 12px;
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
        .signup-link {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
        }
        .signup-link a {
            color: #007bff; 
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .signup-link a:hover {
            color: #0056b3; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="login-header">Login Form</div>
            <div class="form-group">
                <label for="Text1">Username</label>
                <asp:TextBox ID="Text1" runat="server" Width="375px"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="Password1">Password</label>
                <asp:TextBox ID="Password1" runat="server" TextMode="Password" Width="378px"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="98%" Height="34px" BackColor="#66CCFF" ForeColor="#00398F" />
            </div>
            <div class="signup-link">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/regform.aspx">Don't Have an Account yet?</asp:HyperLink>
            <div class="form-group">
            </div>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
