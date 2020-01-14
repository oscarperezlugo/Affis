﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo.aspx.cs" Inherits="Affis.Reemplazo" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style1 {
            font: Arial;
            width: 250px;
        }
        .auto-style2 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style3 {
            height: 63px;
            width: 100%;
        }
        .auto-style4 {
            width: 778px;
        }
        .auto-style5 {
            width: 100%;
            height: 22px;
        }
        .cajagrande {
            border-color: lightgray;
            border-radius: 6px;
            width: 100%;
        }
        .button {
            background-color: gray;
            border-radius: 30px;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: medium;
            font-family: Arial;
            font-weight: bold;
            width: 100%;
        }
        .texto {
            font-family: Arial;
            font-size: small;
            font-weight: normal;
            text-align: left;
            color: gray;
        }
        .treeNode
        {
            color:gray;
            font-family: Arial;
            font-weight: normal;
            font-size: 14px;
        }
        .rootNode {
            color: black;
            font-family: Arial;
            font-weight: bold;
            font-size: 18px;
        }

        .subtitulo {
            font-family: Arial;
            font-size: medium;
            font-weight: normal;
            text-align: left;
            color: white;
        }
        .auto-style6 {
            width: 618px;
        }
        .auto-style7 {
            width: 45%;
        }
        </style>
</head>
<body>
    <form id="form12" runat="server">
        <div style="background-color:gray;" class="auto-style3">
            <asp:Image ID="Image12" runat="server" ImageUrl="~/Sin título-1.png" Height="75" />                                                 
        </div>
        <div style="background-color:gray" class="auto-style5">
             <asp:Label ID="Label1" runat="server" Text="TOMADOR PRINCIPAL" Font-Bold="True" ForeColor="White" CssClass="subtitulo" ></asp:Label>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
                    <br />
                    <asp:Label ID="Label2" runat="server" CssClass="texto"></asp:Label>
                    <asp:TreeView ID="TreeView2" runat="server"  ShowExpandCollapse="False" NodeStyle-CssClass="treeNode"  RootNodeStyle-CssClass="rootNode" LeafNodeStyle-CssClass="leafNode" >
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <LeafNodeStyle CssClass="leafNode" />
                        <Nodes>
                            <asp:TreeNode SelectAction="None" Text="WSM" Value="WSM" >
                                <asp:TreeNode SelectAction="None" Text="EMPRESA" Value="EMPRESA">
                                    <asp:TreeNode NavigateUrl="~/AperturaEmpresa.aspx" Text="APERTURA" Value="APERTURA" SelectAction="Expand"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode Text="VENTAS" Value="VENTAS">
                                    <asp:TreeNode Text="INCLUSION" Value="INCLUSION" NavigateUrl="~/Inclusion.aspx"></asp:TreeNode>
                                    <asp:TreeNode Text="ADICION" Value="ADICION" NavigateUrl="~/Adicion.aspx"></asp:TreeNode>
                                    <asp:TreeNode Text="REEMPLAZO" Value="REEMPLAZO" NavigateUrl="~/Reemplazo.aspx"></asp:TreeNode>
                                </asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode SelectAction="None" Text="BANCA SEGUROS" Value="BANCA SEGUROS">
                                <asp:TreeNode SelectAction="None" Text="EMPRESA" Value="EMPRESA">
                                    <asp:TreeNode NavigateUrl="~/AperturaEmpresa.aspx" Text="APERTURA" Value="APERTURA"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode SelectAction="None" Text="VENTAS" Value="VENTAS">
                                    <asp:TreeNode Text="GESTION" Value="GESTION" NavigateUrl="~/Inclusion.aspx"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Inclusion2.aspx" Text="INCLUSION" Value="INCLUSION"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode SelectAction="None" Text="COBRANZA" Value="COBRANZA">
                                    <asp:TreeNode Text="GESTION" Value="GESTION" NavigateUrl="~/Cobranzas.aspx"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode SelectAction="None" Text="RECLAMOS" Value="RECLAMOS">
                                    <asp:TreeNode Text="CASOS" Value="CASOS"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode SelectAction="None" Text="COMISIONES" Value="COMISIONES">
                                    <asp:TreeNode Text="COMISION" Value="COMISION"></asp:TreeNode>
                                </asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="OPERACIONES" Value="OPERACIONES">
                                <asp:TreeNode Text="PRODUCTOS" Value="PRODUCTOS">
                                    <asp:TreeNode Text="WSM" Value="WSM" NavigateUrl="~/Productoswsm.aspx"></asp:TreeNode>
                                    <asp:TreeNode Text="BANCA SEGUROS" Value="BANCA SEGUROS" NavigateUrl="~/Productosbs.aspx"></asp:TreeNode>
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        
<NodeStyle CssClass="treeNode"></NodeStyle>
                        <RootNodeStyle CssClass="rootNode" />
                        
                    </asp:TreeView>
                </td>
                 
                <td class="auto-style4">
                    
                    
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style6">
                    
                    
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="cajagrande" placeholder="CEDULA TOMADOR PRINCIPAL"></asp:TextBox>
                    
                    
                            </td>
                           
                        </tr>
                        <tr>
                            <td class="auto-style6">
                    
                    
                    <asp:Button ID="Button1" runat="server" Text="SIGUIENTE" OnClick="Button1_Click" CssClass="button"/>
                    
                    
                            </td>
                            
                        </tr>
                     
                    </table>
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    </form>
</body>
</html>
