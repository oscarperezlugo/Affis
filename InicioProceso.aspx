<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioProceso.aspx.cs" Inherits="Affis.InicioProceso" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
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
            </style>
        </head>
        <body>
            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <div class="form-row">
                            <div class="col-8">
                                <h2><b> INCLUSIÓN </b></h2>
                            </div>
                            <div class="col-auto">
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                                <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGUIENTE" class="buttonColor"><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-10">
                                <label for="cedula">Cédula</label><br />
                                <asp:TextBox ID="TextBox1" placeholder="CEDULA" runat="server" class="form-control"></asp:TextBox><br />
                            </div>
                            <div class="col-auto" align="center">
                                <label class="invisible">Probando</label><br />
                                <asp:LinkButton ID="Button1" runat="server" Text="REVISAR" OnClick="Button1_Click" class="buttonColor"><i class="fa fa-search"></i> REVISAR</asp:LinkButton>
                            </div>
                        </div>
                        <div><hr /></div>
                        <div class="form-row">
                            <div class="col-12" align="center">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS]"></asp:SqlDataSource>
                                <asp:LinkButton ID="Button3" runat="server" Text="SRI" OnClick="Button3_Click" class="buttonColor"><i class="fa fa-search"></i> SRI</asp:LinkButton>
                                <asp:LinkButton ID="Button4" runat="server" Text="RCGE" OnClick="Button4_Click" class="buttonColor"><i class="fa fa-search"></i> R.CIVIL</asp:LinkButton>
                                <hr />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-12">
                            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [CEDULA], [NOMBRE], [FECHANAC], [GENERO] FROM [ADICIONADOS]"></asp:SqlDataSource>--%>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" CssClass="mGrid" PagerStyle-CssClass="pgr" >
                                    
                                     <pagersettings mode="Numeric"
          position="Bottom"           
          pagebuttoncount="10"/>
                                    <Columns>
                                        <asp:CommandField ButtonType="Button" SelectText="Seleccionar" ShowSelectButton="True" />
                                        <%--<asp:BoundField DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO" />--%>
                                        <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                                        <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FEC. NACIMIENTO" SortExpression="FECHANAC" DataFormatString="{0:yyyy-MM-dd}" />
                                        <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                                        <asp:BoundField DataField="GENERO" HeaderText="GENERO" SortExpression="GENERO" />
                                        <%--<asp:BoundField DataField="TELEFONODOMICILIO" HeaderText="TELEFONO DOMICILIO" SortExpression="TELEFONODOMICILIO" />--%>
                                        <%--<asp:BoundField DataField="TELEFONOCELULAR" HeaderText="TELEFONO CELULAR" SortExpression="TELEFONOCELULAR" />--%>
                                        <%--<asp:BoundField DataField="TELEFONOEMPRESA" HeaderText="TELEFONO EMPRESA" SortExpression="TELEFONOEMPRESA" />--%>
                                        <%--<asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                        <asp:BoundField DataField="DIRECCIONEMPLEADOR" HeaderText="DIRECCIÓN EMPLEADOR" SortExpression="DIRECCIONEMPLEADOR" />--%>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-12" align="center">
                                <asp:LinkButton ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" class="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
        <%: Scripts.Render("~/bundles/modernizr") %>
</asp:Content>