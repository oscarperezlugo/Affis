<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beneficiarios.aspx.cs" Inherits="Affis.Beneficiarios" %>

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
        .treeNode
        {
            color:gray;
            font-family: Arial;
            font-weight: bold;
            font-size: 14px;
        }
        .rootNode
        {
            color:black;
            font-family: Arial;
            font-weight: bold;
            font-size: 18px;
            
        }
        .gridcalc {
            border-color: white;
            font-family: Arial;
            font-weight: bold;
            
        }
        .leafNode
        {
            font-size: 14px;
            font-weight: normal;
            color: gray;
        }
        .auto-style2 {
            width: 100%;
            margin-top: 0px;
        }
        .caja {
            border-color: lightgray;
            border-radius: 6px;
            width: 30%;
            
            
        }
        

        .cajagrande {
            border-color: lightgray;
            border-radius: 6px;
            width: 100%;
        }
        .auto-style3 {
            height: 63px;
            width: 100%;
        }
        .auto-style4 {
            width: 778px;
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
            width: 30%;
            
        }
        .dropdown-content {
            border: none;
            font-family: Arial;
            font-size: 10px;
            width: 15%;
            background-color: white;                        
        }
        .dropdown-contentG {
            border: none;
            font-family: Arial;
            font-size: 10px;
            width: 100%;
            background-color: white;                        
        }
        .subtitulo {
            font-family: Arial;
            font-size: medium;
            font-weight: normal;
            text-align: left;
            color: white;
        }
         .certificado {
            font-family: Arial;
            font-size: larger;
            font-weight: bolder;
            text-align: left;
            color: red;
        }
        .texto {
            font-family: Arial;
            font-size: small;
            font-weight: normal;
            text-align: left;
            color: gray;
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
        .auto-style5 {
            width: 87%;
        }
        .auto-style8 {
            width: 203px;
        }
        .auto-style10 {
            width: 201px;
        }
        .auto-style11 {
            width: 241px;
        }
        </style>
</head>
<body>
    <form id="form12" runat="server">
        <div style="background-color:gray;" class="auto-style3">
            <asp:Image ID="Image12" runat="server" ImageUrl="~/Sin título-1.png" Height="75" />                                                 
        </div>
        <div style="background-color:gray">
             <asp:Label ID="Label1" runat="server" Text="BENEFICIARIOS" class="subtitulo" ></asp:Label>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" CssClass="texto"></asp:Label>
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
                    <br />
                </td>
                 
                <td class="auto-style4">
                    <br />
                    <br />
                    
                    
                    <table style="width:100%;">
                        <tr>
                            <td>
                    
                    
                                <asp:Label ID="Label3" runat="server" CssClass="texto"></asp:Label>
                            </td>
                             <td>
                    
                    
                                <asp:Label ID="Label4" runat="server" CssClass="texto"></asp:Label>
                            </td>
                            <td>
                    
                    
                                &nbsp;</td>
                            
                        </tr>
                       
                        
                    </table>
                    
                    
                    <table style="width:100%;">
                        <tr>
                            <td class="texto">
                                NOMBRE</td>
                            <td class="texto">
                                PARENTESCO</td>
                            <td class="texto">
                                PORCENTAJE %</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    
                    
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox13" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox14" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox15" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    
                    
                    <br />
                    
                    
                    <table class="auto-style5">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                    <asp:Button ID="Button2" runat="server" Text="GUARDAR" OnClick="Button2_Click" CssClass="button"/>
                    
                    
                            </td>
                            
                        </tr>
                       
                    </table>
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    </form>
</body>
</html>
