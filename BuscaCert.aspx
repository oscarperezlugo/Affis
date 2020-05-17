<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscaCert.aspx.cs" Inherits="Affis.BuscaCert" MasterPageFile="~/Site.Master" %>

<script runat="server">

    protected void CancelarClick(object sender, EventArgs e)
    {
        Response.Redirect("InicioProceso.aspx");
    }
</script>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
                #container{
                    width: 700px;
                    margin: 10px auto;
                }
                .mGrid {
                    width: 100%;
                    background-color: #fff;
                    margin: 5px 0 10px 0;
                    border: solid 1px #525252;
                    border-collapse: collapse;
                }
                .mGrid td {
                    padding: 14px;
                    color: #717171;
                    text-align: center;
                }
                .mGrid th {
                    padding: 4px 16px;
                    color: #2e2e2e;
                    background: #75bcb5;
                    font-size: 0.9em;
                    text-align: center;
                }
                .mGrid .alt {
                    background: #fcfcfc url(grd_alt.png) repeat-x top;
                }
                .mGrid .pgr {
                    background: #75bcb5;
                }
                .mGrid .pgr table {
                    margin: 5px 0;
                }
                .mGrid .pgr td {
                    border-width: 0;
                    padding: 0 6px;
                    font-weight: bold;
                    color: #fff;
                    line-height: 12px;
                }
                .mGrid .pgr a {
                    color: #666;
                    text-decoration: none;
                }
                .mGrid .pgr a:hover {
                    color: #000;
                    text-decoration: none;
                }
                #button{
                    left:10%;
                }
                .label{
                    font-weight:bolder;
                    font-size:20px;
                    margin-left: 40%;
                }
    </style>
</asp:Content>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-12">
                        <asp:Label ID="Label6" runat="server" style="font-weight:bold; font-size:2rem;"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-12">
                        <asp:Label ID="Label4" runat="server" Text="TOMADOR PRINCIPAL" CssClass="label"></asp:Label>
                        <hr />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO"/>
                                <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE COMPLETO" SortExpression="NOMBRESCOMPLETOS"/>
                                <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA"/>
                                <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" DataFormatString="{0:yyyy/MM/dd}" SortExpression="FECHADENACIMIENTO"></asp:BoundField>
                                <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NUMERO DE CERTIFICADO" SortExpression="NUMERODECERTIFICADO"></asp:BoundField>
                                <%--<asp:BoundField DataField="FECHAVIGENCIA" HeaderText="FECHA DE VIGENCIA" DataFormatString="{0:yyyy/MM/dd}"  SortExpression="FECHAVIGENCIA" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px"/>--%>
                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12">
                        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="TELEFONODOMICILIO" HeaderText="TELF. DOMICILIO" SortExpression="TELEFONODOMICILIO" />
                                <asp:BoundField DataField="TELEFONOCELULAR" HeaderText="TELF. CELULAR" SortExpression="TELEFONOCELULAR" />
                                <asp:BoundField DataField="TELEFONOEMPRESA" HeaderText="TELF. EMPRESA" SortExpression="TELEFONOEMPRESA" />
                                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                <asp:BoundField DataField="DIRECCIONEMPLEADOR" HeaderText="DIRECCION EMPLEADOR" SortExpression="DIRECCIONEMPLEADOR" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT DISTINCT CODIGO, (CASE WHEN RELACION = 'TOMADOR' THEN [NOMBRESCOMPLETOS] ELSE '' END) [NOMBRESCOMPLETOS], [CEDULA], [NUMERODECERTIFICADO], [ESTADO], (CASE WHEN RELACION = 'TOMADOR' THEN TRY_CONVERT(datetime, FECHADENACIMIENTO) ELSE NULL END) [FECHADENACIMIENTO], [TELEFONODOMICILIO], [TELEFONOCELULAR], [TELEFONOEMPRESA], [DIRECCIONEMPLEADOR], [EMAIL], TRY_CONVERT(datetime, FECHAVIGENCIA) [FECHAVIGENCIA] FROM [ASEGURADOS] WHERE (([TOMADOR] = @EXPRESION OR [NUMERODECERTIFICADO] = @EXPRESION))/* AND ([RELACION] = @RELACION))*/  ORDER BY [NOMBRESCOMPLETOS] DESC">
                            <SelectParameters>
                                <asp:SessionParameter Name="EXPRESION" SessionField="valor" Type="String" />
                                <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12">
                        <hr />
                        <asp:Label ID="Label3" runat="server" Text="ASEGURADOS" CssClass="label" style="margin-left: 42%;"></asp:Label>
                        <hr />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE COMPLETO" SortExpression="NOMBRESCOMPLETOS"></asp:BoundField>
                                <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA"></asp:BoundField>
                                <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" DataFormatString="{0:yyyy/MM/dd}" SortExpression="FECHADENACIMIENTO"></asp:BoundField>
                                <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION"></asp:BoundField>
                                <%--<asp:BoundField DataField="COBERTURA" HeaderText="COBERTURA" SortExpression="COBERTURA" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px">
                                    <ItemStyle Font-Bold="True" Font-Size="Small" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PLAN" HeaderText="PLAN" SortExpression="PLAN" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px">
                                    <ItemStyle Font-Bold="True" Font-Size="Small" />
                                </asp:BoundField>--%>
                                <%--<asp:BoundField DataField="FECHAVENTA" HeaderText="FECHA DE VENTA" DataFormatString="{0:yyyy/MM/dd}" SortExpression="FECHAVENTA" ItemStyle-Width="100px" HeaderStyle-Font-Size="13px">
                                    <ItemStyle Font-Bold="True" Font-Size="Small" />
                                </asp:BoundField>--%>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT A.[NOMBRESCOMPLETOS], A.[CEDULA], A.[RELACION], TRY_CONVERT(datetime, A.FECHADENACIMIENTO) [FECHADENACIMIENTO]/*, VT.COBERTURA, VT.[PLAN], TRY_CONVERT(date, VT.FECHA) [FECHAVENTA]*/ FROM [ASEGURADOS] A /*JOIN VENTATEMP VT ON A.CEDULA = VT.TOMADOR*/  WHERE (A.[NUMERODECERTIFICADO] = @EXPRESION OR A.[TOMADOR] = @EXPRESION /*AND NOT TRY_CONVERT(date, VT.FECHA) IS  NULL*/) ORDER BY RELACION">
                            <SelectParameters>
                                <asp:SessionParameter Name="EXPRESION" SessionField="valor" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12">                        
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="TOTALPRIMAASEGURADO" HeaderText="TOTALP RIMA ASEGURADO" SortExpression="TOTALPRIMAASEGURADO"></asp:BoundField>
                                <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" DataFormatString="{0:0.00}" SortExpression="TOTAL"></asp:BoundField>
                                <%--<asp:BoundField DataField="FECHAVENTA" DataFormatString="{0:yyyy/MM/dd hh:mm tt}" HeaderText="FECHA VENTA" SortExpression="FECHAVENTA">
                                    <ItemStyle Font-Size="Small" />
                                </asp:BoundField>--%>
                                <asp:BoundField DataField="FECHAVIGENCIA" DataFormatString="{0:yyyy/MM/dd hh:mm tt}" HeaderText="FECHA VIGENCIA" SortExpression="FECHAVIGENCIA"></asp:BoundField>
                                <asp:BoundField DataField="EJECUTIVO" DataFormatString="{0:yyyy/MM/dd hh:mm tt}" HeaderText="VENDEDOR" SortExpression="EJECUTIVO"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="ENTIDADTOMADORA" HeaderText="ENTIDAD TOMADORA" SortExpression="ENTIDADTOMADORA"></asp:BoundField>
                                <asp:BoundField DataField="MEDIODECOBRO" HeaderText="MEDIO DE COBRO" SortExpression="MEDIODECOBRO"></asp:BoundField>
                                <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" SortExpression="FECHADENACIMIENTO"></asp:BoundField>
                                <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [ENTIDADTOMADORA], [MEDIODECOBRO], [FECHADENACIMIENTO], [DIRECCION] FROM [ASEGURADOS] WHERE (([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO) AND ([RELACION] = @RELACION))">
                            <SelectParameters>
                                <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="valor" Type="String" />
                                <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12">
                        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="ENTIDADTOMADORA" HeaderText="ENTIDAD TOMADORA" SortExpression="ENTIDADTOMADORA"></asp:BoundField>
                                <asp:BoundField DataField="MEDIODECOBRO" HeaderText="MEDIO DE COBRO" SortExpression="MEDIODECOBRO"></asp:BoundField>
                                <%--<asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" SortExpression="FECHADENACIMIENTO">
                                <ItemStyle Font-Size="Small" />
                                </asp:BoundField>--%>
                                <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [ENTIDADTOMADORA], [MEDIODECOBRO], [DIRECCION] FROM [ASEGURADOS] WHERE (([TOMADOR] = @TOMADOR) AND ([RELACION] = @RELACION))">
                            <SelectParameters>
                                <asp:SessionParameter Name="TOMADOR" SessionField="valor" Type="String" />
                                <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [TOTALPRIMAASEGURADO], [TOTAL], TRY_CONVERT(datetime, FECHAVIGENCIA) [FECHAVIGENCIA], EJECUTIVO FROM [ASEGURADOS] WHERE (([NUMERODECERTIFICADO] = @EXPRESION OR [TOMADOR] = @EXPRESION) AND ([RELACION] = @RELACION))">
                            <SelectParameters>
                                <asp:SessionParameter Name="EXPRESION" SessionField="valor" Type="String" />
                                <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12">
                        <hr />
                        <asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-danger" style="margin-left: 43%;margin-right: 43%;" OnClick="CancelarClick"><i class="fa fa-ban"></i>CANCELAR</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
