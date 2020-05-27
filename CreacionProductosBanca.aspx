<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreacionProductosBanca.aspx.cs" Inherits="Affis.CreacionProductosBanca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .colum2, .row3{
            padding-top:2%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h3><b>CREACIÓN PRODUCTOS BANCA</b></h3>
                    </div>
                    <div class="col-2">
                        <p class=" invisible">columna relleno</p>
                    </div>
                    <div class="col-2">
                        <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                    </div>
                 </div>
              </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-5">
                         <asp:Label ID="Label10" runat="server" CssClass="texto" Text="Código"></asp:Label>
                         <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>      
                    </div>
                    <div class="col-7">
                        <asp:Label ID="Label11" runat="server" CssClass="texto" Text="Producto"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    </div>
                </div>
                <div class="colum2">
                    <div class="form-row">
                        <div class="col-2">
                            <asp:Label ID="Label3" runat="server" CssClass="texto" Text="Plan"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownStyle" Width="100%">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <br />
                        <div class="col-2">
                            <asp:Label ID="Label9" runat="server" CssClass="texto" Text="Edad Mínima"></asp:Label>
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownStyle" Width="100%">
                                <asp:ListItem>6 Meses</asp:ListItem>
                                <asp:ListItem>5 Años</asp:ListItem>
                                <asp:ListItem>18 Años</asp:ListItem>
                                <asp:ListItem>21 Años</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <br />
                        <div class="col-2">
                            <asp:Label ID="Label5" runat="server" CssClass="texto" Text="Edad Máx. Toma"></asp:Label>
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdownStyle" Width="100%">
                                 <asp:ListItem>55 Años</asp:ListItem>
                                 <asp:ListItem>65 Años</asp:ListItem>
                                 <asp:ListItem>70 Años</asp:ListItem>
                             </asp:DropDownList>
                        </div>
                        <br />
                        <div class="col-3">
                            <asp:Label ID="Label6" runat="server" CssClass="texto" Text="Edad Máx. Renova"></asp:Label>
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropdownStyle" Width="100%">
                                <asp:ListItem>21 Años</asp:ListItem>
                                <asp:ListItem>65 Años</asp:ListItem>
                                <asp:ListItem>70 Años</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <br />
                        <div class="col-3">
                            <asp:Label ID="Label7" runat="server" CssClass="texto" Text="Aplicar a"></asp:Label>
                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdownStyle" Width="100%">
                                <asp:ListItem>Conyugue</asp:ListItem>
                                <asp:ListItem>Padre</asp:ListItem>
                                <asp:ListItem>Madre</asp:ListItem>
                                <asp:ListItem>Hijo</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row3">
                    <div class="form-row">
                        <div class="col-7">
                            <asp:Label ID="Label8" runat="server" CssClass="texto" Text="Valor $"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                        </div>
                        <div class="col-5">
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="buttonColor" OnClick="LinkButton1_Click" style="margin-top: 6%; margin-left: 20%;"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                        </div>
                    </div>
                    <hr />
                    <div class="form-row">
                        <div class="col-12" style="margin-left: 45%;">
                            <asp:LinkButton ID="BtnCancelar" runat="server" OnClick="BtnCancelar_Click" Text="CANCELAR" class="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>