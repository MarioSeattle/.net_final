<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
  <li><a href="AddShow.aspx">Add Show</a></li>
  <li><a href="Artist.aspx">Add Artist</a></li>
  <li><a href="FanArtist.aspx">Follow Artist</a></li>
</ul>
        <h1> Login or Register</h1>
        <hr />
        <table>
            <tr>
                <td>User Name</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                  <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
                </td>
                <td>
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>

                </td>
            </tr>
        </table>
        <asp:LinkButton ID="RegisterLink" runat="server" PostBackUrl="Register.aspx" OnClick="RegisterLink_Click">Register</asp:LinkButton>

    </div>
    </form>
</body>
</html>
