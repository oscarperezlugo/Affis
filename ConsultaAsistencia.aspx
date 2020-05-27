<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaAsistencia.aspx.cs" Inherits="Affis.ConsultaAsistencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b>CONSULTA ASISTENCIA</b></h3>
                    </div>
                    <div class="col-2">

                    </div>
                    <div class="col-2">
                        <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-6">
                        <asp:Label ID="Label3" runat="server">Ejecutivo</asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ejecutivo" DataValueField="Ejecutivo" CssClass="dropdownStyle" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Ejecutivo] FROM [Asistencia]"></asp:SqlDataSource>
                    </div>
                    <div class="col-2">
                    
                    </div>
                    <div class="col-4">
                        <asp:LinkButton ID="Button1" runat="server" Text="REVISAR" OnClick="Button1_Click" class="buttonColor" style="margin-top: 8%;"><i class="fa fa-search"></i> REVISAR</asp:LinkButton>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12">
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="Ejecutivo" HeaderText="Ejecutivo" SortExpression="Ejecutivo" />
                                <asp:BoundField DataField="Mes" HeaderText="Mes" SortExpression="Mes" />
                                <asp:BoundField DataField="Año" HeaderText="Año" SortExpression="Año" />
                                <asp:BoundField DataField="Dias" HeaderText="Dias" SortExpression="Dias" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Ejecutivo], [Mes], [Año], [Dias] FROM [Asistencia] WHERE ([Ejecutivo] = @Ejecutivo)">
                            <SelectParameters>
                                <asp:SessionParameter Name="Ejecutivo" SessionField="Asistencia" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <hr />
                <div class="form-row">
                    <div class="col-12">
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" CssClass="btn btn-danger" style="margin-left: 45%;"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
