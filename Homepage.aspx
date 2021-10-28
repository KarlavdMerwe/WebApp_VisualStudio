<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApp_31614949.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Stylesheets/Home.css"/>
    <link rel="stylesheet" href="Stylesheets/Navbar.css"/>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <title>Home</title>
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
    <img src="Images/backgroundHome.gif" alt="background" class="big-image"/>
    </form>
</body>
</html>
