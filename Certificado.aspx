<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Certificado.aspx.cs" Inherits="Affis.Certificado" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    
</head>
<body>
    
        
                    
                    
                    <table >
                        <tr>
                            <td>
                    
                    
                                <asp:Label ID="Label3" runat="server" CssClass="texto"></asp:Label>
                            </td>
                             <td>
                    
                    
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
                    <asp:Button ID="Button1" runat="server" Text="GENERAR" OnClick="Button1_Click" CssClass="button"/>
                    
                    
                            </td>
                            <td>
                    <asp:Button ID="Button2" runat="server" Text="GUARDAR" OnClick="Button2_Click" CssClass="button"/>
                    
                    
                            </td>
                            
                        </tr>
                       
                    </table>
                    
                    
               
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
