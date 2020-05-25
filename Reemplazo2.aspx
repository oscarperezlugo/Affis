<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo2.aspx.cs" Inherits="Affis.Reemplazo2"  MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent1" ContentPlaceHolderID="head">
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
    </style>
</asp:Content>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b>REEMPLAZO</b></h3>
                    </div>
                    <div class="col-auto">
                        <asp:LinkButton ID="Button1" runat="server" Text="SIGUIENTE" CssClass="buttonColor" OnClick="Button1_Click" ><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-12">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true" >
                            <Columns>
                                <asp:CommandField ButtonType="Button" SelectText="SELECCIONAR" ShowSelectButton="True" />
                                <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRES COMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                                <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                                <asp:BoundField DataField="COSTO" HeaderText="COSTO" SortExpression="COSTO" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [COSTO] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR)">
                            <SelectParameters>
                                <asp:SessionParameter Name="TOMADOR" SessionField="cedula" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
