<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="caso.aspx.cs" Inherits="Affis.caso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>
    
        
        <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="CASO"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                                <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Cedula de Identidad"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="CEDULA" Width="90%"></asp:TextBox>
                    </td>
            <td><asp:Label ID="Label1" runat="server" CssClass="textomini" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="NOMBRE" Width="90%"></asp:TextBox></td>
            <td>
                    <br />
                    </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" CssClass="textomini" Text="Telefono Numero"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="TELEFONO" Width="90%"></asp:TextBox></td>
            <td><asp:Label ID="Label3" runat="server" CssClass="textomini" Text="Direccion Empleador"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="DIRECCION" Width="90%"></asp:TextBox></td>
            <td><asp:Label ID="Label11" runat="server" CssClass="textomini" Text="Fecha Inicio"></asp:Label>
                    <br />
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
&nbsp;<asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdown-content">
                        <asp:ListItem Value="1">ENERO</asp:ListItem>
                        <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                        <asp:ListItem Value="3">MARZO</asp:ListItem>
                        <asp:ListItem Value="4">ABRIL</asp:ListItem>
                        <asp:ListItem Value="5">MAYO</asp:ListItem>
                        <asp:ListItem Value="6">JUNIO</asp:ListItem>
                        <asp:ListItem Value="7">JULIO</asp:ListItem>
                        <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                        <asp:ListItem Value="9">SEPTIEMBRE</asp:ListItem>
                        <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                        <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                        <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Entidad Tomadora"></asp:Label>
                    <br />
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-secondary dropdown-toggle" DataSourceID="SqlDataSource1" DataTextField="NOMBRECOMERCIAL" DataValueField="NOMBRECOMERCIAL">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS]"></asp:SqlDataSource>
            </td>
            <td><asp:Label ID="Label9" runat="server" CssClass="textomini" Text="Ejecutivo Asignado"></asp:Label>
                    <br />
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn btn-secondary dropdown-toggle" DataSourceID="SqlDataSource2" DataTextField="NOMBRE" DataValueField="NOMBRE">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
            </td>
            <td>
                    <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    
                    
                            &nbsp;<asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    
                    
                </td>
        </tr>
    </table>
</asp:Content>
