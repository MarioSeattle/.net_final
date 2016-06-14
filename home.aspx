<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

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
  <li><a class="active" href="home.aspx">Home</a></li>
  <li><a href="AddShow.aspx">Add Show</a></li>
  <li><a href="Artist.aspx">Add Artist</a></li>
  <li><a href="FanArtist.aspx">Follow Artist</a></li>
</ul>
        <div class="img">
       
            </div>
    <h1> Welcome to the show Tracker page</h1>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae finibus ante. Aliquam ut eros quis tellus vehicula faucibus. 
            Donec at mi congue, sagittis arcu sit amet, facilisis libero. 
            Vestibulum volutpat, lacus suscipit euismod malesuada, nisi ante suscipit neque, sed aliquam mi nisi id erat. Nam et mollis justo.
             Sed tristique, nulla eu gravida molestie, ante leo placerat massa, pulvinar tristique ante nisi eu tellus. 
            In suscipit ante ut odio vestibulum semper. Cras justo metus, gravida non nisl vitae, venenatis consectetur neque.
        </p>

         <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae finibus ante. Aliquam ut eros quis tellus vehicula faucibus. 
            Donec at mi congue, sagittis arcu sit amet, facilisis libero. 
            Vestibulum volutpat, lacus suscipit euismod malesuada, nisi ante suscipit neque, sed aliquam mi nisi id erat. Nam et mollis justo.
             Sed tristique, nulla eu gravida molestie, ante leo placerat massa, pulvinar tristique ante nisi eu tellus. 
            In suscipit ante ut odio vestibulum semper. Cras justo metus, gravida non nisl vitae, venenatis consectetur neque.
        </p>
        
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">
            <div class="venueFan">
            <div class="det"><h1> Venues</h1></div>
        </div>
</asp:HyperLink>  
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="FanLogin.aspx">
            <div class="venueFan">
           <div class="det"><h1> Fans</h1></div> 
        </div></asp:HyperLink>  


        <div class="detail">
            <div class="info">
        <asp:Label ID="ShowLabel" runat="server" Text="All Shows"></asp:Label><br />
        <asp:DropDownList ID="ShowDropDownList" runat="server"></asp:DropDownList><br />
         </div>
            <div class="info">
        <asp:Label ID="VenueLabel" runat="server" Text="All Venues"></asp:Label><br />
        <asp:DropDownList ID="VenueDropDownList" runat="server"></asp:DropDownList><br />
            </div>
            <div class="info">
        <asp:Label ID="ArtistLabel" runat="server" Text="All Artists"></asp:Label><br />
          <asp:DropDownList ID="ArtistDropDownList" runat="server"></asp:DropDownList><br />
                </div>
             <div class="but">
        <asp:GridView ID="ShowGridView" runat="server"></asp:GridView><br />
                 </div>
            <div class="but">
        <asp:Button ID="ShowButtonArtist" runat="server" Text="Get Shows By Artist" OnClick="ShowButtonArtist_Click" />
         <asp:Button ID="ShowButtonVenue" runat="server" Text="Get Shows By Venue" OnClick="ShowButtonVenue_Click" />
       </div>
    </div>

    </div>
    </form>
</body>

</html>
