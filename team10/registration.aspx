<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 147px;
        }
        .auto-style3 {
            width: 147px;
            height: 38px;
        }
        .auto-style4 {
            width: 134px;
        }
        .auto-style5 {
            text-align: right;
            width: 147px;
            height: 26px;
        }
        .auto-style6 {
            width: 134px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 134px;
            height: 38px;
        }
        .auto-style9 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Voter Registration"></asp:Label>
            <br />
            <br />
            <br />
        </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">First Name:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstNameTextBox" ErrorMessage="First Name is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last Name:<br />
                        <br />
                        SSN:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="ssnTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastNameTextBox" ErrorMessage="Last Name is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ssnTextBox" ErrorMessage="SSN is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ssnTextBox" ErrorMessage="Enter a valid SSN." ForeColor="#CC0000" ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">E-mail:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailTextBox" ErrorMessage="E-mail is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Enter a valid E-mail." ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="Password is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="confirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="confirmPasswordTextBox" ErrorMessage="Confirm Password is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTextBox" ControlToValidate="confirmPasswordTextBox" ErrorMessage="Password has to be the same." ForeColor="#CC0000"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Coutry:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="countryList" runat="server">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="countryList" ErrorMessage="Select a country is required." ForeColor="#CC0000" InitialValue="Select Country"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style8">
                        <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
                        <input id="Reset1" type="reset" value="Reset" /></td>
                    <td class="auto-style9">
                        </td>
                </tr>
            </table>
    </form>
</body>
</html>
