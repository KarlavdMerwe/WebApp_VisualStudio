<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Images.aspx.cs" Inherits="WebApp_31614949.Images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
    <link rel="stylesheet" href="Stylesheets/Images.css"/>
    <link rel="stylesheet" href="Stylesheets/Navbar.css"/>
    <title>My Images</title>
    <style type="text/css">
        .auto-style2 {
            width: 263px;
        }
        .auto-style3 {
            height: 58px;
            width: 263px;
        }
        .auto-style8 {
            width: 226px;
        }
        .auto-style9 {
            height: 58px;
            width: 226px;
        }
        .auto-style14 {
            width: 500px;
        }
        .auto-style15 {
            width: 200px;
        }
        </style>
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
            <h1>My Shared Images <asp:Button class="btnShare" ID="btnShare" runat="server" Text="Share new Image" OnClick="btnShare_Click" /></h1>
        </div>
    </div>
    <div class="container">
           
        <div id="grid" class= "flex-center flex-colomn">
            
            <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound" OnSelectedIndexChanged="gvImages_SelectedIndexChanged" CssClass="gvImages">
                <Columns>
                <asp:BoundField DataField="ImageID" HeaderText="Image ID" />
                <asp:BoundField DataField="Caption" HeaderText="Caption" />
                <asp:BoundField DataField="Date" HeaderText="Date Captured" />
                <asp:BoundField DataField="Location" HeaderText="Location" />
                <asp:BoundField DataField="capturedBy" HeaderText="Captured By" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButtonDelete" class="btnDelete" OnClientClick="retrun confirm('Do you want to delete this entry?')" runat="server" OnClick="LinkButtonDelete_Click">Delete</asp:LinkButton>   
                    <asp:LinkButton ID="LinkButtonDownload" class="btnDownload" runat="server" OnClick="LinkButtonDownload_Click1">Download</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
             </Columns>
            </asp:GridView>
        </div>
    </div>
    <div class="container">
        <div id="edit" class= "flex-center flex-colomn">
            <h1>Edit Your Image Data</h1>
        </div>
    </div>
    <div class="container">
        <div id="table" class= "flex-center flex-colomn">
            <table class="auto-style14">
                <tr>
                    <td class="auto-style8"><label for="id" runat="server" class="auto-style15">Image ID :</label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtID" 
                    name="id"
                    type="text"
                    placeholder="1"
                    runat="server" Width="250px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style9"><label for="caption" class="auto-style15">New caption :</label></td>
                    <td class="auto-style3"><asp:TextBox ID="txtCaption" 
                    name="caption"
                    type="text"
                    placeholder="the most amazing..."
                    maxlength="100"
                    runat="server" Width="250px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style8"><label for="location" class="auto-style15">Location :</label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtLocation" 
                    name="location"
                    type="text"
                    placeholder="London, UK"
                    maxlength="80"
                    runat="server" Width="250px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style8"> <label for="capturedBy" class="auto-style15">Captured By :</label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtCaptured" 
                    name="captured"
                    type="text"
                    placeholder="Micheal Daniels"
                    runat="server" Width="250px"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="btnEdit" class="btnShare" runat="server" Text="Save" OnClick="btnEdit_Click1" /><asp:Button ID="btnClear" class="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
        </div>
    </div>
    </form>
</body>
</html>
