<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="page3.aspx.cs" Inherits="project.page3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 517px;
        }
        .auto-style3 {
            width: 168px;
        }
        .auto-style4 {
            width: 223px;
            color: #000000;
            text-align: right;
        }
        .auto-style5 {
            width: 154px;
            color: #000000;
            height: 25px;
        }
        .auto-style6 {
            width: 168px;
            height: 25px;
        }
        .auto-style7 {
            width: 154px;
            color: #000000;
            height: 25px;
            text-align: right;
        }
        .auto-style8 {
            width: 223px;
            color: #000000;
            height: 25px;
            text-align: right;
        }
        .auto-style9 {
            width: 223px;
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
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <table class="auto-style1">
          <tr>
              <td class="auto-style4">User Name:</td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox1" runat="server" Width="153px"></asp:TextBox>
              </td>
              <td class="auto-style3">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" style="color: #CC0000"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style8">Password:</td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox2" runat="server" Width="153px" TextMode="Password"></asp:TextBox>
              </td>
              <td class="auto-style6">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" style="color: #CC0000"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style9"></td>
              <td class="auto-style7">
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="71px" />
              </td>
              <td class="auto-style3">
                  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/profile/Register.aspx" style="color: #0000CC; text-decoration: underline">New user register here</asp:HyperLink>
              </td>
          </tr>
          <tr>
              <td class="auto-style9">&nbsp;</td>
              <td class="auto-style5">
                  <asp:Label ID="Label2" runat="server"></asp:Label>
              </td>
              <td class="auto-style3">&nbsp;</td>
          </tr>
      </table>
    </div>
 
<div style="clear:both;"></div>
</asp:Content>
