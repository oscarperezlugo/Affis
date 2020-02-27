<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Asistencia.aspx.cs" Inherits="Affis.Asistencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 53px;
        }
        .auto-style4 {
            width: 94%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="REGISTRO ASISTENCIA"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" CssClass="leafNode" Text="Ejecutivo"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" CssClass="leafNode" Text="Año/Mes"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" CssClass="leafNode" Text="Dias Laborados"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="NOMBRE" CssClass="btn btn-secondary dropdown-toggle">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="AÑO" DataValueField="AÑO" CssClass="btn btn-secondary dropdown-toggle">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$] ORDER BY [AÑO] DESC"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="MES" DataValueField="MES" CssClass="btn btn-secondary dropdown-toggle">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox6" runat="server" class="form-control" Placeholder="Dias Laborados"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                    <asp:LinkButton class="button" ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-success"  ><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    &nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" CssClass="btn btn-danger"/>
                    
                    
                    
                    </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
