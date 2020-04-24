<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscaCedula.aspx.cs" Inherits="Affis.BuscaCedula" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="CONSULTA CEDULA"></asp:Label>
    <br />
    <br />
    <!DOCTYPE html>

<html>
<head >
    <title></title>
</head>
<body>
    
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="gridcalc" Width="840px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRES COMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                    <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" SortExpression="FECHADENACIMIENTO" />
                    <asp:BoundField DataField="GENERO" HeaderText="GENERO" SortExpression="GENERO" />
                    <asp:ButtonField ButtonType="Button" CommandName="Select" Text="&gt;" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [FECHADENACIMIENTO], [GENERO] FROM [ASEGURADOS] WHERE (([NUMERODECERTIFICADO] IS NOT NULL) AND ([CEDULA] = @CEDULA))">
                <SelectParameters>
                    <asp:SessionParameter Name="CEDULA" SessionField="valor" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [RELACION] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR)">
                <SelectParameters>
                    <asp:SessionParameter Name="TOMADOR" SessionField="valor" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    
</body>
</html>
    </asp:Content>
