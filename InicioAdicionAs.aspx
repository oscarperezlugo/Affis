<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioAdicionAs.aspx.cs" Inherits="Affis.InicioAdicionAs" MasterPageFile="~/Site.Master" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <html>
        <head>
            <title></title>
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
                    padding: 12px;
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
        </head>
        <body>
            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <div class="form-row">
                            <div class="col-8">
                                <h2><b> ADICIÓN - ASEGURADOS </b></h2>
                            </div>
                            <div class="col-auto">
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-7">
                                <label for="cedula">Cédula</label><br />
                                <asp:TextBox ID="TextBox1" placeholder="Cédula" runat="server" class="form-control" Width="400px"></asp:TextBox><br />
                            </div>
                            <div class="col-auto">
                                <label for="" class="invisible">Probando</label><br />
                                <asp:LinkButton ID="Button1" runat="server" Text="&lt;i class=&quot;fa fa-search&quot;&gt;&lt;/i&gt; BUSCAR" OnClick="Button1_Click" class="buttonColor"></asp:LinkButton>
                            </div>
                        </div>
                        <div><hr /></div>
                        <div class="form-row">
                            <div class="col-12" align="center">
                                <asp:Label ID="Label3" runat="server" Text="ASEGURADOS" CssClass="treeNode" Visible="false"></asp:Label><br />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-12">
                                <%--Text="NOMBRE TOMADOR: "--%>
                                <%--<asp:Label ID="Label1" runat="server"></asp:Label>--%>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="6" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="mGrid" PagerStyle-CssClass="pgr" DataSourceID="SqlDataSource1" AllowPaging="true">
                                    <Columns>
                                        <asp:BoundField DataField="TOMADOR" HeaderText="NOMBRE TOMADOR" SortExpression="TOMADOR">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA">
             
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE COMPLETO" SortExpression="NOMBRESCOMPLETOS">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NUMERO DE CERTIFICADO" SortExpression="NUMERODECERTIFICADO">
                                            <ItemStyle ForeColor="Red" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO">
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT (CASE WHEN RELACION = 'TOMADOR' THEN NOMBRESCOMPLETOS ELSE '' END) TOMADOR, [CEDULA], [NOMBRESCOMPLETOS], [NUMERODECERTIFICADO], [RELACION], [ESTADO] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="TOMADOR" SessionField="cedulaadc" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <%--       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT TOP 1 [CEDULA], [NOMBRESCOMPLETOS], [NUMERODECERTIFICADO], [RELACION], [ESTADO] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR AND RELACION = @RELACION)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="TOMADOR" SessionField="cedulaadc" Type="String" />
                                        <asp:SessionParameter Name="RELACION" SessionField="TOMADOR" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>--%>
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
        </body>
    </html>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <%: Scripts.Render("~/bundles/modernizr") %>
    <style type="text/css">
        .auto-style2 {
            width: 199%;
        }
    </style>
</asp:Content>
