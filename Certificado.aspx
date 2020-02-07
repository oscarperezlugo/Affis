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
                    <asp:Button ID="Button1" runat="server" Text="GENERAR" OnClick="Button1_Click" CssClass="btn btn-primary"/>
                    
                    
                            &nbsp;</td>
                            <td>
                    <asp:Button ID="Button2" runat="server" Text="GUARDAR" OnClick="Button2_Click" CssClass="btn btn-success"/>
                    
                    
                            &nbsp;<asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="CANCELAR" CssClass="btn btn-danger"/>
                    
                    
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

