﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inclusion2.aspx.cs" Inherits="Affis.Inclusion2" MasterPageFile="~/Site.Master" %>

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
                    
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                    <table >
                        <tr>
                            <td >
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="cajagrande"></asp:TextBox>
                            </td>
                            
                        </tr>
                        <tr>
                            <td >
                    <asp:TextBox ID="TextBox3" runat="server"  CssClass="cajagrande"></asp:TextBox>
                            </td>
                            <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="cajagrande" ></asp:TextBox>
                            </td>
                            
                        </tr>
                        <tr>
                            <td >
                    <asp:TextBox  id="Text3" placeholder="CEDULA" type="text" runat="server" class="cajagrande" /></td>
                            <td><input id="Text1" class="cajagrande" placeholder="DIRECCION" type="text" runat="server" /></td>
                            
                        </tr>
                        <tr>
                            <td >
                    <asp:TextBox id="Text2" placeholder="EMAIL" type="text" runat="server" class="cajagrande"/></td>
                            <td><input id="cargo" class="cajagrande" placeholder="CARGO" type="text" runat="server"/></td>
                            
                        </tr>
                        <tr>
                            <td >
                    <asp:TextBox id="Text6" class="cajagrande" placeholder="NOMBRE COMPLETO" type="text" runat="server" /></td>
                            <td><asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-content">
                        <asp:ListItem Value="null">GENERO</asp:ListItem>
                        <asp:ListItem>MASCULINO</asp:ListItem>
                        <asp:ListItem>FEMENINO</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            
                        </tr>
                        <tr>
                            <td >
                    <asp:TextBox id="Text7" class="cajagrande" placeholder="TELEFONO CELULAR" type="text" runat="server" /></td>
                            <td><asp:TextBox id="Text8" class="cajagrande" placeholder="TELEFONO DOMICILIO" type="text" runat="server" /></td>
                            
                        </tr>
                    </table>
                    <table style="width:100%;">
                        <tr>
                            <td class="texto">INICIO VIGENCIA&nbsp;&nbsp;</td>
                            <td >
                    <asp:DropDownList ID="DropDownList5" runat="server" datasourceid="SqlDataSource4" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource2" DataTextField="MES" DataValueField="MES" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList7" runat="server" datasourceid="SqlDataSource5" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="texto">FECHA EFECTIVA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td >
                    <asp:DropDownList ID="DropDownList8" runat="server" datasourceid="SqlDataSource6" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource2" DataTextField="MES" DataValueField="MES" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList10" runat="server" datasourceid="SqlDataSource7" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="texto">FECHA NACIMIENTO <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                            </td>
                            <td > <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="MES" DataValueField="MES" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <table >
                        <tr>
                            <td >
                                <asp:Label ID="Label5" runat="server" CssClass="texto" Text="¿El tomador es un asegurado?"></asp:Label>
                            </td>
                            <td >
                                <asp:Button ID="Button5" runat="server" Text="SI" CssClass="button" Width="100%" OnClick="Button5_Click"/>
                            </td>
                            <td >
                                <asp:Button ID="Button6" runat="server" Text="NO" CssClass="button" Width="100%"/>
                            </td>
                            
                        </tr>
                        
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <br />
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTRAR" CssClass="button"/>
                    <asp:Button ID="Button3" runat="server"  Text="SRI" OnClick="Button3_Click" CssClass="button"/>
                    <asp:Button ID="Button4" runat="server"  Text="CEDULA" OnClick="Button4_Click" CssClass="button"/>
                    <br />
                  
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
  
</body>
</html>
    </asp:Content>
