<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 99px;
        }
        .auto-style4 {
            width: 132px;
        }
        .auto-style5 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Login"></asp:Label>
            <br />
            <br />
            </strong>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">E-mail:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="emailLoginTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailLoginTextBox" ErrorMessage="Em" ForeColor="#CC0000">E-mail is required.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="passwordLoginTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordLoginTextBox" ErrorMessage="Password is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:HyperLink ID="registrationHyperLink" runat="server" NavigateUrl="~/registration.aspx">Register New Voter!</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
