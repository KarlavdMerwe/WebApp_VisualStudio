<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApp_31614949.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <link rel="stylesheet" href="Stylesheets/Login.css"/>
    <title>Sign Up</title>
</head>
<body>
    <form>
        <div class="container">
        <div id="signUp" class="flex-center flex-column">
            <h1>Sign Up</h1>
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
                <label for="Cpassword">Confirm Password :</label>&nbsp;
                <asp:TextBox ID="txtConfirm" runat="server"
                    type="password"
                    name="password"
                    placeholder="password"
                    minlength="8"></asp:TextBox>
                <label for="email">Email :</label>&nbsp;
                <asp:TextBox ID="txtEmail" runat="server"
                    type="email"
                    name="email"
                    placeholder="123@gmail.com"></asp:TextBox>
                <asp:Button id="btnSignUp" class="btn" href="Homepage.aspx" runat="server" Text="Sign Up" OnClick="btnSignUp_Click"></asp:Button><br/>
            </form>
            
        </div>
    </div>
    </form>
</body>
</html>
