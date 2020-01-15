<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo3.aspx.cs" Inherits="Affis.Reemplazo3"  MasterPageFile="~/Site.Master" %>

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
                    <asp:TextBox ID="TextBox1" runat="server" class="cajagrande"></asp:TextBox>
                    <br />
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="TOMADOR PRNCIPAL CEDULA" CssClass="texto"></asp:Label>
                    <br />

                    <asp:TextBox id="Text3" placeholder="CEDULA" type="text" runat="server" class="cajagrande"/><br />
                    <br />
                    <asp:TextBox id="Text6" placeholder="NOMBRE COMPLETO" type="text" runat="server" class="cajagrande"/><asp:DropDownList ID="DropDownList1" runat="server" class="dropdown-content">
                        <asp:ListItem Value="null">GENERO</asp:ListItem>
                        <asp:ListItem>MASCULINO</asp:ListItem>
                        <asp:ListItem>FEMENINO</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdown-content">
                        <asp:ListItem Value="null">RELACION</asp:ListItem>
                        <asp:ListItem>TOMADOR</asp:ListItem>
                        <asp:ListItem>CONYUGUE</asp:ListItem>
                        <asp:ListItem>HIJO</asp:ListItem>
                        <asp:ListItem>HERMANO</asp:ListItem>
                    </asp:DropDownList>
                  
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="FECHA DE NACIMIENTO" CssClass="texto"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="MES" DataValueField="MES" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                    <br />
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource4" DataTextField="Producto" DataValueField="Producto" Height="25px" Width="364px" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Producto] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdown-content"  >
                        <asp:ListItem Value="null">PLAN</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="CALCULAR" CssClass="button" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<table class="auto-style5">
                        
                        <tr>
                            
                            <td ><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="gridcalc" ShowHeader="false" Width="10%" >
                        <Columns>
                            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                            <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" visible="false" />
                            <asp:BoundField DataField="Plan" HeaderText="Plan" SortExpression="Plan" visible="false" />
                        </Columns>
                    </asp:GridView>
                            </td>
                            <td>
                    <asp:Label ID="Label5" runat="server" CssClass="texto" Width="10%"></asp:Label>
                            </td>
                        </tr>
                       
                    </table>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Valor], [Producto], [Plan] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    <br />
                    &nbsp;&nbsp;
                    <br />
                    <asp:Button class="button" ID="Button1" runat="server" OnClick="Button1_Click" Text="REEMPLAZAR" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="FINALIZAR" CssClass="button" />
                   
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
  
</body>
</html>
    </asp:Content>
