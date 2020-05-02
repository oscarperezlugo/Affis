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
                
                 
                <td  >
                    
                    
                    <br />
                    <br />
                                <asp:Label ID="Label6" runat="server" CssClass="textomini" Text="Cedula"></asp:Label>
                    <br />
                    
                    <asp:TextBox ID="TextBox1" placeholder="CEDULA" runat="server" class="form-control"></asp:TextBox><br />
                    <asp:Label ID="Label3" runat="server" CssClass="texto"></asp:Label>
                    <br />
                    
                    
                    <asp:LinkButton ID="Button1" runat="server" Text="REVISAR" OnClick="Button1_Click" class="btn btn-lg btn-primary"><i class="fa fa-search"></i> REVISAR</asp:LinkButton><br /><br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS]"></asp:SqlDataSource>
                    
                    
                    <asp:LinkButton ID="Button3" runat="server"  Text="SRI" OnClick="Button3_Click" class="btn btn-secondary"><i class="fa fa-search"></i> SRI</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="Button4" runat="server"  Text="RCGE" OnClick="Button4_Click" class="btn btn-secondary"><i class="fa fa-search"></i> R.CIVIL</asp:LinkButton>
                    <br />
                    <br />
                    &nbsp;<br /><br />
                    
                    <%--<div style="overflow-x: scroll">--%>
                    <div>
                    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [CEDULA], [NOMBRE], [FECHANAC], [GENERO] FROM [ADICIONADOS]"></asp:SqlDataSource>--%>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="163%" CssClass="gridcalc"  >
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="Seleccionar" ShowSelectButton="True" />
                            <%--<asp:BoundField DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO" />--%>
                            <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                            <asp:BoundField DataField="FECHADENACIMIENTO" HeaderText="FECHA DE NACIMIENTO" SortExpression="FECHANAC" DataFormatString="{0:yyyy-MM-dd}" />
                            <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                            <asp:BoundField DataField="GENERO" HeaderText="GENERO" SortExpression="GENERO" />
                            <%--<asp:BoundField DataField="TELEFONODOMICILIO" HeaderText="TELEFONO DOMICILIO" SortExpression="TELEFONODOMICILIO" />--%>
                            <%--<asp:BoundField DataField="TELEFONOCELULAR" HeaderText="TELEFONO CELULAR" SortExpression="TELEFONOCELULAR" />--%>
                            <%--<asp:BoundField DataField="TELEFONOEMPRESA" HeaderText="TELEFONO EMPRESA" SortExpression="TELEFONOEMPRESA" />--%>
<%--                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                            <asp:BoundField DataField="DIRECCIONEMPLEADOR" HeaderText="DIRECCIÓN EMPLEADOR" SortExpression="DIRECCIONEMPLEADOR" />--%>


                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="black" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView><br /></div>
                    
                    <table>
                        <tr>
                            <td>            
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="btn btn-lg btn-primary"></asp:LinkButton>
                                <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGUIENTE" class="btn btn-lg btn-primary"><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                                <asp:LinkButton ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" class="btn btn-lg btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                            </td>
                        </tr>
                    </table>                    
                    
                    <br />
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
   
</body>
</html>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:Content>
