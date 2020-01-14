<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo2.aspx.cs" Inherits="Affis.Reemplazo2"  MasterPageFile="~/Site.Master" %>

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
                    
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="gridcalc" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" >
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="Seleccionar" ShowSelectButton="True" />
                            <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRES COMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                            <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                            <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION" />
                            <asp:BoundField DataField="COSTO" HeaderText="COSTO" SortExpression="COSTO" />
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
