<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="farmer.aspx.cs" Inherits="project.profile.farmer" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #000000;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
            color: #000000;
        }
        .auto-style6 {
            height: 20px;
            color: #000000;
            text-align: right;
            width: 108px;
        }
        .auto-style7 {
            color: #000000;
            text-align: right;
            width: 108px;
        }
        .auto-style8 {
            width: 108px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br /> 
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
     <br />
     <div style="float:left;padding:5px; width:327px;  margin-left: 5px; border-right:solid 1px #CBDDDD; height:700px">
      
      
&nbsp;<asp:UpdatePanel ID="UpdatePanel4" runat="server">
             <ContentTemplate>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
                 <br />
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label18" runat="server" style="color: #FFFFFF; background-color: #000000;">Move your product in market</asp:Label>
                 <br />
                 <br />
                 <table class="auto-style1">
                     <tr>
                         <td class="auto-style6">Product Id:</td>
                         <td class="auto-style3">
                             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style7">Product Name:</td>
                         <td>
                             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style7">Price(KG)</td>
                         <td>
                             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style7">Availablity:</td>
                         <td>
                             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Delivery Date:</span>&nbsp;</td>
                         <td>
                             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style8">&nbsp;</td>
                         <td>
                             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="Button2" runat="server" Text="Reset" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style8">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="148px" ImageUrl="~/css/cucam.jpg" PostBackUrl="http://www.bhg.com/gardening/plant-dictionary/vegetable/cucumber/" Width="298px" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                 &nbsp;<span style="color: rgb(51, 51, 51); font-family: Verdana, Arial, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 15px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Cucumbers are easy to grow, and just one plant will produce armloads of the crunchy, refreshing fruits. Use them to make cooling salads all through the hot summer. Add homegrown cucumbers to mixed leafy salads or mixed chopped vegetable salads. And try your hand at pickles, either the super easy refrigerator type or the canned type that Grandma used to make.</span><br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </ContentTemplate>
         </asp:UpdatePanel>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <asp:UpdatePanel ID="UpdatePanel5" runat="server">
         </asp:UpdatePanel>
      <br />
      <br />
&nbsp;&nbsp;
      
      
      </div>
 <div style="float:right;padding:5px; margin-right: 5px; width:290px; height:700px">
     
     
    
     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
         <ContentTemplate>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label13" runat="server" style="color: #000000" Text="Name:"></asp:Label>
             &nbsp;<asp:Label ID="Label14" runat="server" style="color: #000000"></asp:Label>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label15" runat="server" style="color: #000000" Text="Voter Id:"></asp:Label>
             <asp:Label ID="Label16" runat="server" style="color: #000000"></asp:Label>
         </ContentTemplate>
     </asp:UpdatePanel>
     
     
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
     
     
    
     <br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label7" runat="server" style="color: #FFFFFF; background-color: #3333FF;" Text="Recommendation"></asp:Label>
     <br />
   <%--  chart for showing market status from database--%>

     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [quantity], [cropselect_id] FROM [Farmerselect]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
<br />
<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" OnLoad="Chart1_Load" BackColor="Silver" Height="220px" Width="293px">
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
</ContentTemplate>
</asp:UpdatePanel>

     <br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" style="color: #FFFFFF; background-color: #0000FF" Text="Buyers Interest"></asp:Label>
     <span class="auto-style2"><br />
     <br />
    <link href="../css/StyleSheet.css" rel="stylesheet" />

          <%-- gridview for farmer status from database--%>

      <asp:GridView ID="gvHover" BackColor="WhiteSmoke" runat="server" AutoGenerateColumns="False"
            GridLines="Vertical" CssClass="grid-view" OnRowCreated="gvHover_RowCreated" DataSourceID="SqlDataSource2" Height="109px" Width="293px">
            <Columns>
                <asp:BoundField DataField="Zone" HeaderText="Zone" SortExpression="Zone">
                    </asp:BoundField>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" >

                     </asp:BoundField>
                <asp:BoundField DataField="Interest" HeaderText="Interest" SortExpression="Interest" >
                 </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Zone], [ProductId], [Interest] FROM [BuyersInterest]"></asp:SqlDataSource></span></div>
<div style="clear:both;"></div>
   
   
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="234px" ImageUrl="~/css/11.jpg" Width="173px" /> <br />
      <span class="auto-style4">&nbsp;<span class="auto-style1">&nbsp;&nbsp;<span class="auto-style2">www.workinKhetholeoh.com</span></span></span><br /> <br /><br /><asp:ImageButton ID="ImageButton2" runat="server" Height="222px" ImageUrl="~/css/22.jpg" Width="173px" /><span class="auto-style1"> 
          &nbsp;&nbsp;&nbsp;<span class="auto-style2">www.workinKhetholeoh.com</span> </span></asp:Content>
   
    


