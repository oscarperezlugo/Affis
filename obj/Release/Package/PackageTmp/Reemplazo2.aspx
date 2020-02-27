<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo2.aspx.cs" Inherits="Affis.Reemplazo2"  MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label3" runat="server" CssClass="treeNode" Text="REEMPLAZO"></asp:Label>
    <br />
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
                    
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="gridcalc" Width="697px" >
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="SELECCIONAR" ShowSelectButton="True" />
                            <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRES COMPLETOS" SortExpression="NOMBRESCOMPLETOS" />
                            <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                            <asp:BoundField DataField="COSTO" HeaderText="COSTO" SortExpression="COSTO" />
                        </Columns>
                        <SelectedRowStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [COSTO] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR)">
                        <SelectParameters>
                            <asp:SessionParameter Name="TOMADOR" SessionField="cedula" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                    
                    <br />
                    
                    
                    <asp:LinkButton ID="Button1" runat="server" Text="SIGUIENTE" CssClass="btn btn-primary" OnClick="Button1_Click" ><i class="fas fa-forward"></i> SIGUIENTE</asp:LinkButton>
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
   
</body>
</html>
    </asp:Content>
