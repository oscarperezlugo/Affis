<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adicion2.aspx.cs" Inherits="Affis.Adicion2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b>ADICIÓN</b></h3>
                    </div>
                    <div class="col-2">
                        <p class="invisible">columna relleno</p>
                    </div>
                    <div class="col-2">
                        <!--Espacio para botones-->
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="col-1">
                    <p class="invisible">columna relleno</p>
                </div>
                <div class="col-5">
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    <asp:DropDownList ID="DropDownList8" runat="server"  Width="100%" CssClass="dropdownStyle" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged">
                        <asp:ListItem>Producto</asp:ListItem>
                        <asp:ListItem Selected="True">Muerte accidental y desmembración accidental</asp:ListItem>
                        <asp:ListItem>Renta diaria por hospitalización</asp:ListItem>
                        <asp:ListItem>Beca educativa</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-2">
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdownStyle" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged" Width="100%" >
                        <asp:ListItem Value="null">PLAN</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem Selected="True">B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-4">
                    <asp:LinkButton class="button" ID="Button1" runat="server" OnClick="Button1_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> ADICIONAR</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
