<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="caso.aspx.cs" Inherits="Affis.caso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h2><b> CASO </b></h2>
                    </div>
                    <div class="col-auto">
                        <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="btn btn-primary"></asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-6">
                        <label for="cedulaidentidad">Cédula de Identidad</label><br />
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Cédula"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-6">
                        <label for="nombre">Nombre</label><br />
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Nombre" ></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-3">
                        <label for="numerotelefono">Nro. de Teléfono</label><br />
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Nro. de Teléfono"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-4">
                        <label for="direccionemp">Dirección del Empleador</label><br />
                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Dirección del Empleador"></asp:TextBox>
                    </div>
                    <div class="col-auto">
                        <label for="fechainicio">Fecha de Inicio</label><br />
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
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
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-5">
                        <label for="entidadtomadora">Entidad Tomadora</label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownStyle" DataSourceID="SqlDataSource1" DataTextField="NOMBRECOMERCIAL" DataValueField="NOMBRECOMERCIAL">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS]"></asp:SqlDataSource>
                        <br />
                    </div>
                    <div class="col-5">
                        <label for="ejecutivoasig">Ejecutivo Asignado</label><br />
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownStyle" DataSourceID="SqlDataSource2" DataTextField="NOMBRE" DataValueField="NOMBRE">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
                    </div>
                    <div class="col-auto">
                        <label for="" class="invisible">Guardar</label><br />
                        <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    </div>
                </div>
                <div><hr /></div>
                <div class="form-row">
                    <div class="col-12" style="padding-left:45%">
                        <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
