<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="TextChange.aspx.cs" Inherits="project.Admin.TextChange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
   <%-- edit gridview runtime--%>

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ArticleID" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ArticleID" HeaderText="ArticleID" ReadOnly="True" SortExpression="ArticleID" />
                <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=f58sz94k0q.database.windows.net;Initial Catalog=CloudDeta;Persist Security Info=True;User ID=zaka.pong;Password=Qazwsx124" DeleteCommand="DELETE FROM [Article] WHERE [ArticleID] = @original_ArticleID AND (([Text] = @original_Text) OR ([Text] IS NULL AND @original_Text IS NULL)) AND (([Url] = @original_Url) OR ([Url] IS NULL AND @original_Url IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL))" InsertCommand="INSERT INTO [Article] ([ArticleID], [Text], [Url], [Title]) VALUES (@ArticleID, @Text, @Url, @Title)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Article]" UpdateCommand="UPDATE [Article] SET [Text] = @Text, [Url] = @Url, [Title] = @Title WHERE [ArticleID] = @original_ArticleID AND (([Text] = @original_Text) OR ([Text] IS NULL AND @original_Text IS NULL)) AND (([Url] = @original_Url) OR ([Url] IS NULL AND @original_Url IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ArticleID" Type="Int32" />
                <asp:Parameter Name="original_Text" Type="String" />
                <asp:Parameter Name="original_Url" Type="String" />
                <asp:Parameter Name="original_Title" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ArticleID" Type="Int32" />
                <asp:Parameter Name="Text" Type="String" />
                <asp:Parameter Name="Url" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Text" Type="String" />
                <asp:Parameter Name="Url" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="original_ArticleID" Type="Int32" />
                <asp:Parameter Name="original_Text" Type="String" />
                <asp:Parameter Name="original_Url" Type="String" />
                <asp:Parameter Name="original_Title" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
