<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="merchant.aspx.cs" Inherits="project.profile.merchant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
        .auto-style2 {
            color: #0000FF;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />
  <div style="float:left;padding:5px; width:300px;  margin-left: 5px; border-right:solid 1px #CBDDDD; height:590px">
      
      
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">&nbsp;Search Your Product<br />
      <br />
&nbsp;</span><asp:TextBox ID="TextBox1" runat="server" Width="171px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" Text="Search" />
      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource3">
          <Columns>
              <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
              <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
              <asp:BoundField DataField="Availablity" HeaderText="Availablity" SortExpression="Availablity" />
          </Columns>
          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
          <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
          <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
          <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#FFF1D4" />
          <SortedAscendingHeaderStyle BackColor="#B95C30" />
          <SortedDescendingCellStyle BackColor="#F1E5CE" />
          <SortedDescendingHeaderStyle BackColor="#93451F" />
      </asp:GridView>
      
      
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductName], [Price], [Availablity] FROM [LocalProduct] WHERE ([ProductId] = @ProductId)">
          <SelectParameters>
              <asp:ControlParameter ControlID="TextBox1" Name="ProductId" PropertyName="Text" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
      
      
      <br />
      <br />
      <br />
      <br />
      <br />
      
      
      <br />
      &nbsp;
      <asp:ImageButton ID="ImageButton1" runat="server" Height="124px" ImageUrl="~/css/a_21.gif" Width="288px" />
      <br />
      <br />
      <span style="color: rgb(51, 51, 51); font-family: Verdana; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Organic sellers can build a successful business even if they sell only in their neck of the woods. In fact,<span class="Apple-converted-space">&nbsp;</span></span><a href="http://organic.about.com/od/farmsalesandprofits/tp/How-To-Sell-Organic-Farm-Goods-To-Local-Restaurants.htm" style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: normal; margin: 0px; padding: 0px; text-decoration: underline; color: rgb(51, 102, 204); cursor: pointer; font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">selling 
      locally</a><span style="color: rgb(51, 51, 51); font-family: Verdana; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span class="Apple-converted-space">&nbsp;</span>is much easier than selling nationally, and it&#39;s a more sustainable method of sales as well. Plus,<span class="Apple-converted-space">&nbsp;</span></span><a href="http://restaurants.about.com/od/menu/a/local_Foods.htm" style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: normal; margin: 0px; padding: 0px; text-decoration: underline; color: rgb(51, 102, 204); cursor: pointer; font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">local 
      foods</a><span style="color: rgb(51, 51, 51); font-family: Verdana; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span class="Apple-converted-space">&nbsp;</span>are a growing trend. Once you build up a local presence, it often translates into more sales nationwide as well.</span><br />
      
      
      
      <br />
      <br />
      <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2"  OnClick="LinkButton2_Click" runat="server">Terms&Conditions</asp:LinkButton>&nbsp;&nbsp;
      <asp:LinkButton ID="LinkButton4"  OnClick="LinkButton4_Click" runat="server">Go to local market</asp:LinkButton><br /><br />
      <br />
      <br />
      
      
      
      </div>
 <div style="float:right;padding:5px; margin-right: 5px; width:306px; height:591px">
     
     
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label2" runat="server" style="color: #000000" Text="You logged in as:"></asp:Label>
     <asp:Label ID="Label1" runat="server" style="color: #000000"></asp:Label>
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label3" runat="server" style="color: #000000" Text="Voter Id"></asp:Label>
     :
     <asp:Label ID="Label4" runat="server" style="color: #000000"></asp:Label>
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5"><strong style="font-size: xx-small">&nbsp;&nbsp;
     <asp:LinkButton ID="LinkButton3" runat="server" style="font-size: small" OnClick="LinkButton3_Click">Logout</asp:LinkButton>
     </strong></span>
     <br />
     <br />
     <br />
     <br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;
     </span>

     <span class="auto-style2">Current Market Situation</span><span class="auto-style1"><br />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [quantity], [cropselect_id] FROM [Farmerselect]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
<br />
<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" OnLoad="Chart1_Load" BackColor="Silver" Height="206px" Width="302px">
<Series>
<asp:Series ChartType="StackedBar" Name="Series1" XValueMember="cropselect_id" YValueMembers="quantity">
</asp:Series>
</Series>
<ChartAreas>
<asp:ChartArea Name="ChartArea1">
<Area3DStyle Enable3D="True" LightStyle="Realistic" Rotation="40" />
</asp:ChartArea>
</ChartAreas>
</asp:Chart>
     <br />
    <link href="../css/StyleSheet.css" rel="stylesheet" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style2">&nbsp; Farmers Activity</span><span class="auto-style1"><br />
      <asp:GridView ID="gvHover" BackColor="WhiteSmoke" runat="server" AutoGenerateColumns="False"
            GridLines="Vertical" CssClass="grid-view" OnRowCreated="gvHover_RowCreated" DataSourceID="SqlDataSource2" Height="118px" Width="308px">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName">
                    </asp:BoundField>
                <asp:BoundField DataField="DeliveryDate" HeaderText="DeliveryDate" SortExpression="DeliveryDate" >

                     </asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                 </asp:BoundField>
                <asp:BoundField DataField="Availablity" HeaderText="Availablity" SortExpression="Availablity" >

                     </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductName], [DeliveryDate], [Price], [Availablity] FROM [FarmerService]"></asp:SqlDataSource>
     <br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Go to national market</asp:LinkButton>
&nbsp;<br />
     </span>

 </div>

    <br />
    <br />
    <br />

</asp:Content>
