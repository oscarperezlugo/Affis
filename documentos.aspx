<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="documentos.aspx.cs" Inherits="Affis.documentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
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
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-6">
                        <asp:Label ID="Label1" runat="server" CssClass="textomini" Text="Recepcion de Documentos" style="padding-right:50%"></asp:Label>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="50%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdownStyle" Width="30%">
                                <asp:ListItem Value="1">ENERO</asp:ListItem>
                                <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                                <asp:ListItem Value="3">MARZO</asp:ListItem>
                                <asp:ListItem Value="4">ABRIL</asp:ListItem>
                                <asp:ListItem Value="5">MAYO</asp:ListItem>
                                <asp:ListItem Value="6">JUNIO</asp:ListItem>
                                <asp:ListItem Value="7">JULIO</asp:ListItem>
                                <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                                <asp:ListItem Value="9">SEPTIEMBRE</asp:ListItem>
                                <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                                <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                                <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                         </asp:DropDownList>
                         <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="15%">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    </div>
                    <div class="col-6">
                         <asp:Label ID="Label11" runat="server" CssClass="textomini" Text="Entrega Doc. Aseguradora:" style="padding-right:50%"></asp:Label>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="50%"></asp:DropDownList>
                         <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownStyle" Width="30%">
                                <asp:ListItem Value="1">ENERO</asp:ListItem>
                                <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                                <asp:ListItem Value="3">MARZO</asp:ListItem>
                                <asp:ListItem Value="4">ABRIL</asp:ListItem>
                                <asp:ListItem Value="5">MAYO</asp:ListItem>
                                <asp:ListItem Value="6">JUNIO</asp:ListItem>
                                <asp:ListItem Value="7">JULIO</asp:ListItem>
                                <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                                <asp:ListItem Value="9">SEPTIEMBRE</asp:ListItem>
                                <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                                <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                                <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                         </asp:DropDownList>
                         <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="15%">
                         </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-1" style="padding-left: 4px;">
                        <asp:Label ID="LabelC" runat="server" Text="Caso NRO."></asp:Label>
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                    </div>
                    <div class="col-1">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-5">
                         <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Confirmación Caso" style="padding-right:50%"></asp:Label>
                         <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="40%"></asp:DropDownList>
                         <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdownStyle" Width="30%">
                                <asp:ListItem Value="1">ENERO</asp:ListItem>
                                <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                                <asp:ListItem Value="3">MARZO</asp:ListItem>
                                <asp:ListItem Value="4">ABRIL</asp:ListItem>
                                <asp:ListItem Value="5">MAYO</asp:ListItem>
                                <asp:ListItem Value="6">JUNIO</asp:ListItem>
                                <asp:ListItem Value="7">JULIO</asp:ListItem>
                                <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                                <asp:ListItem Value="9">SEPTIEMBRE</asp:ListItem>
                                <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                                <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                                <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                            </asp:DropDownList>
                         <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="15%">
                         </asp:DropDownList>
                    </div>
                    <div class="col-5">
                        <asp:Label ID="Label12" runat="server" CssClass="textomini" Text="Fecha Salida Pago" style="padding-right:50%"></asp:Label>
                        <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="40%"></asp:DropDownList>
                        <asp:DropDownList ID="DropDownList10" runat="server" CssClass="dropdownStyle" Width="30%">
                            <asp:ListItem Value="1">ENERO</asp:ListItem>
                            <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                            <asp:ListItem Value="3">MARZO</asp:ListItem>
                            <asp:ListItem Value="4">ABRIL</asp:ListItem>
                            <asp:ListItem Value="5">MAYO</asp:ListItem>
                            <asp:ListItem Value="6">JUNIO</asp:ListItem>
                            <asp:ListItem Value="7">JULIO</asp:ListItem>
                            <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                            <asp:ListItem Value="9">SEPTIEMBRE</asp:ListItem>
                            <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                            <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                            <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="15%">
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-4">
                        <div>
                            <asp:Label ID="Label17" runat="server" CssClass="textomini" Text="Fecha Inicio:" style="margin-right: 70%;"></asp:Label>
                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                    <div class="col-8">
                         <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Fecha Ingreso" style="padding-right:70%"></asp:Label>
                         <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="30%"></asp:DropDownList>
                         <asp:DropDownList ID="DropDownList14" runat="server" CssClass="dropdownStyle" Width="20%">
                                <asp:ListItem Value="1">ENERO</asp:ListItem>
                                <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                                <asp:ListItem Value="3">MARZO</asp:ListItem>
                                <asp:ListItem Value="4">ABRIL</asp:ListItem>
                                <asp:ListItem Value="5">MAYO</asp:ListItem>
                                <asp:ListItem Value="6">JUNIO</asp:ListItem>
                                <asp:ListItem Value="7">JULIO</asp:ListItem>
                                <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                                <asp:ListItem Value="9">SEPTIEMBRE</asp:ListItem>
                                <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                                <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                                <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="15%">
                          </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-6">
                        <asp:Label ID="Label13" runat="server" CssClass="textomini" Text="Fecha Alta" style="padding-right:50%"></asp:Label>
                        <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="50%"></asp:DropDownList>
                        <asp:DropDownList ID="DropDownList17" runat="server" CssClass="dropdownStyle" Width="30%">
                            <asp:ListItem Value="1">ENERO</asp:ListItem>
                            <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                            <asp:ListItem Value="3">MARZO</asp:ListItem>
                            <asp:ListItem Value="4">ABRIL</asp:ListItem>
                            <asp:ListItem Value="5">MAYO</asp:ListItem>
                            <asp:ListItem Value="6">JUNIO</asp:ListItem>
                            <asp:ListItem Value="7">JULIO</asp:ListItem>
                            <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                            <asp:ListItem Value="9">SEPTIEMBRE</asp:ListItem>
                            <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                            <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                            <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList18" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="15%">
                        </asp:DropDownList>
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label9" runat="server" CssClass="textomini" Text="Dias Hospitalizados"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label14" runat="server" CssClass="textomini" Text="Dias UCI"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-6">
                        <asp:Label ID="Label10" runat="server" CssClass="textomini" Text="Registrado Por:"></asp:Label>
                        <asp:DropDownList ID="DropDownList19" runat="server" CssClass="dropdownStyle" DataSourceID="SqlDataSource3" DataTextField="NOMBRE" DataValueField="NOMBRE" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label15" runat="server" CssClass="textomini" Text="Valor Esperado Recibido"></asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Width="80%"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-8">
                        <asp:Label ID="Label18" runat="server" CssClass="textomini" Text="Observaciones"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="90%" TextMode="MultiLine" Rows="10"></asp:TextBox>
                    </div>
                    <div class="col-4">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="buttonColor" style="margin-left: 30%;"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
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
