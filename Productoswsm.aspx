<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productoswsm.aspx.cs" Inherits="Affis.Productoswsm" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <br />
    <br />
    <!DOCTYPE html>

<html>
<head >
    <title></title>
    <style>
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
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                            <div class="col-8">
                                <h3><b> PRODUCTOS WSM </b></h3>
                            </div>
                            <div class="col-auto" id="button">
                                <asp:LinkButton ID="Button1" runat="server" Text="SIGUIENTE" CssClass="btn btn-info" OnClick="Button1_Click" ><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                            </div>
                        </div>
                </div>
                <div class="form-row">
                    <div class="col-12">
                        <table>
                                <tr>              
                                    <td >  
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true">
                                            <Columns>
                                                <asp:BoundField DataField="Codigo" HeaderText="CÓDIGO" SortExpression="Codigo" />
                                                <asp:BoundField DataField="Producto" HeaderText="PRODUCTO" SortExpression="Producto" />
                                                <asp:BoundField DataField="Plano" HeaderText="PLANO" SortExpression="Plano" />
                                                <asp:BoundField DataField="Edadminima" HeaderText="EDAD MIN" SortExpression="Edadminima" />
                                                <asp:BoundField DataField="Edadmaxima" HeaderText="EDAD MAX" SortExpression="Edadmaxima" />
                                                <asp:BoundField DataField="Edadmaximarenova" HeaderText="EDAD MAX RENOV" SortExpression="Edadmaximarenova" />
                                                <asp:BoundField DataField="Aplicaa" HeaderText="APLICA" SortExpression="Aplicaa" />
                                                <asp:BoundField DataField="Valor" HeaderText="VALOR" SortExpression="Valor" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Codigo], [Producto], [Plano], [Edadminima], [Edadmaxima], [Edadmaximarenova], [Aplicaa], [Valor] FROM [PRODUCTOS]"></asp:SqlDataSource>   
                                    </td>
                                </tr>
                         </table>
                      </div>
                    </div>
            </div>
        </div>
</body>
</html>
    </asp:Content>
