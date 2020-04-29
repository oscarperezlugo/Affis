<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaCedula.aspx.cs" Inherits="Affis.ConsultaCedula" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="BASE DE DATOS"></asp:Label>
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
                    
                    
                    <br />
                    
                    <br />
                                <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Numero Cedula"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox><br /><br />
                    
                    
                    <asp:LinkButton ID="Button1" runat="server" Text="SELECCIONAR" OnClick="Button1_Click" CssClass="btn btn-primary"><i class="fa fa-check"></i> SELECCIONAR</asp:LinkButton><br /><br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS]"></asp:SqlDataSource>
                    
                    
                    <asp:LinkButton ID="Button3" runat="server"  Text="SRI" OnClick="Button3_Click" CssClass="btn btn-secondary"><i class="fa fa-search"></i> SRI</asp:LinkButton>&nbsp;<asp:LinkButton ID="Button4" runat="server"  Text="RCGE" OnClick="Button4_Click" CssClass="btn btn-secondary"><i class="fa fa-search"></i> RCGE</asp:LinkButton><br /><br />
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [CEDULA], [NOMBRE], [FECHANAC], [GENERO] FROM [ADICIONADOS]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" >
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="Seleccionar" ShowSelectButton="True" />
                            <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                            <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                            <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" SortExpression="FECHANAC" />
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
                    </asp:GridView><br />
                    <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGUIENTE" CssClass="btn btn-primary"><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
   
</body>
</html>
</asp:Content>