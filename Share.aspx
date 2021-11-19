<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="WebApp_31614949.Share" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Stylesheets/Share.css"/>
    <link rel="stylesheet" href="Stylesheets/Upload.css"/>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <title>Share Image</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="containerInfo">
            <div id="share" class="flex-colomn flex-row">
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
                    runat="server" Width="250px"></asp:TextBox>
                <label for="location">Location :</label><asp:TextBox ID="txtLocation" 
                    name="location"
                    type="text"
                    placeholder="London, UK"
                    maxlength="80"
                    runat="server" Width="250px"></asp:TextBox>
                <label for="capturedBy">Captured By :</label><asp:TextBox ID="txtCaptured" 
                    name="captured"
                    type="text"
                    placeholder="Micheal Daniels"
                    runat="server" Width="250px"></asp:TextBox>
            </div>
            <div class="drop-zone">
                <span class="drop-zone__prompt">Drop file here or click to upload</span>
                <input type="file" name="myFile" class="drop-zone__input"/>
            </div>
            <div class="containerInfo">
                <div class="flex-row">
                <asp:Button ID="btnUpload" class="btn" runat="server" Text="Upload Image" /><asp:Button ID="btnCancel" class="btn" runat="server" Text="Cancel" OnClick="btnCancel_Click" /> 
                </div>
            </div>
        </div>
        <script src="UploadFile.js"></script>
      </form>
</body>
</html>
