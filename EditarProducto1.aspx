<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarProducto1.aspx.cs" Inherits="Affis.EditarProducto1" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label12" runat="server" CssClass="treeNode" Text="EDICION DE PRODUCTOS"></asp:Label>
    <br />
    <br />
    <!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>
    <br />
                                <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Codigo"></asp:Label>
                    <br />
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Codigo" DataValueField="Codigo" CssClass="dropdown-content">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Codigo] FROM [PRODUCTOS]"></asp:SqlDataSource>
            <br />
            <br />
            <table>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click"><i class="fa fa-check"></i> SELECCIONAR</asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="btn btn-primary"></asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="BtnCancelar" runat="server" OnClick="BtnCancelar_Click" Text="CANCELAR" class="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                            </td>
                        </tr>
                    </table>

        </div>
    
</body>
</html>
    </asp:Content>
