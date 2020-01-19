<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productoswsm.aspx.cs" Inherits="Affis.Productoswsm" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html>
<head >
    <title></title>
    
</head>
<body>
    
        <table >
            <tr>
                
                 
                <td >
                    
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="gridcalc" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" >
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                            <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                            <asp:BoundField DataField="Plano" HeaderText="Plano" SortExpression="Plano" />
                            <asp:BoundField DataField="Edadminima" HeaderText="Edadminima" SortExpression="Edadminima" />
                            <asp:BoundField DataField="Edadmaxima" HeaderText="Edadmaxima" SortExpression="Edadmaxima" />
                            <asp:BoundField DataField="Edadmaximarenova" HeaderText="Edadmaximarenova" SortExpression="Edadmaximarenova" />
                            <asp:BoundField DataField="Aplicaa" HeaderText="Aplicaa" SortExpression="Aplicaa" />
                            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Codigo], [Producto], [Plano], [Edadminima], [Edadmaxima], [Edadmaximarenova], [Aplicaa], [Valor] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    
                    
                    <asp:Button ID="Button1" runat="server" Text="SIGUIENTE" CssClass="button" OnClick="Button1_Click" />
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
