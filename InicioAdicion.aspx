<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioAdicion.aspx.cs" Inherits="Affis.InicioAdicion" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<script runat="server">
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Beneficiarios.aspx");
    }
</script>

<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <div class="form-row">
                            <div class="col-8">
                                <h3><b> ADICIÓN - COBERTURAS </b></h3>
                            </div>
                            <div class="col-4">
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-7">
                                <label for="cedula">Cédula</label><br />
                                <asp:TextBox ID="TextBox1" placeholder="Cédula" runat="server" class="form-control" Width="400px" MaxLength="10"></asp:TextBox>
                                <asp:Label ID="Label13" runat="server" CssClass="texto"></asp:Label>
                            </div>
                            <div class="col-auto">
                                <label for="" class="invisible">Probando</label><br />
                                <asp:LinkButton ID="LinkButton1" runat="server" Text="&lt;i class=&quot;fa fa-search&quot;&gt;&lt;/i&gt; BUSCAR" OnClick="Button1_Click" class="buttonColor"></asp:LinkButton><br />
                            </div>
                        </div>
                        <div><hr /></div>
                        <div class="form-row">
                            <div class="col-12">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="mGrid" PagerStyle-CssClass="pgr" DataSourceID="SqlDataSource1" AllowPaging="True" >
                                    <Columns>
                                        <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CÉDULA" >
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRES COMPLETOS" SortExpression="NOMBRESCOMPLETOS" >
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NÚMERO DE CERTIFICADO" SortExpression="NUMERODECERTIFICADO" >
                                        <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="Red" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" >
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="+" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [CEDULA], [NOMBRESCOMPLETOS], [NUMERODECERTIFICADO], [ESTADO] FROM [ASEGURADOS] WHERE (([CEDULA] = @CEDULA) AND ([NUMERODECERTIFICADO] IS NOT NULL) AND ([RELACION] = @RELACION))">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="CEDULA" SessionField="cedulaadc" Type="String" />
                                        <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <hr />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-12" align="center">
                                <asp:LinkButton ID="BtnCancelar" runat="server" OnClick="BtnCancelar_Click" Text="CANCELAR" class="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
        <%: Scripts.Render("~/bundles/modernizr") %>
        <style type="text/css">
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
                    padding: 2px;
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
        </style>
    </asp:Content>
