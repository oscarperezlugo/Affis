<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cobranzas.aspx.cs" Inherits="Affis.Cobranzas" MasterPageFile="~/Site.Master" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <style type="text/css">
            .QuitarMarginBotton{
                margin-bottom:0px;
            }
            .SubirTexto{
                margin-top:-5px;
            }
            .RedondearLabel{
                border-radius: 0.25rem;
                border: 1px solid #ced4da;
                height: calc(1.5em + 0.75rem + 2px);
                display: block;
                font-size: 1rem;
                padding: 0.375rem 0.75rem;
                background-color: #fff;
                background-clip: padding-box;
            }
            .dropdownStyle{
                width: 100%;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <div class="form-row">
                        <div class="col-8">
                            <h2><b> COBRANZA </b></h2>
                        </div>
                        <div class="col-auto">
                            <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-row">
                        <div class="col-6">
                            <label for="nombre">Nombre</label><br />
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" width="400px" placeholder="Nombre"></asp:TextBox>
                        </div>
                        <div class="col-6">
                            <label for="cedula">Cédula</label><br />
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" width="400px" placeholder="Cédula"></asp:TextBox>
                            <br />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-3">
                            <label for="mediocobro">Medio de Cobro</label><br />
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownStyle">
                                <asp:ListItem>Medio de Cobro</asp:ListItem>
                                <asp:ListItem>Rol de Pagos</asp:ListItem>
                                <asp:ListItem>Tarjeta de Crédito</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-4">
                            <label for="banco">Banco</label><br />
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Banco"></asp:TextBox><br />
                        </div>
                        <div class="col-3">
                            <label for="nrocuenta">Nro. de Cuenta</label><br />
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Nro. de Cuenta"></asp:TextBox><br />
                        </div>
                        <div class="col-2">
                            <label for="tipocuenta" class="QuitarMarginBotton">Tipo de Cuenta</label><br />
                            <asp:CheckBox ID="CheckBox2" runat="server" CssClass="QuitarMarginBotton"/>&nbsp<label for="ahorro">Ahorro</label><br />
                            <div class="SubirTexto">
                                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="SubirTexto"/>&nbsp<label for="corriente">Corriente</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-3">
                            <label for="tipotarjeta">Tipo de Tarjeta</label><br />
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownStyle">
                                <asp:ListItem>Seleccione Tarjeta</asp:ListItem>
                                <asp:ListItem>Visa</asp:ListItem>
                                <asp:ListItem>Master Card</asp:ListItem>
                                <asp:ListItem>American Express</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-4">
                            <label for="vencimiento">Vencimiento</label><br />
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Vencimiento"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-4">
                            <label for="numero">Número</label><br />
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Número"></asp:TextBox>
                            <br />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-4">
                            <label for="codigoseguridad">Código de Seguridad</label><br />
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Código de Seguridad"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-4">
                            <label for="primatotal">Prima Total</label><br />
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red" CssClass="RedondearLabel"></asp:Label>
                            <br />
                        </div>
                        <div class="col-auto">
                            <label for="" class="invisible">probando</label><br />
                            <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                            <asp:LinkButton ID="Button4" runat="server" OnClick="Button4_Click" CssClass="buttonColor"><i class="fa fa-check"></i> FINALIZAR</asp:LinkButton>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-12" align="center">
                            <asp:LinkButton ID="Button3" runat="server" Text="CANCELAR" OnClick="Button3_Click" CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
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
</asp:Content>

