<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Certificado.aspx.cs" Inherits="Affis.Certificado" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    </style>
</asp:Content>

<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="col-12">
                    <h3><b>CERTIFICADO</b></h3>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-1">
                        <asp:Label ID="Label3" runat="server" CssClass="texto"></asp:Label>
                        <asp:Label ID="Label4" runat="server" CssClass="texto"></asp:Label>
                     </div>   
                     <div class="col-2">
                        <asp:Label ID="Label2" runat="server">Certificado</asp:Label>
                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownStyle" DataSourceID="SqlDataSource2" DataTextField="Numero" DataValueField="Numero" Font-Bold="True" Font-Size="Large" Width="100%">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Numero] FROM [Certificados] WHERE (([Ejecutivo] = @Ejecutivo) AND ([Accion] = @Accion))">
                             <SelectParameters>
                                 <asp:SessionParameter Name="Ejecutivo" SessionField="bienvenido" Type="String" />
                                 <asp:Parameter DefaultValue="Entregado" Name="Accion" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>    
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE], [CEDULA] FROM [ADICIONADOS] WHERE ([RELACION] = @RELACION)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="col-9" style="left: 10%;margin-top: 26px;">
                        <asp:LinkButton ID="Button2" runat="server"  OnClick="Button2_Click" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                        <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                        <asp:LinkButton ID="Button4" runat="server"  OnClick="Button4_Click" CssClass="btn btn-primary"><i class="fa fa-check"></i> FINALIZAR</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

