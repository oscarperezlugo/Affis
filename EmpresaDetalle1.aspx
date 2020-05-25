<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmpresaDetalle1.aspx.cs" Inherits="Affis.EmpresaDetalle1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b>EMPRESA DETALLE</b></h3>
                    </div>
                    <div class="col-4">
                        <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                        <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click"  CssClass="buttonColor" ><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-6">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRECOMERCIAL" DataValueField="NOMBRECOMERCIAL" CssClass="dropdownStyle">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS] WHERE ([RUC] IS NULL)"></asp:SqlDataSource>
                    </div>
                </div>
                <hr />
                <div class="form-row">
                    <div class="col-12" style="margin-left:45%;">
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" CssClass="btn btn-danger"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
