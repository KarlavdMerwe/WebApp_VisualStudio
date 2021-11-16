<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Images.aspx.cs" Inherits="WebApp_31614949.Images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <link rel="stylesheet" href="Stylesheets/Images.css"/>
    <link rel="stylesheet" href="Stylesheets/Navbar.css"/>
    <title>My Images</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
        <div class="container">
            <img src="Images/Kitchen_Logo.png" alt="logo" class="logo"/>
            <nav>
                <ul>
                    <li><a href="Homepage.aspx">Home</a></li>
                    <li><a href="#">Explore</a></li>
                    <li><a href="Images.aspx">My Images</a></li>
                    <li><a href="#">About</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="container">
        <div id="images" class= "flex-center flex-colomn">
            <h1>My Shared Images <asp:Button class="btnShare" ID="btnShare" runat="server" Text="Share new Image" /></h1>
        </div>
    </div>
    </form>
</body>
</html>
