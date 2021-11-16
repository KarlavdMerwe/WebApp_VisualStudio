<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="WebApp_31614949.Share" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Stylesheets/Share.css"/>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <title>Share Image</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="flex-container">
            <div id="share" class="flex-container">
                <h1>Add Image Details</h1>
                <label for="caption">Your caption :</label><asp:TextBox ID="txtCaption" 
                    name="caption"
                    type="text"
                    placeholder="the most amazing..."
                    maxlength="100"
                    runat="server" Width="250px"></asp:TextBox>
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
