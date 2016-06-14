<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShow.aspx.cs" Inherits="AddShow" %>

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
  <li><a  href="home.aspx">Home</a></li>
  <li><a class="active" href="AddShow.aspx">Add Show</a></li>
  <li><a href="Artist.aspx">Add Artist</a></li>
  <li><a href="FanArtist.aspx">Follow Artist</a></li>
</ul>
    <h1> Add Shows Here</h1>
      
        <table>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="ShowNameRequiredFieldValidator" runat="server" ControlToValidate="ShowNameTextBox" ErrorMessage="Show Name Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Date</td>
            <td>
                <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox></td>
            <td> <asp:RequiredFieldValidator ID="DateRequiredFieldValidator" runat="server" ControlToValidate="DateTextBox" ErrorMessage="Date Required"></asp:RequiredFieldValidator></td>
        </tr>
          <tr>
            <td>Time</td>
            <td>
                <asp:TextBox ID="TimeTextBox" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="TimeRequiredFieldValidator" runat="server" ControlToValidate="TimeTextBox" ErrorMessage="Time Required"></asp:RequiredFieldValidator></td>
        </tr>
          <tr>
            <td>Ticket Info</td>
            <td>
                <asp:TextBox ID="TicketTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
          <tr>
            <td>Details</td>
            <td>
                <asp:TextBox ID="DetailsTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>

             <tr>
            <td>Artists</td>
            <td>
                <asp:DropDownList ID="ArtistDropDownList" runat="server" OnSelectedIndexChanged="ArtistDropDownList_SelectedIndexChanged"></asp:DropDownList> </td>
            <td></td>
        </tr>
            <tr>
              
                <td>
                    <asp:Button ID="AddArtistButton" runat="server" Text="New Artist"  CausesValidation="false" OnClick="AddArtistButton_Click" /></td>
            </tr>

          <tr>
            <td>Artist Start Time</td>
            <td>
                <asp:TextBox ID="StartTimeTextBox" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>

            <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Add" OnClick="SubmitButton_Click" />
            </td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
         
    </table>

    </div>
    </form>
</body>
</html>
