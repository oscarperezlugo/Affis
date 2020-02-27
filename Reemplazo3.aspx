﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo3.aspx.cs" Inherits="Affis.Reemplazo3"  MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="REEMPLAZO"></asp:Label>
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
                                <asp:Label ID="Label1" runat="server" CssClass="textomini" Text="Cedula Tomador"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                    <br />
                   
                    <br />
                                <asp:Label ID="Label2" runat="server" CssClass="textomini" Text="Cedula"></asp:Label>
                    <br />
                    <asp:TextBox id="Text3" placeholder="CEDULA" type="text" runat="server" class="form-control"/><br />
                    <br />
                    <br />
                                <asp:Label ID="Label4" runat="server" CssClass="textomini" Text="Nombre Completo"></asp:Label>
                    <br />
                    <asp:TextBox id="Text6" placeholder="NOMBRE COMPLETO" type="text" runat="server" class="form-control"/><asp:DropDownList ID="DropDownList1" runat="server" class="dropdown-content" CssClass="btn btn-secondary dropdown-toggle">
                        <asp:ListItem Value="null">GENERO</asp:ListItem>
                        <asp:ListItem>MASCULINO</asp:ListItem>
                        <asp:ListItem>FEMENINO</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                        <asp:ListItem>RELACION</asp:ListItem>
                        <asp:ListItem Value="Titular">Tomador</asp:ListItem>
                        <asp:ListItem Value="Cónyuge">Cónyuge</asp:ListItem>
                        <asp:ListItem Value="Hijo">Hijo</asp:ListItem>
                        <asp:ListItem>Hermano</asp:ListItem>
                        <asp:ListItem>Progenitor</asp:ListItem>
                        <asp:ListItem>Primo</asp:ListItem>
                        <asp:ListItem>Sobrino</asp:ListItem>
                        <asp:ListItem>Hermano</asp:ListItem>
                        <asp:ListItem>Nieto</asp:ListItem>
                        <asp:ListItem>Cuñado</asp:ListItem>
                        <asp:ListItem>Suegro</asp:ListItem>
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
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource4" DataTextField="Producto" DataValueField="Producto"  Width="364px" CssClass="btn btn-secondary dropdown-toggle">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Producto] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList7" runat="server" CssClass="btn btn-secondary dropdown-toggle"  >
                        <asp:ListItem Value="null">PLAN</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:LinkButton ID="Button3" runat="server" OnClick="Button3_Click" Text="CALCULAR" CssClass="btn btn-primary" ><i class="fa fa-calculator"></i> CALCULAR</asp:LinkButton>
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
                    <asp:LinkButton class="btn btn-success" ID="Button1" runat="server" OnClick="Button1_Click" Text="REEMPLAZAR" ><i class="fa fa-plus-circle"></i> REEMPLAZAR</asp:LinkButton>
                    <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" Text="FINALIZAR" CssClass="btn btn-primary" ><i class="fa fa-check"></i> FINALIZAR</asp:LinkButton>
                   
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
  
</body>
</html>
    </asp:Content>
