<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="RequiredValidation.aspx.cs" Inherits="WebApp_7.RequiredValidation"
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Required Field Validation</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div style="text-align: center">
        <h2>Required Field Validator Example</h2>

        Enter Name: <asp:TextBox ID="txtName" runat="server" /><br />
        <asp:RequiredFieldValidator
          ID="rfvName"
          runat="server"
          ControlToValidate="txtName"
          ErrorMessage="Name is required!"
          ForeColor="Red"
        /><br /><br />

        <asp:Button
          ID="btnSubmit"
          runat="server"
          Text="Submit"
          OnClick="btnSubmit_Click"
        /><br /><br />

        <asp:Label
          ID="lblMessage"
          runat="server"
          Font-Bold="true"
          ForeColor="Green"
        />
      </div>
    </form>
  </body>
</html>
