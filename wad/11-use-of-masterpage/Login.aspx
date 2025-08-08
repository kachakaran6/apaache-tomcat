<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.master"
AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="WebApp_11.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <h2>Login</h2>
  <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label
  ><br /> Username: <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox
  ><br /> Password:
  <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox
  ><br />
  <asp:Button
    ID="btnLogin"
    runat="server"
    Text="Login"
    OnClick="btnLogin_Click"
  />
</asp:Content>
