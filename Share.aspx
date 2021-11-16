<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="WebApp_31614949.Share" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Stylesheets/Navbar.css"/>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <title>Share Image</title>
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
            <div id="share" class="flex-center flex-colomn">
                <h1>Add Image Details</h1>
                <label for="caption">Your caption :</label><asp:TextBox ID="txtCaption" 
                    name="caption"
                    type="text"
                    placeholder="the most amazing..."
                    maxlength="100"
                    runat="server"></asp:TextBox>
                <label for="date">Date Captured :</label><asp:TextBox ID="txtDate" 
                    name="date"
                    type="date"
                    runat="server"></asp:TextBox>
                <label for="location">Location :</label><asp:TextBox ID="txtLocation" 
                    name="location"
                    type="text"
                    placeholder="London, UK"
                    maxlength="80"
                    runat="server"></asp:TextBox>
                <label for="capturedBy">Captured By :</label><asp:TextBox ID="txtCaptured" 
                    name="captured"
                    type="text"
                    placeholder="Micheal Daniels"
                    runat="server"></asp:TextBox>
            </div>

        </div>
    </form>
</body>
</html>
