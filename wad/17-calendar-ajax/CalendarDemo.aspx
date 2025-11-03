<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarDemo.aspx.cs"
Inherits="WebApplication16.CalendarDemo" %> <%@ Register
Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Calendar Navigation using Ajax Calendar Extender</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

      <div style="margin: 50px">
        <h3>Select Date:</h3>
        <asp:TextBox ID="txtDate" runat="server" Width="150px"></asp:TextBox>

        <!-- CalendarExtender from AjaxControlToolkit -->
        <asp:CalendarExtender
          ID="CalendarExtender1"
          runat="server"
          TargetControlID="txtDate"
          Format="dd-MM-yyyy"
        >
        </asp:CalendarExtender>

        <br /><br />
        <asp:Button
          ID="btnSubmit"
          runat="server"
          Text="Show Selected Date"
          OnClick="btnSubmit_Click"
        />
        <br /><br />
        <asp:Label
          ID="lblResult"
          runat="server"
          Text=""
          ForeColor="Green"
        ></asp:Label>
      </div>
    </form>
  </body>
</html>
