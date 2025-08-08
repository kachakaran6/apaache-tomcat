<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
Inherits="WebApp_8._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Registration Form</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div class="form-container">
        <h2>Registration Form</h2>

        <asp:Label
          ID="lblName"
          runat="server"
          Text="Name:"
          CssClass="form-label"
        />
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator
          ID="rfvName"
          runat="server"
          ControlToValidate="txtName"
          ErrorMessage="Name is required."
          ForeColor="Red"
          CssClass="aspNet-validators"
        />

        <asp:Label
          ID="lblEmail"
          runat="server"
          Text="Email:"
          CssClass="form-label"
        />
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RegularExpressionValidator
          ID="revEmail"
          runat="server"
          ControlToValidate="txtEmail"
          ValidationExpression="\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,6}"
          ErrorMessage="Invalid Email Format."
          ForeColor="Red"
          CssClass="aspNet-validators"
        />

        <asp:Label
          ID="lblPassword"
          runat="server"
          Text="Password:"
          CssClass="form-label"
        />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator
          ID="rfvPassword"
          runat="server"
          ControlToValidate="txtPassword"
          ErrorMessage="Password is required."
          ForeColor="Red"
          CssClass="aspNet-validators"
        />

        <asp:Label
          ID="lblConfirmPassword"
          runat="server"
          Text="Confirm Password:"
          CssClass="form-label"
        />
        <asp:TextBox
          ID="txtConfirmPassword"
          runat="server"
          TextMode="Password"
        />
        <asp:CompareValidator
          ID="cvPassword"
          runat="server"
          ControlToValidate="txtConfirmPassword"
          ControlToCompare="txtPassword"
          ErrorMessage="Passwords do not match."
          ForeColor="Red"
          CssClass="aspNet-validators"
        />

        <asp:Button
          ID="btnSubmit"
          runat="server"
          Text="Register"
          OnClick="btnSubmit_Click"
          CssClass="button-submit"
        />

        <asp:ValidationSummary
          ID="vsSummary"
          runat="server"
          ForeColor="Red"
          CssClass="aspNet-validators"
        />

        <asp:Label
          ID="lblOutput"
          runat="server"
          ForeColor="Green"
          CssClass="output-label"
        />
      </div>
    </form>
  </body>
</html>
