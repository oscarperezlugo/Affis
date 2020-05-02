<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscaCert.aspx.cs" Inherits="Affis.BuscaCert" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>

    <html>
    <head>
        <title></title>
    </head>
    <body>

        <div>
            <asp:Label ID="Label6" runat="server" CssClass="treeNode"></asp:Label>

            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="TOMADOR PRINCIPAL" CssClass="rootNode"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="gridcalc">
                <Columns>
                    <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px"/>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE COMPLETO" SortExpression="NOMBRESCOMPLETOS" ItemStyle-Width="200px" HeaderStyle-Font-Size="13px"/>
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px"/>
                    <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" DataFormatString="{0:yyyy/MM/dd}" SortExpression="FECHADENACIMIENTO" HeaderStyle-Font-Size="13px" ItemStyle-Width="100px">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NUMERO DE CERTIFICADO" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Size="13px" SortExpression="NUMERODECERTIFICADO" ItemStyle-Width="100px">
                        <ItemStyle Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                    </asp:BoundField>
<%--                    <asp:BoundField DataField="FECHAVIGENCIA" HeaderText="FECHA DE VIGENCIA" DataFormatString="{0:yyyy/MM/dd}"  SortExpression="FECHAVIGENCIA" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px"/>--%>

                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" HeaderStyle-Font-Size="13px" ItemStyle-Width="100px">
                        <ItemStyle Font-Bold="True" ForeColor="Black" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <br />
            <br />

            <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="gridcalc">
                <Columns>
                    <asp:BoundField DataField="TELEFONODOMICILIO" HeaderText="TELF. DOMICILIO" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px" SortExpression="TELEFONODOMICILIO" />
                    <asp:BoundField DataField="TELEFONOCELULAR" HeaderText="TELF. CELULAR" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px" SortExpression="TELEFONOCELULAR" />
                    <asp:BoundField DataField="TELEFONOEMPRESA" HeaderText="TELF. EMPRESA" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px" SortExpression="TELEFONOEMPRESA" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" ItemStyle-Width="200px" HeaderStyle-Font-Size="13px" SortExpression="EMAIL" />
                    <asp:BoundField DataField="DIRECCIONEMPLEADOR" HeaderText="DIRECCION EMPLEADOR" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px" SortExpression="DIRECCIONEMPLEADOR" />
                </Columns>
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT DISTINCT CODIGO, (CASE WHEN RELACION = 'TOMADOR' THEN [NOMBRESCOMPLETOS] ELSE '' END) [NOMBRESCOMPLETOS], [CEDULA], [NUMERODECERTIFICADO], [ESTADO], (CASE WHEN RELACION = 'TOMADOR' THEN TRY_CONVERT(datetime, FECHADENACIMIENTO) ELSE NULL END) [FECHADENACIMIENTO], [TELEFONODOMICILIO], [TELEFONOCELULAR], [TELEFONOEMPRESA], [DIRECCIONEMPLEADOR], [EMAIL], TRY_CONVERT(datetime, FECHAVIGENCIA) [FECHAVIGENCIA] FROM [ASEGURADOS] WHERE (([TOMADOR] = @EXPRESION OR [NUMERODECERTIFICADO] = @EXPRESION))/* AND ([RELACION] = @RELACION))*/  ORDER BY [NOMBRESCOMPLETOS] DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="EXPRESION" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>


            <br />
            <%--            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" CssClass="gridcalc" Width="700px">
                <Columns>
                    <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO" ItemStyle-Width="80px" />
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE COMPLETO" SortExpression="NOMBRESCOMPLETOS" />
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />

                    <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" DataFormatString="{0:yyyy/MM/dd}" SortExpression="FECHADENACIMIENTO">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" Font-Size="Small" Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NUMERO DE CERTIFICADO" SortExpression="NUMERODECERTIFICADO">
                        <ItemStyle Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO">
                        <ItemStyle Font-Bold="True" ForeColor="Black" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT CODIGO, [NOMBRESCOMPLETOS], [CEDULA], [NUMERODECERTIFICADO], [ESTADO], TRY_CONVERT(datetime, FECHADENACIMIENTO) [FECHADENACIMIENTO] FROM [ASEGURADOS] WHERE (([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />--%>

            <asp:Label ID="Label3" runat="server" Text="ASEGURADOS" CssClass="rootNode"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="gridcalc" Width="600px">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE COMPLETO" SortExpression="NOMBRESCOMPLETOS" ItemStyle-Width="200px" HeaderStyle-Font-Size="13px">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" DataFormatString="{0:yyyy/MM/dd}" SortExpression="FECHADENACIMIENTO" HeaderStyle-Font-Size="13px" ItemStyle-Width="100px">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px">
                        <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>
                    <%--<asp:BoundField DataField="COBERTURA" HeaderText="COBERTURA" SortExpression="COBERTURA" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px">
                        <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PLAN" HeaderText="PLAN" SortExpression="PLAN" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px">
                        <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>--%>
 <%--                   <asp:BoundField DataField="FECHAVENTA" HeaderText="FECHA DE VENTA" DataFormatString="{0:yyyy/MM/dd}" SortExpression="FECHAVENTA" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px">
                        <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>--%>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT A.[NOMBRESCOMPLETOS], A.[CEDULA], A.[RELACION], TRY_CONVERT(datetime, A.FECHADENACIMIENTO) [FECHADENACIMIENTO]/*, VT.COBERTURA, VT.[PLAN], TRY_CONVERT(date, VT.FECHA) [FECHAVENTA]*/ FROM [ASEGURADOS] A /*JOIN VENTATEMP VT ON A.CEDULA = VT.TOMADOR*/  WHERE (A.[NUMERODECERTIFICADO] = @EXPRESION OR A.[TOMADOR] = @EXPRESION /*AND NOT TRY_CONVERT(date, VT.FECHA) IS  NULL*/) ORDER BY RELACION">
                <SelectParameters>
                    <asp:SessionParameter Name="EXPRESION" SessionField="valor" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
<%--            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" CssClass="gridcalc" Width="600px">
                <Columns>
                    <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRES COMPLETOS" SortExpression="NOMBRESCOMPLETOS">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION">
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
            <br />--%>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CssClass="gridcalc" DataSourceID="SqlDataSource4" Width="732px">
                <Columns>
                    <asp:BoundField DataField="TOTALPRIMAASEGURADO" HeaderText="TOTALP RIMA ASEGURADO" SortExpression="TOTALPRIMAASEGURADO">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" DataFormatString="{0:0.00}" SortExpression="TOTAL">
                        <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>
               <%--     <asp:BoundField DataField="FECHAVENTA" DataFormatString="{0:yyyy/MM/dd hh:mm tt}" HeaderText="FECHA VENTA" SortExpression="FECHAVENTA">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>--%>
                    <asp:BoundField DataField="FECHAVIGENCIA" DataFormatString="{0:yyyy/MM/dd hh:mm tt}" HeaderText="FECHA VIGENCIA" SortExpression="FECHAVIGENCIA">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="EJECUTIVO" DataFormatString="{0:yyyy/MM/dd hh:mm tt}" HeaderText="VENDEDOR" SortExpression="EJECUTIVO">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
<%--            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" CssClass="gridcalc" DataSourceID="SqlDataSource7" Width="732px">
                <Columns>
                    <asp:BoundField DataField="TOTALPRIMAASEGURADO" HeaderText="TOTAL PRIMA ASEGURADO" SortExpression="TOTALPRIMAASEGURADO">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTAL" DataFormatString="{0:0.00}" HeaderText="TOTAL" SortExpression="TOTAL">
                        <ItemStyle Font-Bold="True" Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHAVENTA" HeaderText="FECHA VENTA" SortExpression="FECHAVENTA">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FECHAVIGENCIA" HeaderText="FECHA VIGENCIA" SortExpression="FECHAVIGENCIA">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>--%>
<%--            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [TOTALPRIMAASEGURADO], [TOTAL], [FECHAVENTA], [FECHAVIGENCIA] FROM [ASEGURADOS] WHERE (([TOMADOR] = @TOMADOR) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="TOMADOR" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>--%>
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
                    <%--<asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" SortExpression="FECHADENACIMIENTO">
                    <ItemStyle Font-Size="Small" />
                    </asp:BoundField>--%>
                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION">
                        <ItemStyle Font-Size="Small" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [ENTIDADTOMADORA], [MEDIODECOBRO], [DIRECCION] FROM [ASEGURADOS] WHERE (([TOMADOR] = @TOMADOR) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="TOMADOR" SessionField="valor" Type="String" />
                    <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [TOTALPRIMAASEGURADO], [TOTAL], TRY_CONVERT(datetime, FECHAVIGENCIA) [FECHAVIGENCIA], EJECUTIVO FROM [ASEGURADOS] WHERE (([NUMERODECERTIFICADO] = @EXPRESION OR [TOMADOR] = @EXPRESION) AND ([RELACION] = @RELACION))">
                <SelectParameters>
                    <asp:SessionParameter Name="EXPRESION" SessionField="valor" Type="String" />
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
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
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

