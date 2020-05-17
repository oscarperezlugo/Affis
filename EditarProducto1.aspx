<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarProducto1.aspx.cs" Inherits="Affis.EditarProducto1" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3>EDICIÓN DE PRODUCTOS WSM</h3>
                    </div>
                    <div class="col-auto">
                        <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="btn btn-primary"></asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-2">
                        <p class="invisible">texto para separar</p>
                    </div>
                    <div class="col-4">
                        <div style="margin-left: 30%;">
                            <asp:Label ID="Label8" runat="server" Text="Código" style="margin-right: 100%;"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Codigo" DataValueField="Codigo" CssClass="dropdownStyle" Width="60%">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Codigo] FROM [PRODUCTOS]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="col-6" style="padding-top:2%">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click"><i class="fa fa-check"></i> SELECCIONAR</asp:LinkButton>
                    </div>
                </div>
                <hr />
                <div class="form-row" style="margin-left: 40%;">
                    <asp:LinkButton ID="BtnCancelar" runat="server" OnClick="BtnCancelar_Click" Text="CANCELAR" class="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>