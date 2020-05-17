<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarProducto2.aspx.cs" Inherits="Affis.EditarProducto2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <h3>EDICIÓN DE PRODUCTOS WSM</h3>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-1">
                        <p class="invisible">columna</p>
                    </div>
                    <div class="col-2">
                        <div>
                            <asp:Label ID="Label10" runat="server" CssClass="texto" Text="Código"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-1">
                        <p class="invisible">columna</p>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label11" runat="server" CssClass="texto" Text="Producto"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    </div>
                    <div class="col-1">
                        <p class="invisible">columna</p>
                    </div>
                    <div class="col-2">
                        <asp:Label ID="Label3" runat="server" CssClass="texto" Text="Plan" style="margin-right: 100%;"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownStyle">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-1">
                        <p class="invisible">columna</p>
                    </div>
                </div>
                <div class="form-row" style="margin-top: 2%; margin-left:7%">
                    <div class="col-2">
                        <asp:Label ID="Label9" runat="server" CssClass="texto" Text="Edad Mín"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownStyle">
                            <asp:ListItem>6 Meses</asp:ListItem>
                            <asp:ListItem>5 Años</asp:ListItem>
                            <asp:ListItem>18 Años</asp:ListItem>
                            <asp:ListItem>21 Años</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-2">
                        <asp:Label ID="Label5" runat="server" CssClass="texto" Text="Edad Máx Toma"></asp:Label>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdownStyle">
                             <asp:ListItem>55 Años</asp:ListItem>
                             <asp:ListItem>65 Años</asp:ListItem>
                             <asp:ListItem>70 Años</asp:ListItem>
                         </asp:DropDownList>
                    </div>
                    <div class="col-2">
                        <asp:Label ID="Label6" runat="server" CssClass="texto" Text="Edad Máx Renova"></asp:Label>
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdownStyle">
                            <asp:ListItem>21 Años</asp:ListItem>
                            <asp:ListItem>65 Años</asp:ListItem>
                            <asp:ListItem>70 Años</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-2">
                        <asp:Label ID="Label7" runat="server" CssClass="texto" Text="Aplicar a"></asp:Label>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropdownStyle">
                            <asp:ListItem>Conyugue</asp:ListItem>
                            <asp:ListItem>Padre</asp:ListItem>
                            <asp:ListItem>Madre</asp:ListItem>
                            <asp:ListItem>Hijo</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-2">
                        <asp:Label ID="Label8" runat="server" CssClass="texto" Text="Valor $"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    </div>
                    <div class="col-2">
                        <p class="invisible">columna</p>
                    </div>
                </div>
                <div class="form-row">
                        <p class="invisible">fila</p>
                </div>
                <hr />
                <div class="form-row" style="margin-left: 40%;">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" OnClick="LinkButton1_Click"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
