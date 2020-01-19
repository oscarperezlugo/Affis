<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscaCedula.aspx.cs" Inherits="Affis.BuscaCedula" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <!DOCTYPE html>

<html>
<head >
    <title></title>
</head>
<body>
    
        <div>
            <asp:Label ID="Label4" runat="server" Text="TOMADOR PRINCIPAL" CssClass="rootNode"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="gridcalc">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRESCOMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                    <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NUMERODECERTIFICADO" SortExpression="NUMERODECERTIFICADO" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [NUMERODECERTIFICADO] FROM [ASEGURADOS] WHERE ([CEDULA] = @CEDULA)">
                <SelectParameters>
                    <asp:SessionParameter Name="CEDULA" SessionField="valor" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label3" runat="server" Text="ASEGURADOS" CssClass="rootNode"></asp:Label>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="gridcalc">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRESCOMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                    <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [RELACION] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR)">
                <SelectParameters>
                    <asp:SessionParameter Name="TOMADOR" SessionField="valor" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    
</body>
</html>
    </asp:Content>
