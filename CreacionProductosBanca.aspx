<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreacionProductosBanca.aspx.cs" Inherits="Affis.CreacionProductosBanca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label12" runat="server" CssClass="treeNode" Text="CREACION PRODUCTOS BANCA"></asp:Label>
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" CssClass="texto" Text="Codigo"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" CssClass="texto" Text="Producto"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="125px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="125px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" CssClass="texto" Text="Plan"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" CssClass="texto" Text="Edad Minima"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" CssClass="texto" Text="Edad Maxima Toma"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" CssClass="texto" Text="Edad Maxima Renova"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" CssClass="texto" Text="Aplicar a:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" CssClass="texto" Text="Valor $"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-content">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                </asp:DropDownList>
             </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown-content">
                    <asp:ListItem>6 Meses</asp:ListItem>
                    <asp:ListItem>5 Años</asp:ListItem>
                    <asp:ListItem>18 Años</asp:ListItem>
                    <asp:ListItem>21 Años</asp:ListItem>
                </asp:DropDownList>
             </td>
             <td>
                 <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown-content">
                     <asp:ListItem>55 Años</asp:ListItem>
                     <asp:ListItem>65 Años</asp:ListItem>
                     <asp:ListItem>70 Años</asp:ListItem>
                 </asp:DropDownList>
             </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropdown-content">
                    <asp:ListItem>21 Años</asp:ListItem>
                    <asp:ListItem>65 Años</asp:ListItem>
                    <asp:ListItem>70 Años</asp:ListItem>
                </asp:DropDownList>
             </td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdown-content">
                    <asp:ListItem>Conyugue</asp:ListItem>
                    <asp:ListItem>Padre</asp:ListItem>
                    <asp:ListItem>Madre</asp:ListItem>
                    <asp:ListItem>Hijo</asp:ListItem>
                </asp:DropDownList>
             </td>
             <td>
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="125px"></asp:TextBox>
             </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
            </td>
           
        </tr>
        </table>
</asp:Content>
