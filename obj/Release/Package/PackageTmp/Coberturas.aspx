<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coberturas.aspx.cs" Inherits="Affis.Coberturas" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <!DOCTYPE html>

<html>
<head >
    <title></title>
    
        </style>
</head>
<body>
    
        <table >
            <tr>
                
                <td >
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" ShowFooter="true"  DataSourceID="SqlDataSource6" CssClass="gridcalc" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"  >
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                            <asp:BoundField DataField="RELACION" HeaderText="RELACION" SortExpression="RELACION" />
                            <asp:BoundField DataField="COBERTURA" HeaderText="TIPO DE COBERTURA" SortExpression="COBERTURA" />
                            <asp:BoundField DataField="PLAN" HeaderText="PLAN" SortExpression="PLAN" />
                            <asp:BoundField DataField="COSTO" HeaderText="" SortExpression="COSTO" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE], [RELACION], [COBERTURA], [PLAN], [COSTO] FROM [VENTATEMP] WHERE (([FECHA] = @FECHA) AND ([FICHA] = @FICHA) AND ([TOMADOR] = @TOMADOR))">
                        <SelectParameters>
                            <asp:SessionParameter Name="FECHA" SessionField="fecha" Type="String" />
                            <asp:SessionParameter Name="FICHA" SessionField="ficha" Type="String" />
                            <asp:SessionParameter Name="TOMADOR" SessionField="cedula" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SIGUIENTE" CssClass="button" />
                    <br />
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
   
</body>
</html>
    </asp:Content>
