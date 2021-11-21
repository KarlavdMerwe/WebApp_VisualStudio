<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp_31614949.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <link rel="stylesheet" href="Stylesheets/Login.css"/>
    <title>Login</title>
</head>
<body>
    <form>
        <div class="container">
        <div id="login" class="flex-center flex-column">
            <h1>Login</h1>
            <form id="form1" runat="server">
                <label for="username">Username :</label>&nbsp;
                <asp:TextBox ID="txtUsername" runat="server"
                    type="text"
                    name="username"
                    placeholder="username"></asp:TextBox>
                <label for="password">Password :</label>&nbsp;
                <asp:TextBox ID="txtPassword" runat="server"
                    type="password"
                    name="password"
                    placeholder="password"
                    minlength="8"></asp:TextBox>
        <asp:Button id="btnLogin" class="btn" href="Homepage.aspx" Text="Login" runat="server" OnClick="btnLogin_Click"></asp:Button><br/>
        <asp:Label ID="lbIncorrect" runat="server" Text="Incorrect User Credentials" Visible="False" Font-Bold="True" Font-Size="Larger"></asp:Label>
         <br/>
            <br/><h3>Not a user? Join our Kitchen Table community.</h3>
            <asp:Button class="btn" ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
        </div>
        </div>
        </form>
</body>
</html>
