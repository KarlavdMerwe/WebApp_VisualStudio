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
            <h1>My Shared Images <asp:Button class="btnShare" ID="btnShare" runat="server" Text="Share new Image" OnClick="btnShare_Click" /></h1>
        </div>
    </div>
    <div class="container">
        <div id="grid" class= "flex-center flex-colomn">
            
            <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound" OnSelectedIndexChanged="gvImages_SelectedIndexChanged">
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
            <table style="width: 100%;">
                <tr>
                    <td><asp:Label for="id" runat="server">Image ID :</asp:Label></td>
                    <td><asp:TextBox ID="txtID" 
                    name="id"
                    type="text"
                    placeholder="1"
                    runat="server" Width="250px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Image ID" ControlToValidate="txtID"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><label for="caption">Your new caption :</label></td>
                    <td><asp:TextBox ID="txtCaption" 
                    name="caption"
                    type="text"
                    placeholder="the most amazing..."
                    maxlength="100"
                    runat="server" Width="250px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a new caption" ControlToValidate="txtCaption"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><label for="date">Date Captured :</label></td>
                    <td><asp:TextBox ID="txtDate" 
                    name="date"
                    type="date"
                    runat="server" Width="250px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select a new date" ControlToValidate="txtDate"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><label for="location">Location :</label></td>
                    <td><asp:TextBox ID="txtLocation" 
                    name="location"
                    type="text"
                    placeholder="London, UK"
                    maxlength="80"
                    runat="server" Width="250px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter the location" ControlToValidate="txtLocation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td> <label for="capturedBy">Captured By :</label></td>
                    <td><asp:TextBox ID="txtCaptured" 
                    name="captured"
                    type="text"
                    placeholder="Micheal Daniels"
                    runat="server" Width="250px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter a name" ControlToValidate="txtCaptured"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnEdit" class="btnShare" runat="server" Text="Save" />
        </div>
    </div>
    </form>
</body>
</html>
