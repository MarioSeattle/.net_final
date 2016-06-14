<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanLogin.aspx.cs" Inherits="FanLogin" %>

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
                  <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" style="height: 26px" />
                </td>
                <td>
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>

                </td>
            </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="FanRegister.aspx" OnClick="LinkButton1_Click">Register</asp:LinkButton>
       
    </div>
    </form>
</body>
</html>
