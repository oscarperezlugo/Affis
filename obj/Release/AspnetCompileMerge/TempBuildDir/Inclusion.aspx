﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inclusion.aspx.cs" Inherits="Affis.Inclusion" MasterPageFile="~/Site.Master"  %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label12" runat="server" CssClass="treeNode" Text="INCLUSION"></asp:Label>
    <br />
    <!DOCTYPE html>

<html>
<head >
    <title></title>
    
</head>
<body>
    
        <table >
            <tr>
              
                 
                <td >
                    <br />
                                <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Nombre Empresa"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="NOMBRECOMERCIAL" DataValueField="NOMBRECOMERCIAL" CssClass="cajagrande">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:LinKButton ID="Button1" runat="server" Text="SELECCIONAR" OnClick="Button1_Click" class="btn btn-primary"><i class="fa fa-check"></i> SELECCIONAR</asp:LinKButton>
                    <br />
                    <br/>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS]"></asp:SqlDataSource>
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL], [DIRECCION], [MEDIO DE COBRO] AS MEDIO_DE_COBRO, [TELEFONO 1] AS TELEFONO_1 FROM [EMPRESAS]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="139%" CssClass="gridcalc">
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="Seleccionar" ShowSelectButton="True" />
                            <asp:BoundField DataField="NOMBRECOMERCIAL" HeaderText="NOMBRE COMERCIAL" SortExpression="NOMBRECOMERCIAL" />
                            <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                            <asp:BoundField DataField="MEDIODECOBRO" HeaderText="MEDIO DE COBRO" SortExpression="MEDIO_DE_COBRO" />
                            <asp:BoundField DataField="TELEFONO2" HeaderText="TELEFONO" SortExpression="TELEFONO_1" />
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
                    <br />

                     <table>
                        <tr>
                            <td>                                      
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="btn btn-primary"></asp:LinkButton>
                                <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGUIENTE"  CssClass="btn btn-primary"><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                                <asp:LinkButton ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" CssClass="btn btn-danger"><i class="fa fa-plus-circle"></i> CANCELAR</asp:LinkButton>
                            </td>
                        </tr>
                    </table>                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
