<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="project.Admin.Admin1" %>


<%--Admin control panel with some grid view--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Logout</asp:LinkButton>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Market Update<br />
      &nbsp;</span><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="156px" style="color: #000000" Width="301px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
          <AlternatingRowStyle BackColor="#F7F7F7" />
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
              <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
              <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
              <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
              <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
              <asp:BoundField DataField="Availablity" HeaderText="Availablity" SortExpression="Availablity" />
          </Columns>
          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
          <SortedAscendingCellStyle BackColor="#F4F4FD" />
          <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
          <SortedDescendingCellStyle BackColor="#D8D8F0" />
          <SortedDescendingHeaderStyle BackColor="#3E3277" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LocalProduct] WHERE [Id] = @original_Id AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Availablity] = @original_Availablity) OR ([Availablity] IS NULL AND @original_Availablity IS NULL))" InsertCommand="INSERT INTO [LocalProduct] ([ProductId], [ProductName], [Price], [Availablity]) VALUES (@ProductId, @ProductName, @Price, @Availablity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [LocalProduct]" UpdateCommand="UPDATE [LocalProduct] SET [ProductId] = @ProductId, [ProductName] = @ProductName, [Price] = @Price, [Availablity] = @Availablity WHERE [Id] = @original_Id AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Availablity] = @original_Availablity) OR ([Availablity] IS NULL AND @original_Availablity IS NULL))">
          <DeleteParameters>
              <asp:Parameter Name="original_Id" Type="Int32" />
              <asp:Parameter Name="original_ProductId" Type="String" />
              <asp:Parameter Name="original_ProductName" Type="String" />
              <asp:Parameter Name="original_Price" Type="Decimal" />
              <asp:Parameter Name="original_Availablity" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="ProductId" Type="String" />
              <asp:Parameter Name="ProductName" Type="String" />
              <asp:Parameter Name="Price" Type="Decimal" />
              <asp:Parameter Name="Availablity" Type="Int32" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="ProductId" Type="String" />
              <asp:Parameter Name="ProductName" Type="String" />
              <asp:Parameter Name="Price" Type="Decimal" />
              <asp:Parameter Name="Availablity" Type="Int32" />
              <asp:Parameter Name="original_Id" Type="Int32" />
              <asp:Parameter Name="original_ProductId" Type="String" />
              <asp:Parameter Name="original_ProductName" Type="String" />
              <asp:Parameter Name="original_Price" Type="Decimal" />
              <asp:Parameter Name="original_Availablity" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
         <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Farmers Activity
      <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource3" GridLines="Horizontal" Width="293px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
          <AlternatingRowStyle BackColor="#F7F7F7" />
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
              <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
              <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
              <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
              <asp:BoundField DataField="Availablity" HeaderText="Availablity" SortExpression="Availablity" />
              <asp:BoundField DataField="DeliveryDate" HeaderText="DeliveryDate" SortExpression="DeliveryDate" />
          </Columns>
          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
          <SortedAscendingCellStyle BackColor="#F4F4FD" />
          <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
          <SortedDescendingCellStyle BackColor="#D8D8F0" />
          <SortedDescendingHeaderStyle BackColor="#3E3277" />
      </asp:GridView>
      &nbsp;<br />
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [FarmerService] WHERE [Id] = @original_Id AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Availablity] = @original_Availablity) OR ([Availablity] IS NULL AND @original_Availablity IS NULL)) AND (([DeliveryDate] = @original_DeliveryDate) OR ([DeliveryDate] IS NULL AND @original_DeliveryDate IS NULL))" InsertCommand="INSERT INTO [FarmerService] ([ProductId], [ProductName], [Price], [Availablity], [DeliveryDate]) VALUES (@ProductId, @ProductName, @Price, @Availablity, @DeliveryDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FarmerService]" UpdateCommand="UPDATE [FarmerService] SET [ProductId] = @ProductId, [ProductName] = @ProductName, [Price] = @Price, [Availablity] = @Availablity, [DeliveryDate] = @DeliveryDate WHERE [Id] = @original_Id AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Availablity] = @original_Availablity) OR ([Availablity] IS NULL AND @original_Availablity IS NULL)) AND (([DeliveryDate] = @original_DeliveryDate) OR ([DeliveryDate] IS NULL AND @original_DeliveryDate IS NULL))">
          <DeleteParameters>
              <asp:Parameter Name="original_Id" Type="Int32" />
              <asp:Parameter Name="original_ProductId" Type="String" />
              <asp:Parameter Name="original_ProductName" Type="String" />
              <asp:Parameter Name="original_Price" Type="Decimal" />
              <asp:Parameter Name="original_Availablity" Type="Int32" />
              <asp:Parameter Name="original_DeliveryDate" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="ProductId" Type="String" />
              <asp:Parameter Name="ProductName" Type="String" />
              <asp:Parameter Name="Price" Type="Decimal" />
              <asp:Parameter Name="Availablity" Type="Int32" />
              <asp:Parameter Name="DeliveryDate" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="ProductId" Type="String" />
              <asp:Parameter Name="ProductName" Type="String" />
              <asp:Parameter Name="Price" Type="Decimal" />
              <asp:Parameter Name="Availablity" Type="Int32" />
              <asp:Parameter Name="DeliveryDate" Type="String" />
              <asp:Parameter Name="original_Id" Type="Int32" />
              <asp:Parameter Name="original_ProductId" Type="String" />
              <asp:Parameter Name="original_ProductName" Type="String" />
              <asp:Parameter Name="original_Price" Type="Decimal" />
              <asp:Parameter Name="original_Availablity" Type="Int32" />
              <asp:Parameter Name="original_DeliveryDate" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      
     
     
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Buyers Interest
            
     
     
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; <br />
     <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="148px" style="color: #000000" Width="299px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
         <AlternatingRowStyle BackColor="#F7F7F7" />
         <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
             <asp:BoundField DataField="Zone" HeaderText="Zone" SortExpression="Zone" />
             <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
             <asp:BoundField DataField="Interest" HeaderText="Interest" SortExpression="Interest" />
         </Columns>
         <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
         <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
         <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
         <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
         <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
         <SortedAscendingCellStyle BackColor="#F4F4FD" />
         <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
         <SortedDescendingCellStyle BackColor="#D8D8F0" />
         <SortedDescendingHeaderStyle BackColor="#3E3277" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [BuyersInterest] WHERE [Id] = @original_Id AND (([Zone] = @original_Zone) OR ([Zone] IS NULL AND @original_Zone IS NULL)) AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([Interest] = @original_Interest) OR ([Interest] IS NULL AND @original_Interest IS NULL))" InsertCommand="INSERT INTO [BuyersInterest] ([Zone], [ProductId], [Interest]) VALUES (@Zone, @ProductId, @Interest)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BuyersInterest]" UpdateCommand="UPDATE [BuyersInterest] SET [Zone] = @Zone, [ProductId] = @ProductId, [Interest] = @Interest WHERE [Id] = @original_Id AND (([Zone] = @original_Zone) OR ([Zone] IS NULL AND @original_Zone IS NULL)) AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([Interest] = @original_Interest) OR ([Interest] IS NULL AND @original_Interest IS NULL))">
         <DeleteParameters>
             <asp:Parameter Name="original_Id" Type="Int32" />
             <asp:Parameter Name="original_Zone" Type="String" />
             <asp:Parameter Name="original_ProductId" Type="String" />
             <asp:Parameter Name="original_Interest" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="Zone" Type="String" />
             <asp:Parameter Name="ProductId" Type="String" />
             <asp:Parameter Name="Interest" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="Zone" Type="String" />
             <asp:Parameter Name="ProductId" Type="String" />
             <asp:Parameter Name="Interest" Type="String" />
             <asp:Parameter Name="original_Id" Type="Int32" />
             <asp:Parameter Name="original_Zone" Type="String" />
             <asp:Parameter Name="original_ProductId" Type="String" />
             <asp:Parameter Name="original_Interest" Type="String" />
         </UpdateParameters>
     </asp:SqlDataSource>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Farmers profile</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Merchant profile</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">WSDL</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Local market</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Natinal market</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Text Change</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
   

    </div>
    </form>
</body>
</html>
