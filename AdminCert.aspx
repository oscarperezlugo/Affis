<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminCert.aspx.cs" Inherits="Affis.AdminCert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 406px;
        }
        .auto-style3 {
            width: 376px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" CssClass="treeNode" Text="ADMINISTRAR CERTIFICADOS"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" CssClass="texto" Text="EJECUTIVO ASIGNADO"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" CssClass="texto" Text="NUMERO"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" CssClass="texto" Text="TIPO DE ACCION"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-secondary dropdown-toggle" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="NOMBRE">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="NUMERO CERTIFICADO"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                    <asp:ListItem>Seleccione la Accion</asp:ListItem>
                    <asp:ListItem>Entregado</asp:ListItem>
                    <asp:ListItem>Devuelto</asp:ListItem>
                    <asp:ListItem>Anulado</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                    <asp:LinkButton ID="Button1" runat="server" OnClick="Button1_Click" class="button" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="Button5" runat="server" OnClick="Button5_Click" class="button" CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    
                    
                                </td>
            <td>
                <asp:Label ID="Label7" runat="server" CssClass="texto" Text="OBSERVACIONES"></asp:Label>
               <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="OBSERVACIONES"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
