<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_9._Default"
%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="form-container">
    <asp:Label
      ID="lblInput"
      runat="server"
      Text="Enter Username:"
      AssociatedControlID="txtUsername"
    ></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox" />

    <!-- RequiredFieldValidator to ensure input is not empty -->
    <asp:RequiredFieldValidator
      ID="rfvUsername"
      runat="server"
      ControlToValidate="txtUsername"
      ErrorMessage="Username is required."
      CssClass="error"
      Display="Dynamic"
    />

    <!-- CustomValidator to check minimum length -->
    <asp:CustomValidator
      ID="cvUsername"
      runat="server"
      ControlToValidate="txtUsername"
      ErrorMessage="Username must be at least 5 characters long."
      OnServerValidate="cvUsername_ServerValidate"
      CssClass="error"
      Display="Dynamic"
    />

    <!-- ✅ Success message immediately below validators -->
    <asp:Label ID="lblSuccess" runat="server" CssClass="success-message" />

    <br /><br />

    <asp:Button
      ID="btnSubmit"
      runat="server"
      Text="Submit"
      CssClass="button-submit"
      OnClick="btnSubmit_Click"
    />
  </div>
</asp:Content>
