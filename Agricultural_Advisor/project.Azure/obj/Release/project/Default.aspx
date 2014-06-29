<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project.frontpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 111px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />
    <div style="height: 154px"> &nbsp;<table class="auto-style1">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/CoolClips_wb023354.gif" />
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/CoolClips_wb024056.gif" />
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" Height="95px" ImageUrl="~/images/CoolClips_wb024059.gif" Width="137px" />
            </td>
            <td>
                <asp:Image ID="Image4" runat="server" Height="77px" ImageUrl="~/images/CoolClips_wb022645.gif" Width="84px" />
            </td>
            <td>
                <asp:Image ID="Image5" runat="server" Height="133px" ImageUrl="~/images/farmer on tractor.gif" style="margin-top: 92" Width="97px" />
            </td>
        </tr>
        </table>

    </div>
    <br />
    <div style="border-style: inset; border-color: inherit; border-width: 2px; height: 25px; padding-top: 5px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome to Agricultural Advisor" ForeColor="#333333"></asp:Label>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Font-Size="Medium" ForeColor="#0033CC" Text="Recent News"></asp:Label>
    </div>
    <br />
  <div style="float:left;padding:5px; width:300px;  margin-left: 5px; border-right:solid 1px #CBDDDD; border-bottom:solid 1px #CBDDDD; height:344px">
      
      
      &nbsp;&nbsp;
      <br />
&nbsp;&nbsp;
      <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#333333" Text="Farmers worrried about &quot;Fat Duck&quot;"></asp:Label>
      <br />
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Image ID="Image6" runat="server" Height="162px" ImageUrl="~/images/aachickenfarmer.gif" Width="170px" />
&nbsp;
      <br />
      <br />
      <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="New Arizona farmers are getting impatient as their ducks are getting very very fat for some strange kind of disease. The government said, &quot;it might be an effect from the halfmoon&quot;. "></asp:Label>
</div>
 <div style="float:right;padding:5px; margin-right: 5px; width:308px; height:344px; border-bottom:solid 1px #CBDDDD; border-right:solid 1px #CBDDDD; ">
     
     
     <strong>
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Text="Over MIlked ?? "></asp:Label>
     <br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
     <asp:Image ID="Image7" runat="server" Height="177px" ImageUrl="~/images/cow_30.gif" Width="131px" />
     <strong>
     <br />
     <br />
     <asp:Label ID="Label5" runat="server" Font-Bold="False" ForeColor="Black" Text="Cow's are getting more aggressive than ever in Nortern China, Shinjuong. Due to over price of milk, the greddy farmers are getting too much excited. The cubs are getting unhealthy as the farmers are milking too much of the ladies.   "></asp:Label>
     </strong></div>
<div style="clear:both;"></div>
      
      <br />
  <div style="float:left;padding:5px; width:300px;  margin-left: 5px; border-right:solid 1px #CBDDDD; border-bottom:solid 1px #CBDDDD; height:219px">
      
      
      &nbsp;&nbsp;
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#333333" Text="The Great American"></asp:Label>
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Image ID="Image8" runat="server" Height="106px" ImageUrl="~/images/CoolClips_vc017913.jpg" Width="114px" style="margin-top: 0" />
&nbsp;
      <br />
      <br />
      <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="New Arizona farmers are getting impatient as their ducks are getting very very fat for some strange kind of"></asp:Label>
</div>
 <div style="float:right;padding:5px; margin-right: 5px; width:308px; height:219px; border-bottom:solid 1px #CBDDDD; border-right:solid 1px #CBDDDD; ">
     
     
     <strong>
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Text="Bad price for Carrot"></asp:Label>
     <br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
     <asp:Image ID="Image9" runat="server" Height="109px" ImageUrl="~/images/farmer_13.gif" Width="131px" />
     <strong>
     <br />
     <br />
     <asp:Label ID="Label9" runat="server" Font-Bold="False" ForeColor="Black" Text="Cow's are getting more aggressive than ever in Nortern China, Shinjuong. Due to over price of milk, the greddy"></asp:Label>
     </strong></div>
<div style="clear:both;"></div>
</asp:Content>



    
    
