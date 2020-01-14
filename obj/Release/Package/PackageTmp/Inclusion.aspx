<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inclusion.aspx.cs" Inherits="Affis.Inclusion" %>

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
            width: 30%;
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
            width: 30%;
            background-color: white;                        
        }
        .subtitulo {
            font-family: Arial;
            font-size: medium;
            font-weight: normal;
            text-align: left;
            color: white;
        }
        .texto {
            font-family: Arial;
            font-size: small;
            font-weight: normal;
            text-align: left;
            color: gray;
        }
        .subtitulo {
            font-family: Arial;
            font-size: medium;
            font-weight: normal;
            text-align: left;
            color: white;
        }
        </style>
</head>
<body>
    <form id="form12" runat="server">
        <div style="background-color:gray;" class="auto-style3">
            <asp:Image ID="Image12" runat="server" ImageUrl="~/Sin título-1.png" Height="75" />                                                 
        </div>
        <div style="background-color:gray">
             <asp:Label ID="Label1" runat="server" Text="SELECCIONE EMPRESA" Font-Bold="True" ForeColor="White" CssClass="subtitulo"></asp:Label>
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
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="NOMBRECOMERCIAL" DataValueField="NOMBRECOMERCIAL" CssClass="cajagrande">
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" Text="FILTRAR" OnClick="Button1_Click" class="button"/>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS]"></asp:SqlDataSource>
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL], [DIRECCION], [MEDIO DE COBRO] AS MEDIO_DE_COBRO, [TELEFONO 1] AS TELEFONO_1 FROM [EMPRESAS]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="Seleccionar" ShowSelectButton="True" />
                            <asp:BoundField DataField="NOMBRECOMERCIAL" HeaderText="NOMBRE COMERCIAL" SortExpression="NOMBRECOMERCIAL" />
                            <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                            <asp:BoundField DataField="MEDIODECOBRO" HeaderText="MEDIO DE COBRO" SortExpression="MEDIO_DE_COBRO" />
                            <asp:BoundField DataField="TELEFONO1" HeaderText="TELEFONO" SortExpression="TELEFONO_1" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="black" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGUIENTE"  CssClass="button"/>
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    </form>
</body>
</html>
