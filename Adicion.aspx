<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adicion.aspx.cs" Inherits="Affis.Adicion" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
 <asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
     <!DOCTYPE html>
 
     <html>
   
<head >
    <title></title>
    
   
</head>
<body>
    
        
        <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="ADICION"></asp:Label>
        <br />
                                <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Tomador Cedula"></asp:Label>
        <br />
    
        
        <table >
            <tr>
                
                
                <td class="auto-style2" >
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="TOMADOR CEDULA"></asp:TextBox>
                    &nbsp;<br />
                                <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Cedula"></asp:Label>
                    <br />
                    <asp:TextBox id="Text3" placeholder="CEDULA" type="text" runat="server" class="form-control"/><br />
                                <asp:Label ID="Label9" runat="server" CssClass="textomini" Text="Nombre Completo"></asp:Label>
                    <br />
                    <asp:TextBox id="Text6" placeholder="NOMBRE COMPLETO" type="text" runat="server" class="form-control"/><asp:DropDownList ID="DropDownList1" runat="server" class="dropdown-content" CssClass="btn btn-secondary dropdown-toggle">
                        <asp:ListItem Value="null">GENERO</asp:ListItem>
                        <asp:ListItem>MASCULINO</asp:ListItem>
                        <asp:ListItem>FEMENINO</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                        <asp:ListItem>RELACION</asp:ListItem>
                        <asp:ListItem Value="TOMADOR">Tomador</asp:ListItem>
                        <asp:ListItem Value="CONYUGUE">Cónyuge</asp:ListItem>
                        <asp:ListItem Value="HIJO">Hijo</asp:ListItem>
                        <asp:ListItem Value="HERMANO">Hermano</asp:ListItem>
                        <asp:ListItem Value="PROGENITOR">Progenitor</asp:ListItem>
                        <asp:ListItem Value="PRIMO">Primo</asp:ListItem>
                        <asp:ListItem Value="SOBRINO">Sobrino</asp:ListItem>
                        <asp:ListItem Value="HERMANO">Hermano</asp:ListItem>
                        <asp:ListItem Value="NIETO">Nieto</asp:ListItem>
                        <asp:ListItem Value="CUÑADO">Cuñado</asp:ListItem>
                        <asp:ListItem Value="SUEGRO">Suegro</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="FECHA DE NACIMIENTO" CssClass="texto"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdown-content">
                        <asp:ListItem Value="1">ENERO</asp:ListItem>
                        <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                        <asp:ListItem Value="3">MARZO</asp:ListItem>
                        <asp:ListItem Value="4">ABRIL</asp:ListItem>
                        <asp:ListItem Value="5">MAYO</asp:ListItem>
                        <asp:ListItem Value="6">JUNIO</asp:ListItem>
                        <asp:ListItem Value="7">JULIO</asp:ListItem>
                        <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                        <asp:ListItem Value="9">SEPTIEMBRE</asp:ListItem>
                        <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                        <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                        <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                    <br />
                    <asp:DropDownList ID="DropDownList8" runat="server"  Width="364px" CssClass="btn btn-secondary dropdown-toggle">
                        <asp:ListItem>Producto</asp:ListItem>
                        <asp:ListItem>Muerte accidental y desmembración accidental</asp:ListItem>
                        <asp:ListItem>Renta diaria por hospitalización</asp:ListItem>
                        <asp:ListItem>Beca educativa</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Producto] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList7" runat="server" CssClass="btn btn-secondary dropdown-toggle"  >
                        <asp:ListItem Value="null">PLAN</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                    <asp:LinkButton ID="Button3" runat="server" OnClick="Button3_Click"  CssClass="btn btn-primary" ><i class="fa fa-calculator"></i> CALCULAR</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<table class="auto-style5">
                        
                        <tr>
                            
                            <td class="auto-style6"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="gridcalc" ShowHeader="False" Width="10%" >
                        <Columns>
                            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" DataFormatString="{0:0.00}" />
                            <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" visible="false" />
                            <asp:BoundField DataField="Plan" HeaderText="Plan" SortExpression="Plan" visible="false" />
                        </Columns>
                    </asp:GridView>
                            </td>
                        </tr>
                       
                    </table>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Valor], [Producto], [Plan] FROM [PRODUCTOS]"></asp:SqlDataSource>
                    <br />
                    &nbsp;&nbsp;
                    <br />
                    <asp:LinkButton class="button" ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-success"  ><i class="fa fa-plus-circle"></i> ADICIONAR</asp:LinkButton>
                    &nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" CssClass="btn btn-danger"/>
                    
                    
                    
                    &nbsp;<asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click"  CssClass="btn btn-primary" ><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                    
                    
                    
                    <br />
                    
                    <br />
                    
                    
                </td>
        
             
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
        
</html>
 </asp:Content>
    
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 623px;
        }
        .auto-style2 {
            width: 470px;
        }
    </style>
</asp:Content>

    
