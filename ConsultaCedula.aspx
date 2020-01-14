<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaCedula.aspx.cs" Inherits="Affis.ConsultaCedula" MasterPageFile="~/Site.Master" %>

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
                    
                    
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="cajagrande"></asp:TextBox>
                    
                    
                    <asp:Button ID="Button1" runat="server" Text="FILTRAR" OnClick="Button1_Click" CssClass="button"/>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS]"></asp:SqlDataSource>
                    
                    
                    <asp:Button ID="Button3" runat="server"  Text="SRI" OnClick="Button3_Click" CssClass="button"/>
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [CEDULA], [NOMBRE], [FECHANAC], [GENERO] FROM [ADICIONADOS]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="white" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" >
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="Seleccionar" ShowSelectButton="True" />
                            <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                            <asp:BoundField DataField="FECHANAC" HeaderText="FECHANAC" SortExpression="FECHANAC" />
                            <asp:BoundField DataField="GENERO" HeaderText="GENERO" SortExpression="GENERO" />
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
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGUIENTE" CssClass="button"/>
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
   
</body>
</html>
</asp:Content>