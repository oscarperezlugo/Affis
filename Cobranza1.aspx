<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cobranza1.aspx.cs" Inherits="Affis.Cobranza1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        
        <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="COBRANZAS GESTION-EMPRESA"></asp:Label>
            <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="676px" CssClass="gridcalc" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="empresa" HeaderText="EMPRESA" SortExpression="empresa" />
        <asp:BoundField DataField="fecha" HeaderText="MES A COBRAR" SortExpression="fecha" />
        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="&gt;" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [empresa], [fecha] FROM [PAGOS] WHERE (([status] = @status) AND ([status] = @status2) AND ([mesc] = @mesc))">
    <SelectParameters>
        <asp:Parameter DefaultValue="pendiente" Name="status" Type="String" />
        <asp:Parameter DefaultValue="pendiente" Name="status2" Type="String" />
        <asp:SessionParameter Name="mesc" SessionField="fechacurso" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
