<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Remplazo4.aspx.cs" Inherits="Affis.Remplazo4" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
 
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .mGrid td {
                border-radius: 0.25rem;
                border: 1px solid #ced4da;
                height: calc(1.5em + 0.75rem + 2px);
                display: block;
                font-size: 1rem;
                padding: 0.375rem 0.75rem;
                background-color: #fff;
                background-clip: padding-box;
                margin-top: -8px;
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
                    <div class="col-2">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-2">
                        <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click"  CssClass="buttonColor" ><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-8">
                        <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Tomador Cedula"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="TOMADOR CEDULA"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-4">
                        <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Cédula"></asp:Label>
                        <asp:TextBox id="Text3" placeholder="CEDULA" type="text" runat="server" class="form-control"/>
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label9" runat="server" CssClass="textomini" Text="Nombre Completo"></asp:Label>
                        <asp:TextBox id="Text6" placeholder="NOMBRE COMPLETO" type="text" runat="server" class="form-control"/>
                    </div>
                    <div class="col-2">
                        <asp:Label ID="LabelG" runat="server" CssClass="textomini" Text="Género"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="dropdownStyle">
                            <asp:ListItem Value="null">GENERO</asp:ListItem>
                            <asp:ListItem>MASCULINO</asp:ListItem>
                            <asp:ListItem>FEMENINO</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-2">
                        <asp:Label ID="LabelR" runat="server" CssClass="textomini" Text="Relación"></asp:Label>
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdownStyle">
                            <asp:ListItem>RELACION</asp:ListItem>
                            <asp:ListItem Value="TOMADOR">Tomador</asp:ListItem>
                            <asp:ListItem Value="CONYUGUE">Cónyuge</asp:ListItem>
                            <asp:ListItem Value="HIJO">Hijo</asp:ListItem>
                            <asp:ListItem Value="HERMANO">Hermano</asp:ListItem>
                            <asp:ListItem Value="PROGENITOR">Progenitor</asp:ListItem>
                            <asp:ListItem Value="PRIMO">Primo</asp:ListItem>
                            <asp:ListItem Value="SOBRINO">Sobrino</asp:ListItem>
                            <asp:ListItem Value="HERMANO">Hermano</asp:ListItem>
                            <asp:ListItem Value="NIETO">Nieto</asp:ListItem>
                            <asp:ListItem Value="CUÑADO">Cuñado</asp:ListItem>
                            <asp:ListItem Value="SUEGRO">Suegro</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-5">
                        <asp:Label ID="Label3" runat="server" Text="Fecha de nacimiento" CssClass="texto" style="margin-right: 50%;"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="50%">
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
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle" Width="15%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                    </div>
                    <div class="col-5">
                        <asp:Label ID="LabelP" runat="server" CssClass="textomini" Text="Producto"></asp:Label>
                       <asp:DropDownList ID="DropDownList8" runat="server"  Width="100%" CssClass="dropdownStyle">
                            <asp:ListItem>Producto</asp:ListItem>
                            <asp:ListItem>Muerte accidental y desmembración accidental</asp:ListItem>
                            <asp:ListItem>Renta diaria por hospitalización</asp:ListItem>
                            <asp:ListItem>Beca educativa</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Producto] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-2">
                        <asp:Label ID="LabelPl" runat="server" CssClass="textomini" Text="Plan"></asp:Label>
                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdownStyle"  Width="100%">
                            <asp:ListItem Value="null">PLAN</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-3" style="margin-top: 24px;">
                        <asp:LinkButton ID="Button3" runat="server" OnClick="Button3_Click"  CssClass="buttonColor" style="margin-left: 24%;"><i class="fa fa-calculator"></i> CALCULAR</asp:LinkButton>
                    </div>
                    <div class="col-2" style="margin-top: 30px;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="mGrid" ShowHeader="False" BorderStyle="None" Width="100%" >
                            <Columns>
                                <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" DataFormatString="{0:0.00}" />
                                <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" visible="false" />
                                <asp:BoundField DataField="Plan" HeaderText="Plan" SortExpression="Plan" visible="false" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Valor], [Producto], [Plan] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    </div>
                    <div class="col-5" style="margin-top: 24px;">
                        <asp:LinkButton class="button" ID="Button1" runat="server" OnClick="Button1_Click" CssClass="buttonColor" style="margin-left: 24%;"><i class="fa fa-plus-circle"></i>ADICIONAR</asp:LinkButton>
                    </div>
                </div>
                <hr />
                <div class="form-row" style="padding-left:45%">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" CssClass="btn btn-danger"/>
                </div>
            </div>
        </div>
 </asp:Content>

    
