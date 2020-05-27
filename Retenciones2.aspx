<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Retenciones2.aspx.cs" Inherits="Affis.Retenciones2" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
                h1 {
                    font: bold 32px Times;
                    color: #666;
                    text-align: center;
                    padding: 20px 0;
                }
                #container {
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
                    padding: 5px;
                    color: #717171;
                    text-align: center;
                }
                .mGrid th {
                    padding: 4px 2px;
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
                    color: #75bcb5;
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
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b> RETENCIONES </b></h3>
                    </div>
                    <div class="col-2">
                        <p class="invisible">Columna de relleno</p>
                    </div>
                    <div class="col-2">
                        <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-7">
                        <label for="cedula">Cédula de Identidad</label><br />
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Cédula de Identidad" class="form-control" Width="400px"></asp:TextBox>
                    </div>
                    <div class="col-auto">
                        <label for="" class="invisible">Buscar</label><br />
                        <asp:LinkButton ID="Button1" runat="server" Text="&lt;i class=&quot;fa fa-search&quot;&gt;&lt;/i&gt; BUSCAR" OnClick="LinkButton2_Click" class="buttonColor"></asp:LinkButton>
                    </div>
                </div>
                <div><hr /></div>
                <div class="form-row">
                    <div class="col-12">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="6" ForeColor="Black" GridLines="None" CssClass="mGrid" PagerStyle-CssClass="pgr" AllowPaging="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE" SortExpression="NOMBRESCOMPLETOS" />
                                <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                                <asp:BoundField DataField="ENTIDADTOMADORA" HeaderText="EMPRESA" SortExpression="ENTIDADTOMADORA" />
                                <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="CERTIFICADO" SortExpression="NUMERODECERTIFICADO" >
                                    <ItemStyle Font-Bold="True" Font-Size="Larger" ForeColor="Red" />
                                </asp:BoundField>
                                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="SELECCIONAR" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [ENTIDADTOMADORA], [NUMERODECERTIFICADO] FROM [ASEGURADOS] WHERE ([CEDULA] = @CEDULA)">
                            <SelectParameters>
                                <asp:SessionParameter Name="CEDULA" SessionField="cedulacer" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="6" ForeColor="Black" GridLines="None" CssClass="mGrid" PagerStyle-CssClass="pgr" AllowPaging="true" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE" SortExpression="NOMBRESCOMPLETOS" />
                                <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                                <asp:BoundField DataField="ENTIDADTOMADORA" HeaderText="EMPRESA" SortExpression="ENTIDADTOMADORA" />
                                <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="CERTIFICADO" SortExpression="NUMERODECERTIFICADO">
                                    <ItemStyle Font-Bold="True" Font-Size="Larger" ForeColor="Red" />
                                </asp:BoundField>
                                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="SELECCIONAR" />
                            </Columns>
                            <SelectedRowStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [ENTIDADTOMADORA], [NUMERODECERTIFICADO] FROM [ASEGURADOS] WHERE ([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO)">
                            <SelectParameters>
                                <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="cedulacer" Type="String" />
                            </SelectParameters>
                       </asp:SqlDataSource>
                    </div>
                </div>
                <div><hr /></div>
                <div class="form-row">
                    <div class="col-12" style="padding-left:45%">
                        <asp:LinkButton ID="BtnCancelar" runat="server" OnClick="BtnCancelar_Click" Text="CANCELAR" class="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>  
</asp:Content>
