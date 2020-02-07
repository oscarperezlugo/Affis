<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coberturas.aspx.cs" Inherits="Affis.Coberturas" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="COBERTURAS"></asp:Label>
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
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" ShowFooter="True"  DataSourceID="SqlDataSource6" CssClass="gridcalc" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="592px"   >
                        <Columns>
                            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" >
                            <ItemStyle Font-Size="Small" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION" >
                            <ItemStyle Font-Size="Small" />
                            </asp:BoundField>
                            <asp:BoundField DataField="COBERTURA" HeaderText="TIPO DE COBERTURA" SortExpression="COBERTURA" >
                            <ItemStyle Font-Size="Small" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PLAN" HeaderText="PLAN" SortExpression="PLAN" >
                            <ItemStyle Font-Size="Small" />
                            </asp:BoundField>
                            <asp:BoundField DataField="COSTO" HeaderText="COSTO" SortExpression="COSTO" >
                            <ItemStyle Font-Bold="True" Font-Size="Small" />
                            </asp:BoundField>

                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE], [RELACION], [COBERTURA], [PLAN], [COSTO] FROM [VENTATEMP] WHERE (([FECHA] = @FECHA) AND ([FICHA] = @FICHA) AND ([TOMADOR] = @TOMADOR))">
                        <SelectParameters>
                            <asp:SessionParameter Name="FECHA" SessionField="fecha" Type="String" />
                            <asp:SessionParameter Name="FICHA" SessionField="ficha" Type="String" />
                            <asp:SessionParameter Name="TOMADOR" SessionField="cedula" Type="String" />
                        </SelectParameters>
                        
                    </asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SIGUIENTE" CssClass="btn btn-primary" />
                    <br />
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
   
</body>
</html>
    </asp:Content>
