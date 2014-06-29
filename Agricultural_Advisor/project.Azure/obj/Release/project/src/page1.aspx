<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="project.page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 220px;
        }
        .auto-style4 {
            width: 220px;
            color: #000000;
            text-align: right;
        }
        .auto-style5 {
            width: 126px;
        }
        .auto-style6 {
            width: 220px;
            height: 32px;
        }
        .auto-style7 {
            width: 126px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />
  <div style="float:left;padding:5px; width:630px;  margin-left: 5px; border-right:solid 1px #CBDDDD; height:580px">
      
      
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label1" runat="server" ForeColor="Black" style="font-weight: 700" Text="Welcome to Login page"></asp:Label>
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <table class="auto-style1">
          <tr>
              <td class="auto-style4">User Name:</td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              </td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" style="color: #CC0000"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">Password:</td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
              </td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" style="color: #CC0000"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style6"></td>
              <td class="auto-style7">
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="71px" />
              </td>
              <td class="auto-style8">
                  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/profile/Register.aspx" style="color: #0000CC; text-decoration: underline">New user register here</asp:HyperLink>
              </td>
          </tr>
          <tr>
              <td class="auto-style3">&nbsp;</td>
              <td class="auto-style5">&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
      </table>
    </div>
 
<div style="clear:both;"></div>
</asp:Content>
