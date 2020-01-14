<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productoswsm.aspx.cs" Inherits="Affis.Productoswsm" MasterPageFile="~/Site.Master" %>

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
                
                 
                <td >
                    
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="gridcalc" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" >
                        <Columns>
                            <asp:BoundField DataField="Código" HeaderText="Código" SortExpression="Código" />
                            <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                            <asp:BoundField DataField="Plan" HeaderText="Plan" SortExpression="Plan" />
                            <asp:BoundField DataField="Edad_mínima" HeaderText="Edad_mínima" SortExpression="Edad_mínima" />
                            <asp:BoundField DataField="Edad_máxima" HeaderText="Edad_máxima" SortExpression="Edad_máxima" />
                            <asp:BoundField DataField="Edad_máxima_renova" HeaderText="Edad_máxima_renova" SortExpression="Edad_máxima_renova" />
                            <asp:BoundField DataField="Aplica_a" HeaderText="Aplica_a" SortExpression="Aplica_a" />
                            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                            <asp:BoundField DataField="Cobertura" HeaderText="Cobertura" SortExpression="Cobertura" />
                            <asp:BoundField DataField="Causa" HeaderText="Causa" SortExpression="Causa" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Código], [Producto], [Plan], [Edad mínima] AS Edad_mínima, [Edad máxima] AS Edad_máxima, [Edad máxima renova] AS Edad_máxima_renova, [Aplica a] AS Aplica_a, [Valor], [Cobertura], [Causa] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [RELACION], [COSTO] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR)">
                        <SelectParameters>
                            <asp:SessionParameter Name="TOMADOR" SessionField="reemplazo" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                    
                    <asp:Button ID="Button1" runat="server" Text="SIGUIENTE" CssClass="button" OnClick="Button1_Click" />
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
