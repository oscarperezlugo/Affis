<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo.aspx.cs" Inherits="Affis.Reemplazo" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label12" runat="server" CssClass="treeNode" Text="REEMPLAZO"></asp:Label>
    <br />
    <br />
    <!DOCTYPE html>

<html>
<head>
    <title></title>
    
</head>
<body>
    
       
                    
                    
                    <table >
                        <tr>
                            <td >
                    
                    <br />
                                <asp:Label ID="Label6" runat="server" CssClass="textomini" Text="Cedula"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="CEDULA TOMADOR PRINCIPAL" Width="354px"></asp:TextBox>
                    
                    
                            </td>
                           
                        </tr>
                        <tr>
                            <td >
                    
                    
                                <br />
                                <br />
                    
                    
                    <asp:LinkButton ID="Button1" runat="server" Text="SIGUIENTE" OnClick="Button1_Click" CssClass="btn btn-primary"><i class="fas fa-forward"></i> SIGUIENTE</asp:LinkButton>
                    
                    
                            </td>
                            
                        </tr>
                     
                    </table>
                    
                    
           
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
                    <br />
                    
                    
           
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            border-radius: 6px;
        }
    </style>
</asp:Content>

