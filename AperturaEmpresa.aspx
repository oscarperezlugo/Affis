<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="AperturaEmpresa.aspx.cs" Inherits="Affis.Base" EnableEventValidation="false"%>

<script runat="server">

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Beneficiarios.aspx");
    }
</script>


<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b> APERTURA </b></h3>
                    </div>
                    <div class="col-1"></div>
                    <div class="col-3">
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
                    <div class="col-3">
                        <label for="mediocobro">Medio de Cobro</label><br />
                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdownStyle">
                            <%--    <asp:ListItem>Medio de Cobro</asp:ListItem>--%>
                            <asp:ListItem>Tarjeta de Crédito</asp:ListItem>
                            <asp:ListItem>Rol de Pagos</asp:ListItem>
                            <asp:ListItem>Ambos</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-auto">
                        <label for="" class="invisible">asdsad</label><br />
                        <asp:LinkButton ID="Button1" runat="server" OnClick="Button1_Click" class="button" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    </div>
                </div>
                <div><hr /></div>
                <div class="form-row">
                    <div class="col-12" style="padding-left:45%">
                        <asp:LinkButton ID="Button5" runat="server" OnClick="Button5_Click" class="button" CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
