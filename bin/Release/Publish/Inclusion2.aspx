<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inclusion2.aspx.cs" Inherits="Affis.Inclusion2" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style1 {
            width: 25%;
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
        .auto-style2 {
            width: 100%;
            margin-top: 0px;
        }

        .auto-style3 {
            height: 63px;
            width: 100%;
        }

        .auto-style4 {
            width: 100%;
        }

        .dropdown-content {
            border: none;
            font-family: Arial;
            font-size: 10px;
            width: 100%;
            background-color: white;                        
        }
        
        .leafNode {
            font-size: 14px;
            font-weight: normal;
            color: gray;
        }

        .auto-style9 {
            width: 50%;
        }

        .auto-style10 {
            width: 240px;
        }
        .cajagrande {
            border-color: lightgray;
            border-radius: 6px;
            width: 100%;
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
            width: 30%;
            
        }
        .subtitulo {
            font-family: Arial;
            font-size: medium;
            font-weight: normal;
            text-align: left;
            color: white;
        }
        .auto-style11 {
            width: 59%;
        }
        .auto-style13 {
            width: 199px;
        }
        .auto-style15 {
            width: 41px;
        }
        .auto-style16 {
            width: 46px;
        }
        </style>
</head>
<body>
    <form id="form12" runat="server">
        <div style="background-color:gray;" class="auto-style3">
            <asp:Image ID="Image12" runat="server" ImageUrl="~/Sin título-1.png" Height="75" />                                                 
        </div>
        <div style="background-color:gray">
             <asp:Label ID="Label1" runat="server" Text="TOMADOR PRINCIPAL" Font-Bold="True" ForeColor="White" CssClass="subtitulo"></asp:Label>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
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
                    
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server"  CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="cajagrande" ></asp:TextBox>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style9">
                    <asp:TextBox  id="Text3" placeholder="CEDULA" type="text" runat="server" class="cajagrande" /></td>
                            <td><input id="Text1" class="cajagrande" placeholder="DIRECCION" type="text" runat="server" /></td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style9">
                    <asp:TextBox id="Text2" placeholder="EMAIL" type="text" runat="server" class="cajagrande"/></td>
                            <td><input id="cargo" class="cajagrande" placeholder="CARGO" type="text" runat="server"/></td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style9">
                    <asp:TextBox id="Text6" class="cajagrande" placeholder="NOMBRE COMPLETO" type="text" runat="server" /></td>
                            <td><asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-content">
                        <asp:ListItem Value="null">GENERO</asp:ListItem>
                        <asp:ListItem>MASCULINO</asp:ListItem>
                        <asp:ListItem>FEMENINO</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style9">
                    <asp:TextBox id="Text7" class="cajagrande" placeholder="TELEFONO CELULAR" type="text" runat="server" /></td>
                            <td><asp:TextBox id="Text8" class="cajagrande" placeholder="TELEFONO DOMICILIO" type="text" runat="server" /></td>
                            
                        </tr>
                    </table>
                    <table style="width:100%;">
                        <tr>
                            <td class="texto">INICIO VIGENCIA&nbsp;&nbsp;</td>
                            <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList5" runat="server" datasourceid="SqlDataSource4" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource2" DataTextField="MES" DataValueField="MES" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList7" runat="server" datasourceid="SqlDataSource5" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="texto">FECHA EFECTIVA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList8" runat="server" datasourceid="SqlDataSource6" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource2" DataTextField="MES" DataValueField="MES" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList10" runat="server" datasourceid="SqlDataSource7" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="texto">FECHA NACIMIENTO <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style10"> <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="MES" DataValueField="MES" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style13">
                                <asp:Label ID="Label5" runat="server" CssClass="texto" Text="¿El tomador es un asegurado?"></asp:Label>
                            </td>
                            <td class="auto-style16">
                                <asp:Button ID="Button5" runat="server" Text="SI" CssClass="button" Width="100%" OnClick="Button5_Click"/>
                            </td>
                            <td class="auto-style15">
                                <asp:Button ID="Button6" runat="server" Text="NO" CssClass="button" Width="100%"/>
                            </td>
                            
                        </tr>
                        
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <br />
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTRAR" CssClass="button"/>
                    <asp:Button ID="Button3" runat="server"  Text="SRI" OnClick="Button3_Click" CssClass="button"/>
                    <asp:Button ID="Button4" runat="server"  Text="CEDULA" OnClick="Button4_Click" CssClass="button"/>
                    <br />
                    <br />
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    </form>
</body>
</html>
