<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Retenciones1.aspx.cs" Inherits="Affis.Retenciones1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 68px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h2><b> RETENCIONES </b></h2>
                    </div>
                    <div class="col-auto">
                        <label for="certificado">Certificado</label><br />
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Certificado" Width="100%" ForeColor="Red" Font-Bold="True"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-5">
                        <label for="cedulaiden">Cédula de Identidad</label><br />
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Cédula de Identidad" Width="100%"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-3">
                        <label for="motivo">Motivo</label><br />
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownStyle">
                            <asp:ListItem>Seleccione un motivo</asp:ListItem>
                            <asp:ListItem>Voluntario</asp:ListItem>
                            <asp:ListItem>Renuncia</asp:ListItem>
                            <asp:ListItem>Impago</asp:ListItem>
                            <asp:ListItem>Edad de Terminación</asp:ListItem>
                            <asp:ListItem>Fallecido</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-4">
                        <label for="fechasolicitud">Fecha de Solicitud</label><br />
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdownStyle">
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
                        <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-5">
                        <label for="nomb">Nombre</label><br />
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Nombre" Width="100%"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-3"></div>
                    <div class="col-4">
                        <label for="fechasol">Fecha de Asignación</label><br />
                        <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SqlDataSource3" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList14" runat="server" CssClass="dropdownStyle">
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
                        <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-5">
                        <label for="empresa">Empresa</label><br />
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Empresa" Width="100%"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-3">
                        <label for="canal">Canal</label><br />
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdownStyle">
                            <asp:ListItem>Seleccione un canal</asp:ListItem>
                            <asp:ListItem>Telefónico</asp:ListItem>
                            <asp:ListItem>Correo</asp:ListItem>
                            <asp:ListItem>Presencial</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-4">
                        <label for="fecsol">Fecha de Resolución</label><br />
                        <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource3" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList17" runat="server" CssClass="dropdownStyle">
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
                        <asp:DropDownList ID="DropDownList18" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-5">
                        <label for="ejecasig">Ejecutivo Asignado</label><br />
                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Ejecutivo Asignado" Width="100%"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-5">
                        <label for="resposreten">Responsable de Retención</label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="NOMBRE" CssClass="dropdownStyle">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
                    </div>
                    <div class="col-2">
                        <label for="" class="invisible">Guardar</label><br />
                        <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
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
