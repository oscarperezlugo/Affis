<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo.aspx.cs" Inherits="Affis.Reemplazo" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    
</head>
<body>
    
       
                    
                    
                    <table >
                        <tr>
                            <td >
                    
                    
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="cajagrande" placeholder="CEDULA TOMADOR PRINCIPAL"></asp:TextBox>
                    
                    
                            </td>
                           
                        </tr>
                        <tr>
                            <td >
                    
                    
                    <asp:Button ID="Button1" runat="server" Text="SIGUIENTE" OnClick="Button1_Click" CssClass="button"/>
                    
                    
                            </td>
                            
                        </tr>
                     
                    </table>
                    
                    
           
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
