<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminCert.aspx.cs" Inherits="Affis.AdminCert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h2><b> ADMINISTRAR CERTIFICADOS </b></h2>
                    </div>
                    <div class="col-auto">
                        <asp:LinkButton ID="LinkButton2" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-6">
                        <label for="ejecutivoasig">Ejecutivo Asignado</label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownStyle" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="NOMBRE">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
                        <br />
                    </div>
                    <div class="col-6">
                        <label for="numero">Número de Certificado</label><br />
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Número de Certificado"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-3">
                        <label for="tipoaccion">Tipo de Acción</label><br />
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownStyle">
                            <asp:ListItem>Seleccione una acción</asp:ListItem>
                            <asp:ListItem>Entregado</asp:ListItem>
                            <asp:ListItem>Devuelto</asp:ListItem>
                            <asp:ListItem>Anulado</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-7">
                        <label for="observaciones">Observaciones</label><br />
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Observaciones"></asp:TextBox>
                    </div>
                    <div class="col-auto">
                        <label for="" class="invisible">Guardar</label><br />
                        <asp:LinkButton ID="Button1" runat="server" OnClick="Button1_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
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
