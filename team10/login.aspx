<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
      <link rel="stylesheet" href="login.css"/>
</head>

<body>
    <form id="form1" runat="server">
        <table class="loginBox">
            <tr>
                <td>
                    <asp:TextBox class="textEntry" ID="emailLoginTextBox" runat="server" placeholder="Email"></asp:TextBox>    
                </td>
            </tr>
            <tr>
                <td>    
                    <asp:RequiredFieldValidator class="ErrorMessage" ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailLoginTextBox" ErrorMessage="Em" ForeColor="#FFFFFF">Email is required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox class="textEntry" ID="passwordLoginTextBox" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator class="ErrorMessage" ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordLoginTextBox" ForeColor="#FFFFFF">Password is required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button class="SubmitButton" ID="loginButton" runat="server" OnClick="LoginButton_Click" Text="Login" BorderStyle="None"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button class="SubmitButton" ID="GoToCreateAccount" runat="server" OnClick="RedirectToCreateAccount_Click" Text="Don't have an account?" CausesValidation="false" BorderStyle="None"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
