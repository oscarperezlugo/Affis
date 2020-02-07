<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioProceso.aspx.cs" Inherits="Affis.InicioProceso" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label12" runat="server" CssClass="treeNode" Text="INCLUSION"></asp:Label>
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
                
                 
                <td class="auto-style2" >
                    
                    
                    <br />
                    
                    
                    <asp:TextBox ID="TextBox1" placeholder="CEDULA" runat="server" class="form-control"></asp:TextBox><br />
                    <asp:Label ID="Label3" runat="server" CssClass="texto"></asp:Label>
                    <br />
                    
                    
                    <asp:Button ID="Button1" runat="server" Text="REVISAR" OnClick="Button1_Click" class="btn btn-lg btn-primary"/><br /><br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS]"></asp:SqlDataSource>
                    
                    
                    <asp:Button ID="Button3" runat="server"  Text="SRI" OnClick="Button3_Click" class="btn btn-secondary"/>
                    &nbsp;<asp:Button ID="Button4" runat="server"  Text="RCGE" OnClick="Button4_Click" class="btn btn-secondary"/>
                    <br />
                    <br />
                    &nbsp;<br /><br />
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [CEDULA], [NOMBRE], [FECHANAC], [GENERO] FROM [ADICIONADOS]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" CssClass="gridcalc" >
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="Confirmar" ShowSelectButton="True" />
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
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGUIENTE" class="btn btn-lg btn-primary"/>
                    
                    
                &nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" class="btn btn-lg btn-danger"/>
                    
                    
                    <br />
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
   
</body>
</html>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
        <%: Scripts.Render("~/bundles/modernizr") %>
    <style type="text/css">
        .auto-style2 {
            width: 465px;
        }
    </style>
</asp:Content>
