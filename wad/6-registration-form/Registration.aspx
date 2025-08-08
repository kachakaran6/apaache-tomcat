<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs"
Inherits="WebApplication4.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Registration Form Filling</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <h2>Registration Form</h2>
      <table>
        <tr>
          <td>Name:</td>
          <td><asp:TextBox ID="txtName" runat="server" /></td>
        </tr>
        <tr>
          <td>Date of Birth:</td>
          <td><asp:TextBox ID="txtDOB" runat="server" TextMode="Date" /></td>
        </tr>
        <tr>
          <td>Gender:</td>
          <td>
            <asp:RadioButtonList
              ID="rblGender"
              runat="server"
              RepeatDirection="Horizontal"
            >
              <asp:ListItem Text="Male" Value="Male" />
              <asp:ListItem Text="Female" Value="Female" />
            </asp:RadioButtonList>
          </td>
        </tr>
        <tr>
          <td>Email ID:</td>
          <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email" /></td>
        </tr>
        <tr>
          <td>Contact No:</td>
          <td><asp:TextBox ID="txtContact" runat="server" /></td>
        </tr>
        <tr>
          <td>Address:</td>
          <td>
            <asp:TextBox
              ID="txtAddress"
              runat="server"
              TextMode="MultiLine"
              Rows="3"
            />
          </td>
        </tr>
        <tr>
          <td>City:</td>
          <td><asp:TextBox ID="txtCity" runat="server" /></td>
        </tr>
        <tr>
          <td>Pin Code:</td>
          <td><asp:TextBox ID="txtPin" runat="server" /></td>
        </tr>
        <tr>
          <td>Hobbies:</td>
          <td>
            <asp:CheckBoxList
              ID="cblHobbies"
              runat="server"
              RepeatDirection="Horizontal"
            >
              <asp:ListItem Text="Reading" Value="Reading" />
              <asp:ListItem Text="Sports" Value="Sports" />
              <asp:ListItem Text="Music" Value="Music" />
              <asp:ListItem Text="Traveling" Value="Traveling" />
            </asp:CheckBoxList>
          </td>
        </tr>
        <tr>
          <td></td>
          <td>
            <asp:Button
              ID="btnSubmit"
              runat="server"
              Text="Submit"
              OnClick="btnSubmit_Click"
            />
          </td>
        </tr>
      </table>

      <asp:Panel ID="pnlResult" runat="server" Visible="false">
        <h3>Entered Information:</h3>
        <asp:Label ID="lblResult" runat="server" Text="" />
      </asp:Panel>
    </form>
  </body>
</html>
