<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="AperturaEmpresa.aspx.cs" Inherits="Affis.Base" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h2><b> APERTURA </b></h2>
                    </div>
                    <div class="col-auto">
                        <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-6">
                        <label for="nombrecomercial">Nombre Comercial</label><br />
                        <input id="Text2" class="form-control" placeholder="Nombre Comercial" type="text" width="400px" runat="server"/><br />
                    </div>
                    <div class="col-6">
                        <label for="mediocobro">Medio de Cobro</label><br />
                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdownStyle">
                            <%--    <asp:ListItem>Medio de Cobro</asp:ListItem>--%>
                            <asp:ListItem>Tarjeta de Crédito</asp:ListItem>
                            <asp:ListItem>Rol de Pagos</asp:ListItem>
                            <asp:ListItem>Ambos</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12" align="center">
                        <asp:LinkButton ID="Button1" runat="server" OnClick="Button1_Click" class="button" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                        <asp:LinkButton ID="Button5" runat="server" OnClick="Button5_Click" class="button" CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
