<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="WebApp_31614949.Share" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Stylesheets/Share.css"/>
    <link rel="stylesheet" href="Stylesheets/Navbar.css"/>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <title>Share new Image</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="container">
                <img src="Kitchen_Logo.png" alt="logo" class="logo"/>
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
    <div class="containerInfo">
        <div id="share" class="flex-left flex-column">
            <h1>Share Your Image</h1>
            <form>
                <label for="caption">Caption :</label>
                <input
                    type="text"
                    name="caption"
                    id="caption"
                    placeholder="your caption"
                />
            </form>
            <form>
                <label for="Location">Location :</label>
                <input
                    type="text"
                    name="location"
                    id="location"
                    placeholder="where were you?"
                />
            </form>
            <form>
                <label for="capturedDate">Captured Date :</label>
                <input
                    type="date"
                    name="date"
                    id="date"
                    placeholder="01-03-2021"
                />
            </form>
            <form>
                <label for="capturedBy">Captured By :</label>
                <input
                    type="text"
                    name="capBy"
                    id="capBy"
                    placeholder="Jane Doe"
                />
            </form>
            <a id="btnShare" class="btn">Upload</a><br/>
        </div>
    </div>
    </form>
</body>
</html>
