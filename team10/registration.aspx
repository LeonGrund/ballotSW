<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
      <link rel="stylesheet" href="login.css"/>
</head>

<body>
    <form id="form1" runat="server">
        <!--<div class="auto-style10"> 
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Voter Registration"></asp:Label>
            <br />
            <br />
            <br />
        </div> -->
        <table class="loginBox">
            <tr>
                <td>
                    <asp:TextBox class="textEntry" ID="firstNameTextBox" runat="server" placeholder="First Name"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox class="textEntry" ID="lastNameTextBox" runat="server" placeholder="Last Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator class="ErrorMessage" ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstNameTextBox" ErrorMessage="First Name is required" ForeColor="#FFFFFF"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RequiredFieldValidator class="ErrorMessage" ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastNameTextBox" ErrorMessage="Last Name is required" ForeColor="#FFFFFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox class="textEntry" ID="ssnTextBox" runat="server" TextMode="Password" placeholder="Social Security Number"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox class="textEntry" ID="emailTextBox" runat="server" placeholder="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                 <!--   <asp:RequiredFieldValidator class="ErrorMessage" ID="RequiredFieldValidator7" runat="server" ControlToValidate="ssnTextBox" ErrorMessage="SSN is required" ForeColor="#FFFFFF"></asp:RequiredFieldValidator> -->
                    <asp:RegularExpressionValidator class="ErrorMessage" ID="RegularExpressionValidator2" runat="server" ControlToValidate="ssnTextBox" ErrorMessage="Enter a valid SSN." ForeColor="#FFFFFF" ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
                </td>
                <td>
                 <!--   <asp:RequiredFieldValidator class="ErrorMessage" ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Email is required" ForeColor="#FFFFFF"></asp:RequiredFieldValidator>    -->
                    <asp:RegularExpressionValidator class="ErrorMessage" ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Enter a valid email" ForeColor="#FFFFFF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox class="textEntry" ID="passwordTextBox" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                </td>
                 <td>
                    <asp:TextBox class="textEntry" ID="confirmPasswordTextBox" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator class="ErrorMessage" ID="RequiredFieldValidator4" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="Password is required" ForeColor="#FFFFFF"></asp:RequiredFieldValidator>
                </td>
                <td>
             <!--       <asp:RequiredFieldValidator class="ErrorMessage" ID="RequiredFieldValidator5" runat="server" ControlToValidate="confirmPasswordTextBox" ErrorMessage="Passwords do not match" ForeColor="#FFFFFF"></asp:RequiredFieldValidator>   -->
                    <asp:CompareValidator class="ErrorMessage" ID="CompareValidator1" runat="server" ControlToCompare="passwordTextBox" ControlToValidate="confirmPasswordTextBox" ErrorMessage="Passwords do not match" ForeColor="#FFFFFF"></asp:CompareValidator>
                </td>
            </tr>
<!--            <tr>
                <td>
                    <asp:DropDownList class="textEntry" ID="countryList" runat="server" placeholder="Country">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>    
            <tr>
                <td>
                    <asp:RequiredFieldValidator class="ErrorMessage" ID="RequiredFieldValidator6" runat="server" ControlToValidate="countryList" ErrorMessage="Select a country is required." ForeColor="#FFFFFF" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>      -->
            <tr>
                <td>
                    <asp:Button class="SubmitButton" ID="submit" runat="server" OnClick="Submit_Click" CausesValidation="true" Text="Submit" />
                </td>
                <td>
                    <asp:Button class="SubmitButton" ID="GoToLogin" runat="server" OnClick="RedirectToLogin_Click" CausesValidation="false" Text="Already have an account?" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
