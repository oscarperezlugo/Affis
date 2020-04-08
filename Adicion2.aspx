<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adicion2.aspx.cs" Inherits="Affis.Adicion2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td> 
    <asp:Label ID="Label12" runat="server" CssClass="treeNode" Text="ADICION"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td> 
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                    <asp:DropDownList ID="DropDownList8" runat="server"  Width="90%" CssClass="btn btn-secondary dropdown-toggle" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged">
                        <asp:ListItem>Producto</asp:ListItem>
                        <asp:ListItem Selected="True">Muerte accidental y desmembración accidental</asp:ListItem>
                        <asp:ListItem>Renta diaria por hospitalización</asp:ListItem>
                        <asp:ListItem>Beca educativa</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            <td>
                    <asp:DropDownList ID="DropDownList7" runat="server" CssClass="btn btn-secondary dropdown-toggle" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged"  >
                        <asp:ListItem Value="null">PLAN</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem Selected="True">B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                    <asp:LinkButton class="button" ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-success"  ><i class="fa fa-plus-circle"></i> ADICIONAR</asp:LinkButton>
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
