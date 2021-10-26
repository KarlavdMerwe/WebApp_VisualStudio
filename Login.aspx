<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp_31614949.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <link rel="stylesheet" href="Stylesheets/Login.css"/>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <div id="login" class="flex-center flex-column">
            <h1>Login</h1>
            <form>
                <label for="username">Username :</label>
                <input
                    type="text"
                    name="username"
                    id="username"
                    placeholder="username"
                />
            </form>
            <form>
                <label for="password">Password :</label>
                <input
                    type="password"
                    name="password"
                    id="password"
                    placeholder="password"
                    minlength="8"
                />
            </form>
            <a id="btnLogin" class="btn" href="/home.html">Login</a><br/>
            <br/>
            <br/><h3>Not a user? Join our Kitchen Table community.</h3>
            <a id="btnJoin" class="btn" href="/signup.html">Sign Up</a>
        </div>
    </div>
    </form>
</body>
</html>
