<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Certificado.aspx.cs" Inherits="Affis.Certificado" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="CREACION CERTIFICADO"></asp:Label>
    <br />
    <br />
    <!DOCTYPE html>

<html>
<head >
    <title></title>
    
</head>
<body>
    
        
                    
                    
                    <table >
                        <tr>
                            <td class="auto-style2">
                    
                    
                                <asp:Label ID="Label3" runat="server" CssClass="texto"></asp:Label>
                            </td>
                             <td class="auto-style2">
                    
                    
                                <asp:Label ID="Label4" runat="server" CssClass="texto"></asp:Label>
                            </td>
                            <td>
                    
                    
                    <asp:Label ID="Label2" runat="server" CssClass="certificado"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="text-danger" DataSourceID="SqlDataSource2" DataTextField="Numero" DataValueField="Numero" Font-Bold="True" Font-Size="Large">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Numero] FROM [Certificados] WHERE (([Ejecutivo] = @Ejecutivo) AND ([Accion] = @Accion))">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Ejecutivo" SessionField="bienvenido" Type="String" />
                                        <asp:Parameter DefaultValue="Entregado" Name="Accion" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            
                        </tr>
                       
                        
                    </table>
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE], [CEDULA] FROM [ADICIONADOS] WHERE ([RELACION] = @RELACION)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                    
                    <br />
                    
                    
                    <table >
                        <tr>
                            <td>
                    
                    
                            &nbsp;</td>
                            <td>
                    <asp:LinkButton ID="Button2" runat="server"  OnClick="Button2_Click" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    
                    
                            &nbsp;<asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    
                    
                            &nbsp;<asp:LinkButton ID="Button4" runat="server"  OnClick="Button4_Click" CssClass="btn btn-primary"><i class="fa fa-check"></i> FINALIZAR</asp:LinkButton>
                    
                    
                            </td>
                            
                        </tr>
                       
                    </table>
                    
                    
               
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style2 {
        width: 150px;
    }
</style>
</asp:Content>

