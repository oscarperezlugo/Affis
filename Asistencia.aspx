<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Asistencia.aspx.cs" Inherits="Affis.Asistencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b>REGISTRO ASISTENCIA</b></h3>
                    </div>
                    <div class="col-2">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-2">
                         <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-6">
                        <asp:Label ID="Label3" runat="server" CssClass="leafNode" Text="Ejecutivo"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="NOMBRE" CssClass="dropdownStyle" Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
                    </div>
                    <div class="col-3" style="left: 1%;">
                        <asp:Label ID="Label4" runat="server" CssClass="leafNode" Text="Año/Mes" Width="100%"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle" Width="50%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$] ORDER BY [AÑO] DESC"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="MES" DataValueField="MES" CssClass="dropdownStyle" Width="40%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                    </div>
                    <div class="col-3">
                         <asp:Label ID="Label5" runat="server" CssClass="leafNode" Text="Dias Laborados"></asp:Label>
                         <asp:TextBox ID="TextBox6" runat="server" class="form-control" Placeholder="Dias Laborados" Width="100%"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="col-12">
                        <hr />
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12" style="padding-left:43%">
                        <asp:LinkButton class="button" ID="Button1" runat="server" OnClick="Button1_Click" CssClass="buttonColor"  ><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    </div>
                </div>
                <hr />
                <div class="form-row" style="padding-left:45%">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" CssClass="btn btn-danger"/>
                </div>
            </div>
        </div>
    </div>

</asp:Content>