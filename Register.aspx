<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
                <asp:TextBox ID="VNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="VNameRequiredFieldValidator" runat="server" ControlToValidate="VNameTextBox" ErrorMessage="Venue Name Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="VAddressTextBox" runat="server"></asp:TextBox></td>
            <td> <!--<asp:RequiredFieldValidator ID="AddRequiredFieldValidator" runat="server" ControlToValidate="VAddressTextBox" ErrorMessage="Venue Address Required"></asp:RequiredFieldValidator>--></td>
        </tr>
          <tr>
            <td>City</td>
            <td>
                <asp:TextBox ID="VCityTextBox" runat="server"></asp:TextBox></td>
            <td><!--<asp:RequiredFieldValidator ID="VCityRequiredFieldValidator" runat="server" ControlToValidate="VCityTextBox" ErrorMessage="City Required"></asp:RequiredFieldValidator>--></td>
        </tr>
          <tr>
            <td>State</td>
            <td>
                <asp:TextBox ID="VStateTextBox" runat="server"></asp:TextBox></td>
            <td><!--<asp:RequiredFieldValidator ID="VStateRequiredFieldValidator" runat="server" ControlToValidate="VStateTextBox" ErrorMessage="State Required"></asp:RequiredFieldValidator>--></td>
        </tr>
          <tr>
            <td>ZipCode</td>
            <td>
                <asp:TextBox ID="VZipCodeTextBox" runat="server"></asp:TextBox></td>
            <td><!--<asp:RequiredFieldValidator ID="VZipCodeRequiredFieldValidator" runat="server" ControlToValidate="VZipCodeTextBox" ErrorMessage="ZipCode Required"></asp:RequiredFieldValidator>--></td>
        </tr>
          <tr>
            <td>Phone</td>
            <td>
                <asp:TextBox ID="VPhoneTextBox" runat="server"></asp:TextBox></td>
            <td><!--<asp:RequiredFieldValidator ID="VPhoneRequiredFieldValidator" runat="server" ControlToValidate="VPhoneTextBox" ErrorMessage="Phone Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not a Valid Phone"  ControlToValidate="VPhoneTextBox" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>-->
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
            <td>Web Page</td>
            <td>
                <asp:TextBox ID="WebPageTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
          <tr>
            <td>Age Restriction</td>
            <td>
                <asp:TextBox ID="AgeRestrictionTextBox" runat="server"></asp:TextBox></td>
            <td></td>
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
