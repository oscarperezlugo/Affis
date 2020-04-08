<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reclamos2.aspx.cs" Inherits="Affis.Reclamos2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 52px;
        }
        .auto-style3 {
            height: 86px;
            width: 33%;
        }
        .auto-style4 {
            width: 33%;
        }
        .auto-style5 {
            height: 86px;
            width: 33%;
        }
        .auto-style6 {
            height: 52px;
            width: 33%;
        }
        .auto-style7 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:80%;">
        <tr>
            <td class="auto-style4" >
    
        
        <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="RECLAMO"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                                <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Cedula de Identidad"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="CEDULA" Width="90%"></asp:TextBox>
                                </td>
            <td class="auto-style3"><asp:Label ID="Label1" runat="server" CssClass="textomini" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="NOMBRE" Width="90%"></asp:TextBox></td>
            <td class="auto-style3"><asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Caso NRO."></asp:Label>
                    <br />
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                                <asp:Label ID="Label12" runat="server" CssClass="textomini" Text="Relacion"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                        <asp:ListItem>RELACION</asp:ListItem>
                        <asp:ListItem Value="TOMADOR">Tomador</asp:ListItem>
                        <asp:ListItem Value="CONYUGUE">Cónyuge</asp:ListItem>
                        <asp:ListItem Value="HIJO">Hijo</asp:ListItem>
                        <asp:ListItem Value="HERMANO">Hermano</asp:ListItem>
                        <asp:ListItem Value="PROGENITOR">Progenitor</asp:ListItem>
                        <asp:ListItem Value="PRIMO">Primo</asp:ListItem>
                        <asp:ListItem Value="SOBRINO">Sobrino</asp:ListItem>
                        <asp:ListItem Value="HERMANO">Hermano</asp:ListItem>
                        <asp:ListItem Value="NIETO">Nieto</asp:ListItem>
                        <asp:ListItem Value="CUÑADO">Cuñado</asp:ListItem>
                        <asp:ListItem Value="SUEGRO">Suegro</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            <td class="auto-style2"><asp:Label ID="Label17" runat="server" CssClass="textomini" Text="Asegurado"></asp:Label>
                    <br />
                <asp:DropDownList ID="DropDownList12" runat="server" CssClass="btn btn-secondary dropdown-toggle" DataSourceID="SqlDataSource1" DataTextField="NOMBRESCOMPLETOS" DataValueField="NOMBRESCOMPLETOS">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR)">
                    <SelectParameters>
                        <asp:SessionParameter Name="TOMADOR" SessionField="caso" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style2"><asp:Label ID="Label9" runat="server" CssClass="textomini" Text="FECHA INICIO"></asp:Label>
                    <br />
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Cobertuura<br />
                    <asp:DropDownList ID="DropDownList8" runat="server"   CssClass="btn btn-secondary dropdown-toggle">
                        <asp:ListItem>Producto</asp:ListItem>
                        <asp:ListItem>Muerte accidental y desmembración accidental</asp:ListItem>
                        <asp:ListItem>Renta diaria por hospitalización</asp:ListItem>
                        <asp:ListItem>Beca educativa</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            
        </tr>
        <tr>
            <td class="auto-style4">
                                <asp:Label ID="Label13" runat="server" CssClass="textomini" Text="Causa de Hospitalizacion"></asp:Label>
                    <br />
                <asp:DropDownList ID="DropDownList9" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                    <asp:ListItem>Causa</asp:ListItem>
                    <asp:ListItem>ACCIDENTE</asp:ListItem>
                    <asp:ListItem>HOSPITALIZACION</asp:ListItem>
                </asp:DropDownList>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style4">
                                <asp:Label ID="Label16" runat="server" CssClass="textomini" Text="Casa de Salud"></asp:Label>
                    <br />
                <asp:DropDownList ID="DropDownList10" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                    <asp:ListItem>CASA</asp:ListItem>
                    <asp:ListItem>PUBLICA</asp:ListItem>
                    <asp:ListItem>PRIVADA</asp:ListItem>
                </asp:DropDownList>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style4">
                                <asp:Label ID="Label15" runat="server" CssClass="textomini" Text="Plan"></asp:Label>
                    <br />
                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                </asp:DropDownList>
            </td>
            
        </tr>
        
    </table>
    <table style="width: 80%;">
        <tr>
            <td class="auto-style7">
                                <asp:Label ID="Label18" runat="server" CssClass="textomini" Text="Diagnostico"></asp:Label>
                                
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="90%" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                
            </td>
            <td class="auto-style7">
                                <asp:Label ID="Label19" runat="server" CssClass="textomini" Text="Observaciones"></asp:Label>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="90%" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                </td>
            
        </tr>
        
        
    </table>
    </br>
    <table style="width: 40%">
        <tr>
            <td>
                    <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    
                    
                            &nbsp;<asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    
                    
                </td>
        </tr>
    </table>
</asp:Content>
