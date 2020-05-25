<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reclamos.aspx.cs" Inherits="Affis.Reclamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                    padding: 10px;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h2><b> RECLAMOS </b></h2>
                    </div>
                    <div class="col-auto">
                        <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-7">
                        <label for="cedula">Cédula de Identidad</label><br />
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Cédula" Width="400px"></asp:TextBox>
                    </div>
                    <div class="col-auto">
                        <label for="" class="invisible">Revisar</label><br />
                        <asp:LinkButton ID="Button1" runat="server" Text="REVISAR" OnClick="Button1_Click" class="buttonColor"><i class="fa fa-search"></i> REVISAR</asp:LinkButton>
                    </div>
                </div>
                <div><hr /></div>
                <div class="form-row">
                    <div class="col-12">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="6" ForeColor="Black" GridLines="None" CssClass="mGrid" PagerStyle-CssClass="pgr" AllowPaging="true" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="Fecha" HeaderText="FECHA" SortExpression="Fecha" />
                                <asp:BoundField DataField="numero" HeaderText="CASO" InsertVisible="False" ReadOnly="True" SortExpression="numero" />
                                <asp:BoundField DataField="nombre" HeaderText="TOMADOR" SortExpression="nombre" />
                                <asp:BoundField DataField="entidadtomadora" HeaderText="EMPRESA" SortExpression="entidadtomadora" />
                                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="SELECCIONAR" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Fecha], [numero], [nombre], [entidadtomadora] FROM [CASOS] WHERE ([cedula] = @cedula)">
                            <SelectParameters>
                                <asp:SessionParameter Name="cedula" SessionField="caso" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div><hr /></div>
                <div class="form-row">
                    <div class="col-12" align="center">
                        <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
