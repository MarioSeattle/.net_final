<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanArtist.aspx.cs" Inherits="FanArtist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <ul>
  <li><a href="home.aspx">Home</a></li>
  <li><a href="AddShow.aspx">Add Show</a></li>
  <li><a href="Artist.aspx">Add Artist</a></li>
  <li><a href="FanArtist.aspx">Follow Artist</a></li>
</ul>
    <p>Select your artists and click enter to add them</p>
        <asp:CheckBoxList ID="FanArtistCheckBoxList" runat="server" RepeatColumns="3"></asp:CheckBoxList>
        <asp:Button ID="AddArtistButton" runat="server" Text="Add Artists" OnClick="Button1_Click" />
        <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
