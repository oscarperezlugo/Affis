<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscaCert.aspx.cs" Inherits="Affis.BuscaCert" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <!DOCTYPE html>

<html>
<head >
    <title></title>
</head>
<body>
    
        <div>
            <asp:Label ID="Label4" runat="server" Text="TOMADOR PRINCIPAL" CssClass="rootNode"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRESCOMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                    <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NUMERODECERTIFICADO" SortExpression="NUMERODECERTIFICADO" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [NUMERODECERTIFICADO] FROM [ASEGURADOS] WHERE (([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label3" runat="server" Text="ASEGURADOS" CssClass="rootNode"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRESCOMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                    <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [RELACION] FROM [ASEGURADOS] WHERE ([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO)">
                <SelectParameters>
                    <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="valor" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    
</body>
</html>
    </asp:Content>
