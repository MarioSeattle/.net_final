<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanRegister.aspx.cs" Inherits="FanRegister" %>

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
    <table>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="FNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="FNameRequiredFieldValidator" runat="server" ControlToValidate="FNameTextBox" ErrorMessage="Fan Name Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="Not a Valid Email" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>User Name</td>
            <td>
                <asp:TextBox ID="UNameTextBox"  runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UNameTextBox" ErrorMessage="Use Name Required"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password Required"></asp:RequiredFieldValidator></td>
        </tr>
          
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Register" OnClick="SubmitButton_Click" />
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
