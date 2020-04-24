<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscaCert.aspx.cs" Inherits="Affis.BuscaCert" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <!DOCTYPE html>

<html>
<head >
    <title></title>
</head>
<body>
    
        <div>
            &nbsp;<asp:Label ID="Label6" runat="server" CssClass="treeNode"></asp:Label>
            &nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="TOMADOR PRINCIPAL" CssClass="rootNode"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="gridcalc" Width="700px">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRESCOMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                    <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NUMERODECERTIFICADO" SortExpression="NUMERODECERTIFICADO">
                    <ItemStyle Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO">
                    <ItemStyle Font-Bold="True" ForeColor="Black" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [NUMERODECERTIFICADO], [ESTADO] FROM [ASEGURADOS] WHERE (([CEDULA] = @CEDULA) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="CEDULA" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" CssClass="gridcalc" Width="700px">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRESCOMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                    <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NUMERODECERTIFICADO" SortExpression="NUMERODECERTIFICADO">
                    <ItemStyle Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO">
                    <ItemStyle Font-Bold="True" ForeColor="Black" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [NUMERODECERTIFICADO], [ESTADO] FROM [ASEGURADOS] WHERE (([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="ASEGURADOS" CssClass="rootNode"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="gridcalc" Width="600px">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRES COMPLETOS" SortExpression="NOMBRESCOMPLETOS" >
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" >
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION" >
                    <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [RELACION] FROM [ASEGURADOS] WHERE ([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO)">
                <SelectParameters>
                    <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="valor" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" CssClass="gridcalc" Width="600px">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRES COMPLETOS" SortExpression="NOMBRESCOMPLETOS" >
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" >
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION" >
                    <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [RELACION] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR)">
                <SelectParameters>
                    <asp:SessionParameter Name="TOMADOR" SessionField="valor" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CssClass="gridcalc" DataSourceID="SqlDataSource4" Width="732px">
                <Columns>
                    <asp:BoundField DataField="TOTALPRIMAASEGURADO" HeaderText="TOTALP RIMA ASEGURADO" SortExpression="TOTALPRIMAASEGURADO">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL">
                    <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHAVENTA" HeaderText="FECHA VENTA" SortExpression="FECHAVENTA">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHAVIGENCIA" HeaderText="FECHA VIGENCIA" SortExpression="FECHAVIGENCIA">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" CssClass="gridcalc" DataSourceID="SqlDataSource7" Width="732px">
                <Columns>
                    <asp:BoundField DataField="TOTALPRIMAASEGURADO" HeaderText="TOTAL PRIMA ASEGURADO" SortExpression="TOTALPRIMAASEGURADO">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL">
                    <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHAVENTA" HeaderText="FECHA VENTA" SortExpression="FECHAVENTA">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHAVIGENCIA" HeaderText="FECHA VIGENCIA" SortExpression="FECHAVIGENCIA">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [TOTALPRIMAASEGURADO], [TOTAL], [FECHAVENTA], [FECHAVIGENCIA] FROM [ASEGURADOS] WHERE (([TOMADOR] = @TOMADOR) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="TOMADOR" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataSourceID="SqlDataSource3" Width="730px">
                <Columns>
                    <asp:BoundField DataField="ENTIDADTOMADORA" HeaderText="ENTIDAD TOMADORA" SortExpression="ENTIDADTOMADORA">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MEDIODECOBRO" HeaderText="MEDIO DE COBRO" SortExpression="MEDIODECOBRO">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" SortExpression="FECHADENACIMIENTO">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [ENTIDADTOMADORA], [MEDIODECOBRO], [FECHADENACIMIENTO], [DIRECCION] FROM [ASEGURADOS] WHERE (([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataSourceID="SqlDataSource8" Width="730px">
                <Columns>
                    <asp:BoundField DataField="ENTIDADTOMADORA" HeaderText="ENTIDAD TOMADORA" SortExpression="ENTIDADTOMADORA">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MEDIODECOBRO" HeaderText="MEDIO DE COBRO" SortExpression="MEDIODECOBRO">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" SortExpression="FECHADENACIMIENTO">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [ENTIDADTOMADORA], [MEDIODECOBRO], [FECHADENACIMIENTO], [DIRECCION] FROM [ASEGURADOS] WHERE (([TOMADOR] = @TOMADOR) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="TOMADOR" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [TOTALPRIMAASEGURADO], [TOTAL], [FECHAVENTA], [FECHAVIGENCIA] FROM [ASEGURADOS] WHERE (([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            &nbsp;&nbsp;
            <br />
            <br />
            <br />
        </div>
    
</body>
</html>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            border-color: white;
            font-family: Arial;
            font-weight: normal;
            color: gray;
            margin-right: 0px;
        }
        </style>
</asp:Content>

