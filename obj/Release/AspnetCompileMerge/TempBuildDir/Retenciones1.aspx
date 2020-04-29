<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Retenciones1.aspx.cs" Inherits="Affis.Retenciones1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 68px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
    
        
        <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="RETENCIONES"></asp:Label>
            </td>
            <td class="auto-style2">
    
        
            &nbsp;</td>
            <td class="auto-style2">                
                    <asp:Label ID="Label15" runat="server" CssClass="textomini" Text="CERTIFICADO" Font-Bold="True" ForeColor="Red"></asp:Label>                
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="CERTIFICADO" Width="90%"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style3">
                                <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Cedula De Identidad"></asp:Label>                
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Cedula De Identidad" Width="90%"></asp:TextBox>
                    </td>
            <td class="auto-style3"><asp:Label ID="Label9" runat="server" CssClass="textomini" Text="Motivo"></asp:Label>                
                    <br />
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                    <asp:ListItem>Seleccione</asp:ListItem>
                    <asp:ListItem>Voluntario</asp:ListItem>
                    <asp:ListItem>Renuncia</asp:ListItem>
                    <asp:ListItem>Impago</asp:ListItem>
                    <asp:ListItem>Edad de Terminación</asp:ListItem>
                    <asp:ListItem>Fallecido</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style3"><asp:Label ID="Label11" runat="server" CssClass="textomini" Text="Fecha Solicitud"></asp:Label>                
                    <br />
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdown-content">
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
                    <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label1" runat="server" CssClass="textomini" Text="Nombre"></asp:Label>                
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Nombre" Width="90%"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:Label ID="Label12" runat="server" CssClass="textomini" Text="Fecha Solicitud"></asp:Label>                
                    <br />
                <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SqlDataSource3" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList14" runat="server" CssClass="dropdown-content">
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
                    <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                    </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" CssClass="textomini" Text="Empresa"></asp:Label>                
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Empresa" Width="90%"></asp:TextBox> </td>
            <td><asp:Label ID="Label10" runat="server" CssClass="textomini" Text="Canal"></asp:Label>                
                    <br />
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                    <asp:ListItem>Seleccione</asp:ListItem>
                    <asp:ListItem>Telefonico</asp:ListItem>
                    <asp:ListItem>Correo</asp:ListItem>
                    <asp:ListItem>Presencial</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td><asp:Label ID="Label13" runat="server" CssClass="textomini" Text="Fecha Solicitud"></asp:Label>                
                    <br />
                <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource3" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList17" runat="server" CssClass="dropdown-content">
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
                    <asp:DropDownList ID="DropDownList18" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                    </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" CssClass="textomini" Text="Ejecutivo Asignado"></asp:Label>                
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Ejecutivo Asignado" Width="90%"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Responsable Retención"></asp:Label>                
                    <br />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="NOMBRE" CssClass="btn btn-secondary dropdown-toggle">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE] FROM [LOGIN$]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                    <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    
                    
                            &nbsp; <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    
                    
                </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
