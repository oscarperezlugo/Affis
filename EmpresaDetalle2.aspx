﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmpresaDetalle2.aspx.cs" Inherits="Affis.EmpresaDetalle2" %>
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
                        <h3><b>EMPRESA DETALLE</b></h3>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <br />
                <div class="form-row">
                    <div class="col-4">
                        <asp:Label ID="Label4" runat="server" Text="RUC"></asp:Label>
                        <asp:TextBox id="Text3" placeholder="RUC" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label2" runat="server" CssClass="textomini" Text="RAZÓN SOCIAL"></asp:Label>
                        <asp:TextBox id="TextBox1" placeholder="RAZÓN SOCIAL" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label3" runat="server" CssClass="textomini" Text="NOMBRE COMERCIAL"></asp:Label>
                        <asp:TextBox id="TextBox2" placeholder="NOMBRE COMERCIAL" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                </div>
                <br />
                <div class="form-row">
                        <div class="col-4">
                            <asp:Label ID="Label9" runat="server" CssClass="textomini" Text="DIRECCIÓN"></asp:Label>
                            <asp:TextBox id="TextBox5" placeholder="DIRECCIÓN" type="text" runat="server" class="form-control" Width="100%"/>
                        </div>
                        <div class="col-4">
                            <asp:Label ID="Label6" runat="server" CssClass="textomini" Text="PROVINCIA"></asp:Label>
                            <asp:TextBox id="TextBox3" placeholder="PROVINCIA" type="text" runat="server" class="form-control" Width="100%"/>
                        </div>
                        <div class="col-4">
                            <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="CIUDAD"></asp:Label>
                            <asp:TextBox id="TextBox4" placeholder="CIUDAD" type="text" runat="server" class="form-control" Width="100%"/>
                        </div>
                </div>
                <hr />
                <br />
                <div class="form-row">
                        <div class="col-3">
                            <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="CONTACTO FACTURACIÓN 1"></asp:Label> 
                            <asp:TextBox id="Text5" placeholder="CONTACTO FACTURACIÓN 1" type="text" runat="server" class="form-control" Width="100%"/>    
                        </div>
                        <div class="col-3">
                            <asp:Label ID="Label5" runat="server" CssClass="textomini" Text="TELÉFONO"></asp:Label>
                            <asp:TextBox id="TextBox6" placeholder="TELÉFONO" type="text" runat="server" class="form-control" Width="100%"/>
                        </div>
                        <div class="col-3">
                            <asp:Label ID="Label10" runat="server" CssClass="textomini" Text="CELULAR"></asp:Label>
                            <asp:TextBox id="TextBox7" placeholder="CELULAR" type="text" runat="server" class="form-control" Width="100%"/>
                        </div>
                        <div class="col-3">
                            <asp:Label ID="Label11" runat="server" CssClass="textomini" Text="EMAIL FACTURACIÓN 1"></asp:Label>
                            <asp:TextBox id="TextBox8" placeholder="EMAIL FACTURACIÓN 1" type="text" runat="server" class="form-control" Width="100%"/>
                        </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-3">
                        <asp:Label ID="Label12" runat="server" CssClass="textomini" Text="CONTACTO FACTURACIÓN 2"></asp:Label>
                        <asp:TextBox ID="TextBox9" placeholder="CONTACTO FACTURACIÓN 2" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label13" runat="server" CssClass="textomini" Text="TELÉFONO"></asp:Label>
                        <asp:TextBox ID="TextBox10" placeholder="TELÉFONO" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label14" runat="server" CssClass="textomini" Text="CELULAR"></asp:Label>
                        <asp:TextBox ID="TextBox11" placeholder="CELULAR" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label15" runat="server" CssClass="textomini" Text="EMAIL FACTURACIÓN 2"></asp:Label>
                        <asp:TextBox ID="TextBox12" placeholder="EMAIL FACTURACIÓN 2" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-3">
                        <asp:Label ID="Label16" runat="server" CssClass="textomini" Text="CONTACTO FACTURACIÓN 3"></asp:Label>
                        <asp:TextBox ID="TextBox13" placeholder="CONTACTO FACTURACIÓN 3" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label17" runat="server" CssClass="textomini" Text="TELÉFONO"></asp:Label>
                        <asp:TextBox ID="TextBox14" placeholder="TELÉFONO" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label18" runat="server" CssClass="textomini" Text="CELULAR"></asp:Label>
                        <asp:TextBox ID="TextBox15" placeholder="CELULAR" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label19" runat="server" CssClass="textomini" Text="EMAIL FACTURACIÓN 3"></asp:Label>
                        <asp:TextBox ID="TextBox16" placeholder="EMAIL FACTURACIÓN 3" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                </div>
                <hr />
                <br />
                <div class="form-row">
                    <div class="col-3">
                        <asp:Label ID="Label20" runat="server" CssClass="textomini" Text="CONTACTO LISTADO 1"></asp:Label>
                        <asp:TextBox ID="TextBox17" placeholder="CONTACTO LISTADO 3" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label21" runat="server" CssClass="textomini" Text="TELÉFONO"></asp:Label>
                        <asp:TextBox ID="TextBox18" placeholder="TELÉFONO" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label22" runat="server" CssClass="textomini" Text="CELULAR"></asp:Label>
                        <asp:TextBox ID="TextBox19" placeholder="CELULAR" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label23" runat="server" CssClass="textomini" Text="EMAIL LISTADO 1"></asp:Label>
                        <asp:TextBox ID="TextBox20" placeholder="EMAIL LISTADO 3" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-3">
                        <asp:Label ID="Label24" runat="server" CssClass="textomini" Text="CONTACTO LISTADO 2"></asp:Label>
                        <asp:TextBox ID="TextBox21" placeholder="CONTACTO LISTADO 2" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label25" runat="server" CssClass="textomini" Text="TELÉFONO"></asp:Label>
                        <asp:TextBox ID="TextBox22" placeholder="TELÉFONO" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label26" runat="server" CssClass="textomini" Text="CELULAR"></asp:Label>
                        <asp:TextBox ID="TextBox23" placeholder="CELULAR" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label27" runat="server" CssClass="textomini" Text="EMAIL LISTADO 2"></asp:Label>
                        <asp:TextBox ID="TextBox24" placeholder="EMAIL LISTADO 2" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                </div>
                <hr />
                <br />
                <div class="form-row">
                    <div class="col-3">
                        <asp:Label ID="Label28" runat="server" CssClass="textomini" Text="CONTACTO COBRANZA 1"></asp:Label>
                        <asp:TextBox ID="TextBox25" placeholder="CONTACTO COBRANZA 1" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label29" runat="server" CssClass="textomini" Text="TELÉFONO"></asp:Label>
                        <asp:TextBox ID="TextBox26" placeholder="TELÉFONO" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label30" runat="server" CssClass="textomini" Text="CELULAR"></asp:Label>
                        <asp:TextBox ID="TextBox27" placeholder="CELULAR" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label31" runat="server" Text="EMAIL COBRANZA 1"></asp:Label>
                        <asp:TextBox ID="TextBox28" placeholder="EMAIL COBRANZA 1" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-3">
                        <asp:Label ID="Label32" runat="server" CssClass="textomini" Text="CONTACTO COBRANZA 2"></asp:Label>
                        <asp:TextBox ID="TextBox29" placeholder="CONTACTO COBRANZA 2" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label33" runat="server" CssClass="textomini" Text="TELÉFONO"></asp:Label>
                        <asp:TextBox ID="TextBox30" placeholder="TELÉFONO" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label34" runat="server" CssClass="textomini" Text="CELULAR"></asp:Label>
                        <asp:TextBox ID="TextBox31" placeholder="CELULAR" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label35" runat="server" Text="EMAIL COBRANZA 2"></asp:Label>
                        <asp:TextBox ID="TextBox32" placeholder="EMAIL COBRANZA 2" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                </div>
                <hr />
                <br />
                <div class="form-row">
                    <div class="col-4">
                        <asp:Label ID="Label36" runat="server" CssClass="textomini" Text="PÓLIZA"></asp:Label>
                        <asp:TextBox id="TextBox33" placeholder="PÓLIZA" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label37" runat="server" CssClass="textomini" Text="CLASE"></asp:Label>
                        <asp:TextBox id="TextBox34" placeholder="CLASE" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label38" runat="server" CssClass="textomini" Text="EJECUTIVO"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownStyle" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="NOMBRE" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]">
                        </asp:SqlDataSource>
                    </div>
                </div>
                <hr />
                <br />
                <div class="form-row">
                    <div class="col-4">
                        <asp:Label ID="Label39" runat="server" CssClass="textomini" Text="FECHA DE EMISIÓN FACTURA"></asp:Label>
                        <asp:TextBox id="TextBox35" placeholder="FECHA DE EMISIÓN FACTURA" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label40" runat="server" CssClass="textomini" Text="FECHA DE ENVÍO LISTADO"></asp:Label>
                        <asp:TextBox id="TextBox36" placeholder="FECHA DE ENVÍO LISTADO" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label41" runat="server" CssClass="textomini" Text="TIPO DE LISTADO"></asp:Label>
                        <asp:TextBox id="TextBox37" placeholder="TIPO DE LISTADO" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                </div>
                <hr />
                <br />
                <div class="form-row">
                    <div class="col-4">
                        <asp:Label ID="Label42" runat="server" CssClass="textomini" Text="EMITE FACTURA DE COMISIÓN"></asp:Label>
                        <asp:TextBox id="TextBox38" placeholder="EMITE FACTURA DE COMISIÓN" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label43" runat="server" CssClass="textomini" Text="PORCENTAJE DE COMISIÓN"></asp:Label>
                        <asp:TextBox id="TextBox39" placeholder="PORCENTAJE DE COMISIÓN" type="text" runat="server" class="form-control" Width="100%" />
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label44" runat="server" CssClass="textomini" Text="FECHA DE LLAMADA DE COBRO"></asp:Label>
                        <asp:TextBox id="TextBox40" placeholder="FECHA DE LLAMADA DE COBRO" type="text" runat="server" class="form-control" Width="100%"/>
                    </div>
                </div>
                <hr />
                <br />
                <div class="form-row">
                    <div class="col-2"></div>
                    <div class="col-4">
                        <asp:Label ID="Label45" runat="server" Font-Bold="True" Text="MEDIO DE COBRO"></asp:Label>
                        <div style="margin-left: 4rem;">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="&nbsp;&nbsp;TARJETA  " Font-Size="Smaller" OnCheckedChanged="CheckBox1_CheckedChanged"/>
                        </div>
                        <div style="margin-left: 4rem;">
                            <asp:CheckBox ID="CheckBox2" runat="server" Text="&nbsp;&nbsp;ROL DE PAGOS" Font-Size="Smaller" OnCheckedChanged="CheckBox2_CheckedChanged" />
                         </div>   
                        <div style="margin-left: 4rem;">
                            <asp:CheckBox ID="CheckBox3" runat="server" Text="&nbsp;&nbsp;AMBAS " OnCheckedChanged="CheckBox3_CheckedChanged" Font-Size="Smaller" />
                        </div>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label46" runat="server" Font-Bold="True" Text="FORMA DE PAGO"></asp:Label>
                        <div style="margin-left: 4rem;">
                            <asp:CheckBox ID="CheckBox4" runat="server" Text="&nbsp;&nbsp;TRANSFERENCIA   " Font-Size="Smaller" OnCheckedChanged="CheckBox4_CheckedChanged"/>
                        </div>
                        <div style="margin-left: 4rem;">
                            <asp:CheckBox ID="CheckBox5" runat="server" Text="&nbsp;&nbsp;MIX " Font-Size="Smaller" OnCheckedChanged="CheckBox5_CheckedChanged"/>
                        </div>
                        <div style="margin-left: 4rem;">
                            <asp:CheckBox ID="CheckBox6" runat="server" Text="&nbsp;&nbsp;CHEQUE   " Font-Size="Smaller" OnCheckedChanged="CheckBox6_CheckedChanged"/>
                        </div>
                        <div style="margin-left: 4rem;">
                            <asp:CheckBox ID="CheckBox7" runat="server" Text="&nbsp;&nbsp;DEBITO BANCARIO " Font-Size="Smaller" OnCheckedChanged="CheckBox7_CheckedChanged"/>
                        </div>
                    </div>
                    <div class="col-2"></div>
                </div>
                <hr />
                <br />
                <div class="form-row">
                    <div class="col-4">
                        <p class="invisible">Columna Relleno</p>
                    </div>
                    <div class="col-2">
                        <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    </div>
                    <div class="col-2">
                        <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    </div>
                    <div class="col-4">
                        <p class="invisible">Columna Relleno</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
