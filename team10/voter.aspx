<%@ Page Language="C#" AutoEventWireup="true" CodeFile="voter.aspx.cs" Inherits="voter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 1015px;
        }
        .auto-style4 {
            width: 473px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong>
            <asp:Label ID="voterWelcomeLabel" runat="server" Font-Size="XX-Large" Text="Welcome "></asp:Label>
            <br />
            <br />
            </strong>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Personal Info... coming soon!</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="logoutButton" runat="server" OnClick="logoutButton_Click" Text="Logout" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
