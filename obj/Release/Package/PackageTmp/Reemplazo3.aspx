<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo3.aspx.cs" Inherits="Affis.Reemplazo3" %>

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
            font-weight: normal;
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
        .auto-style5 {
            width: 37%;
        }
        .auto-style6 {
            width: 33px;
        }
        </style>
</head>
<body>
    <form id="form12" runat="server">
        <div style="background-color:gray;" class="auto-style3">
            <asp:Image ID="Image12" runat="server" ImageUrl="~/Sin título-1.png" Height="75" />                                                 
        </div>
        <div style="background-color:gray">
             <asp:Label ID="Label1" runat="server" Text="ADICION" class="subtitulo" ></asp:Label>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" CssClass="texto"></asp:Label>
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
                    <asp:TextBox ID="TextBox1" runat="server" class="caja"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="TOMADOR PRNCIPAL CEDULA" CssClass="texto"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox id="Text3" placeholder="CEDULA" type="text" runat="server" class="caja"/><br />
                    <br />
                    <asp:TextBox id="Text6" placeholder="NOMBRE COMPLETO" type="text" runat="server" class="cajagrande"/><asp:DropDownList ID="DropDownList1" runat="server" class="dropdown-content">
                        <asp:ListItem Value="null">GENERO</asp:ListItem>
                        <asp:ListItem>MASCULINO</asp:ListItem>
                        <asp:ListItem>FEMENINO</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdown-content">
                        <asp:ListItem Value="null">RELACION</asp:ListItem>
                        <asp:ListItem>TOMADOR</asp:ListItem>
                        <asp:ListItem>CONYUGUE</asp:ListItem>
                        <asp:ListItem>HIJO</asp:ListItem>
                        <asp:ListItem>HERMANO</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="FECHA DE NACIMIENTO" CssClass="texto"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="MES" DataValueField="MES" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                    <br />
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource4" DataTextField="Producto" DataValueField="Producto" Height="25px" Width="364px" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Producto] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdown-content"  >
                        <asp:ListItem Value="null">PLAN</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="CALCULAR" CssClass="button" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<table class="auto-style5">
                        
                        <tr>
                            
                            <td class="auto-style6"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="gridcalc" ShowHeader="false" Width="10%" >
                        <Columns>
                            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                            <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" visible="false" />
                            <asp:BoundField DataField="Plan" HeaderText="Plan" SortExpression="Plan" visible="false" />
                        </Columns>
                    </asp:GridView>
                            </td>
                            <td>
                    <asp:Label ID="Label5" runat="server" CssClass="texto" Width="10%"></asp:Label>
                            </td>
                        </tr>
                       
                    </table>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Valor], [Producto], [Plan] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    <br />
                    &nbsp;&nbsp;
                    <br />
                    <asp:Button class="button" ID="Button1" runat="server" OnClick="Button1_Click" Text="REEMPLAZAR" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="FINALIZAR" CssClass="button" />
                    <br />
                    <br />
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    </form>
</body>
</html>
