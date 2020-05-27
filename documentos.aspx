<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="documentos.aspx.cs" Inherits="Affis.documentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .texto{
            font-size: inherit;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b>DOCUMENTOS</b></h3>
                    </div>
                    <div class="col-4">
                        <h3><b><asp:Label ID="LabelC" runat="server" Text="Caso Nro."></asp:Label>
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" CssClass="texto" ForeColor="Red"></asp:Label></b></h3>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-5">
                        <asp:Label ID="Label1" runat="server" CssClass="textomini" Text="Recepción de Documentos"></asp:Label><br />
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="40%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdownStyle" Width="30%">
                                <asp:ListItem Value="1">Enero</asp:ListItem>
                                <asp:ListItem Value="2">Febrero</asp:ListItem>
                                <asp:ListItem Value="3">Marzo</asp:ListItem>
                                <asp:ListItem Value="4">Abril</asp:ListItem>
                                <asp:ListItem Value="5">Mayo</asp:ListItem>
                                <asp:ListItem Value="6">Junio</asp:ListItem>
                                <asp:ListItem Value="7">Julio</asp:ListItem>
                                <asp:ListItem Value="8">Agosto</asp:ListItem>
                                <asp:ListItem Value="9">Septiembre</asp:ListItem>
                                <asp:ListItem Value="10">Octubre</asp:ListItem>
                                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                <asp:ListItem Value="12">Diciembre</asp:ListItem>
                         </asp:DropDownList>
                         <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="20%">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    </div>
                    <div class="col-2">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-5">
                         <asp:Label ID="Label11" runat="server" CssClass="textomini" Text="Entrega Doc. Aseguradora:"></asp:Label><br />
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="40%"></asp:DropDownList>
                         <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownStyle" Width="30%">
                                <asp:ListItem Value="1">Enero</asp:ListItem>
                                <asp:ListItem Value="2">Febrero</asp:ListItem>
                                <asp:ListItem Value="3">Marzo</asp:ListItem>
                                <asp:ListItem Value="4">Abril</asp:ListItem>
                                <asp:ListItem Value="5">Mayo</asp:ListItem>
                                <asp:ListItem Value="6">Junio</asp:ListItem>
                                <asp:ListItem Value="7">Julio</asp:ListItem>
                                <asp:ListItem Value="8">Agosto</asp:ListItem>
                                <asp:ListItem Value="9">Septiembre</asp:ListItem>
                                <asp:ListItem Value="10">Octubre</asp:ListItem>
                                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                <asp:ListItem Value="12">Diciembre</asp:ListItem>
                         </asp:DropDownList>
                         <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="20%">
                         </asp:DropDownList>
                    </div>
                </div>
                <br />
                <br />
                <div class="form-row">
                    <div class="col-5">
                         <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Confirmación Caso"></asp:Label><br />
                         <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="40%"></asp:DropDownList>
                         <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdownStyle" Width="30%">
                                <asp:ListItem Value="1">Enero</asp:ListItem>
                                <asp:ListItem Value="2">Febrero</asp:ListItem>
                                <asp:ListItem Value="3">Marzo</asp:ListItem>
                                <asp:ListItem Value="4">Abril</asp:ListItem>
                                <asp:ListItem Value="5">Mayo</asp:ListItem>
                                <asp:ListItem Value="6">Junio</asp:ListItem>
                                <asp:ListItem Value="7">Julio</asp:ListItem>
                                <asp:ListItem Value="8">Agosto</asp:ListItem>
                                <asp:ListItem Value="9">Septiembre</asp:ListItem>
                                <asp:ListItem Value="10">Octubre</asp:ListItem>
                                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                <asp:ListItem Value="12">Diciembre</asp:ListItem>
                            </asp:DropDownList>
                         <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="20%">
                         </asp:DropDownList>
                    </div>
                    <div class="col-2">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-5">
                        <asp:Label ID="Label12" runat="server" CssClass="textomini" Text="Fecha Salida Pago"></asp:Label><br />
                        <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="40%"></asp:DropDownList>
                        <asp:DropDownList ID="DropDownList10" runat="server" CssClass="dropdownStyle" Width="30%">
                                <asp:ListItem Value="1">Enero</asp:ListItem>
                                <asp:ListItem Value="2">Febrero</asp:ListItem>
                                <asp:ListItem Value="3">Marzo</asp:ListItem>
                                <asp:ListItem Value="4">Abril</asp:ListItem>
                                <asp:ListItem Value="5">Mayo</asp:ListItem>
                                <asp:ListItem Value="6">Junio</asp:ListItem>
                                <asp:ListItem Value="7">Julio</asp:ListItem>
                                <asp:ListItem Value="8">Agosto</asp:ListItem>
                                <asp:ListItem Value="9">Septiembre</asp:ListItem>
                                <asp:ListItem Value="10">Octubre</asp:ListItem>
                                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                <asp:ListItem Value="12">Diciembre</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="20%">
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-5">
                        <div>
                            <asp:Label ID="Label17" runat="server" CssClass="textomini" Text="Fecha Inicio:"></asp:Label><br />
                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                    <div class="col-2">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-5">
                         <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Fecha Ingreso" ></asp:Label><br />
                         <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="40%"></asp:DropDownList>
                         <asp:DropDownList ID="DropDownList14" runat="server" CssClass="dropdownStyle" Width="30%">
                                <asp:ListItem Value="1">Enero</asp:ListItem>
                                <asp:ListItem Value="2">Febrero</asp:ListItem>
                                <asp:ListItem Value="3">Marzo</asp:ListItem>
                                <asp:ListItem Value="4">Abril</asp:ListItem>
                                <asp:ListItem Value="5">Mayo</asp:ListItem>
                                <asp:ListItem Value="6">Junio</asp:ListItem>
                                <asp:ListItem Value="7">Julio</asp:ListItem>
                                <asp:ListItem Value="8">Agosto</asp:ListItem>
                                <asp:ListItem Value="9">Septiembre</asp:ListItem>
                                <asp:ListItem Value="10">Octubre</asp:ListItem>
                                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                <asp:ListItem Value="12">Diciembre</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="20%">
                          </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-5">
                        <asp:Label ID="Label13" runat="server" CssClass="textomini" Text="Fecha Alta"></asp:Label><br />
                        <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="40%"></asp:DropDownList>
                        <asp:DropDownList ID="DropDownList17" runat="server" CssClass="dropdownStyle" Width="30%">
                                <asp:ListItem Value="1">Enero</asp:ListItem>
                                <asp:ListItem Value="2">Febrero</asp:ListItem>
                                <asp:ListItem Value="3">Marzo</asp:ListItem>
                                <asp:ListItem Value="4">Abril</asp:ListItem>
                                <asp:ListItem Value="5">Mayo</asp:ListItem>
                                <asp:ListItem Value="6">Junio</asp:ListItem>
                                <asp:ListItem Value="7">Julio</asp:ListItem>
                                <asp:ListItem Value="8">Agosto</asp:ListItem>
                                <asp:ListItem Value="9">Septiembre</asp:ListItem>
                                <asp:ListItem Value="10">Octubre</asp:ListItem>
                                <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                <asp:ListItem Value="12">Diciembre</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList18" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="20%">
                        </asp:DropDownList>
                    </div>
                    <div class="col-2">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label9" runat="server" CssClass="textomini" Text="Días Hospitalizados"></asp:Label><br />
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="100%" MaxLength="4"></asp:TextBox>
                    </div>
                    <div class="col-2">
                        <asp:Label ID="Label14" runat="server" CssClass="textomini" Text="Días UCI"></asp:Label><br />
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="100%" MaxLength="4"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-5">
                        <asp:Label ID="Label10" runat="server" CssClass="textomini" Text="Registrado Por:"></asp:Label><br />
                        <asp:DropDownList ID="DropDownList19" runat="server" CssClass="dropdownStyle" DataSourceID="SqlDataSource3" DataTextField="NOMBRE" DataValueField="NOMBRE" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
                    </div>
                    <div class="col-2">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-5">
                        <asp:Label ID="Label15" runat="server" CssClass="textomini" Text="Valor Esperado Recibido"></asp:Label><br />
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Width="80%"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-8">
                        <asp:Label ID="Label18" runat="server" CssClass="textomini" Text="Observaciones"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="90%" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div>
                    <div class="col-1"></div>
                    <div class="col-3">
                        <br />
                        <br />
                        <br />
                        <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    </div>
                </div>
                <hr />
                <div class="form-row" style="padding-left:45%">
                    <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
