<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project.profile.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 188px;
            color: #000000;
        }
        .auto-style3 {
            color: #000000;
        }
        .auto-style4 {
        width: 173px;
    }
        .auto-style5 {
            width: 188px;
            color: #000000;
            height: 22px;
            text-align: right;
        }
        .auto-style6 {
        width: 173px;
        height: 22px;
    }
        .auto-style7 {
            height: 22px;
        }
        .auto-style8 {
            width: 188px;
            color: #000000;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="float:left;  width:651px;  height:653px">
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
         <table class="auto-style1">
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style4" style="color: #000000"> <span class="auto-style3">Welcome to Registration Page</span></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:&nbsp;</td>
                 <td class="auto-style4">
                     <asp:TextBox ID="TextBox11" runat="server" Width="170px"></asp:TextBox>
                     <br />
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     <br />
                     &nbsp;Password<span class="auto-style3">:</span></td>
                 <td class="auto-style6">
                     <br />
                     <asp:TextBox ID="TextBox1" runat="server" Width="170px" TextMode="Password"></asp:TextBox>
                 </td>
                 <td class="auto-style7">
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <br />
                     Voter Id:</td>
                 <td class="auto-style4">
                     <br />
                     <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
                 </td>
                 <td>
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your voter id" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     <br />
                     City:</td>
                 <td class="auto-style6">
                     <br />
                     <asp:DropDownList ID="DropDownList1" runat="server" Width="175px">
                         <asp:ListItem>--Choose One--</asp:ListItem>
                         <asp:ListItem>Dhaka</asp:ListItem>
                         <asp:ListItem>Chittagong</asp:ListItem>
                         <asp:ListItem>Khulna</asp:ListItem>
                         <asp:ListItem>Shylet</asp:ListItem>
                         <asp:ListItem>Borishal</asp:ListItem>
                         <asp:ListItem>Rajshahi</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style7">
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select City Name" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <br />
                     Union</td>
                 <td class="auto-style4">
                     <br />
                     <asp:DropDownList ID="DropDownList2" runat="server" Width="175px">
                         <asp:ListItem>--Choose One--</asp:ListItem>
                         <asp:ListItem>Dhaka Sadar</asp:ListItem>
                         <asp:ListItem>Rajshahi Sadar</asp:ListItem>
                         <asp:ListItem>Chittagong Sadar</asp:ListItem>
                         <asp:ListItem>Shylet Sadar</asp:ListItem>
                         <asp:ListItem>Khulna Sadar</asp:ListItem>
                         <asp:ListItem>Borisal Sadar</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     <br />
                     Zone Id:</td>
                 <td class="auto-style6">
                     <br />
                     <asp:DropDownList ID="DropDownList3" runat="server" Width="175px">
                         <asp:ListItem>--Choose One--</asp:ListItem>
                         <asp:ListItem>DHK</asp:ListItem>
                         <asp:ListItem>CTG</asp:ListItem>
                         <asp:ListItem>KHL</asp:ListItem>
                         <asp:ListItem>RSI</asp:ListItem>
                         <asp:ListItem>BSL</asp:ListItem>
                         <asp:ListItem>SLT</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style7"></td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <br />
                     Address:</td>
                 <td class="auto-style4">
                     <br />
                     <asp:TextBox ID="TextBox6" runat="server" Width="170px"></asp:TextBox>
                 </td>
                 <td>
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter your Address" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <br />
                     Email:</td>
                 <td class="auto-style4">
                     <br />
                     <asp:TextBox ID="TextBox7" runat="server" Width="170px" TextMode="Email"></asp:TextBox>
                 </td>
                 <td>
                     <br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter your email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <br />
                     Phone:</td>
                 <td class="auto-style4">
                     <br />
                     <asp:TextBox ID="TextBox8" runat="server" Width="170px"></asp:TextBox>
                 </td>
                 <td>
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter your  Phone" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <br />
                     Mobile:</td>
                 <td class="auto-style4">
                     <br />
                     <asp:TextBox ID="TextBox9" runat="server" Width="170px"></asp:TextBox>
                 </td>
                 <td>
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter your Mobile number" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <br />
                     Land Area:</td>
                 <td class="auto-style4">
                     <br />
                     <asp:TextBox ID="TextBox10" runat="server" Width="170px"></asp:TextBox>
                 </td>
                 <td class="auto-style3">
                     <br />
                     Only For Farmer</td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <br />
                     Role:</td>
                 <td class="auto-style4">
                     <br />
                     <asp:DropDownList ID="DropDownList4" runat="server" Width="175px">
                         <asp:ListItem>--Choose One--</asp:ListItem>
                         <asp:ListItem>Farmer</asp:ListItem>
                         <asp:ListItem>Merchant</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="lblmsg" runat="server"></asp:Label>
                     </td>
                 <td class="auto-style4">
&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button2" runat="server" Text="Reset" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                 <td>&nbsp;&nbsp;
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style4">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
      <br />
      <br />
      <br />
      </div>
</asp:Content>
