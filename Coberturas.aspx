<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coberturas.aspx.cs" Inherits="Affis.Coberturas" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="myContent2" ContentPlaceHolderID="head" runat="server">
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
                    padding: 4px 14px;
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
    </style>
</asp:Content>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b>COBERTURAS</b></h3>
                    </div>
                    <div class="col-2">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-2">
                        <asp:LinkButton ID="Button1" runat="server" OnClick="Button1_Click" Text="SIGUIENTE" CssClass="buttonColor" ><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-12">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" ShowFooter="True"  DataSourceID="SqlDataSource6" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" >
                                </asp:BoundField>
                                <asp:BoundField DataField="RELACION" HeaderText="RELACIÓN" SortExpression="RELACION" >
                                </asp:BoundField>
                                <asp:BoundField DataField="COBERTURA" HeaderText="TIPO DE COBERTURA" SortExpression="COBERTURA" >
                                </asp:BoundField>
                                <asp:BoundField DataField="PLAN" HeaderText="PLAN" SortExpression="PLAN" >
                                </asp:BoundField>
                                <asp:BoundField DataField="COSTO" HeaderText="PRIMA" SortExpression="COSTO" DataFormatString="{0:0.00}" >
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE], [RELACION], [COBERTURA], [PLAN], [COSTO] FROM [VENTATEMP] WHERE ([FECHA] = @FECHA)">
                            <SelectParameters>
                                <asp:SessionParameter Name="FECHA" SessionField="fecha" Type="String" />
                            </SelectParameters>
                        
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>