<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="local.aspx.cs" Inherits="project.market.local" %>
<%@ OutputCache Duration="10" VaryByParam="*" %>

<%--Cache for 10 sec--%>

<%--gridview with css and buy button for buying product--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 114px;
        }
        .auto-style4 {
        color: #000000;
    }
        .auto-style5 {
            color: #000000;
            font-size: x-large;
        }
        .auto-style6 {
            color: #000000;
            font-size: small;
        }
        .auto-style7 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="float:left;padding:5px; width:628px;  margin-left: 5px; border-right:solid 1px #CBDDDD; border-bottom:solid 1px #CBDDDD; height:668px">
      
      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <span class="auto-style5"><strong style="font-size: xx-small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</strong></span><strong><span class="auto-style6">Welcome To The market&nbsp;&nbsp;&nbsp;&nbsp;</span></strong><strong style="font-size: xx-small"><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Logout</asp:LinkButton>
      </strong>
        <link href="../css/style.css" rel="stylesheet" />

                  <asp:GridView ID="gvCustomres" runat="server"  OnRowCommand="gvCustomres_RowCommand" AutoGenerateColumns="False" Height="524px" Width="619px"
                      
                       GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" DataSourceID="SqlDataSource1">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                      <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="Product ID" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                <asp:BoundField DataField="Price" HeaderText="Price (KG)" SortExpression="Price" />
                <asp:BoundField DataField="Availablity" HeaderText="Availablity(KG)" SortExpression="Availablity" />
                <asp:TemplateField HeaderText="Buy Now">
<ItemTemplate>
<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/buy.jpg"
Width="87px" Height="40px" CommandName="buy" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" /> 
</ItemTemplate>

</asp:TemplateField>
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductId], [ProductName], [Price], [Availablity] FROM [LocalProduct]"></asp:SqlDataSource>
              </td>
              <td>&nbsp;</td>
          </tr>
      </table>
      
      
      </div>

     
     
    
<div style="clear:both;"></div>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
 
     <asp:ImageButton ID="ImageButton1" runat="server" Height="223px" ImageUrl="~/css/11.jpg" Width="174px" /> <br />
      <span class="auto-style4">&nbsp;<span class="auto-style1"><span class="auto-style7">www.workinKhetholeoh.com</span></span></span><br /> <br /> <br /><asp:ImageButton ID="ImageButton2" runat="server" Height="220px" ImageUrl="~/css/22.jpg" Width="174px" /><span class="auto-style1"> 
          &nbsp;<br />
     &nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style4">www.workinKhet.com</span> </span></asp:Content>

