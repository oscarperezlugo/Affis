<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cobranzas.aspx.cs" Inherits="Affis.Cobranzas" MasterPageFile="~/Site.Master"%>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
<!DOCTYPE html>

<html>
<head >
    <title></title>
    
</head>
<body>
    
        <table >
            <tr>
             
                 
                <td >
                   
                    
                    
                    <table >
                        <tr>
                            <td>
                    
                    
                                <asp:Label ID="Label3" runat="server" CssClass="texto"></asp:Label>
                            </td>
                             <td>
                    
                    
                                <asp:Label ID="Label4" runat="server" CssClass="texto"></asp:Label>
                            </td>
                            <td>
                    
                    
                                &nbsp;</td>
                            
                        </tr>
                       
                        
                    </table>
                    
                    
                    <table >
                        <tr>
                            <td >
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-contentG">
                                    <asp:ListItem>MEDIO DE COBRO</asp:ListItem>
                                    <asp:ListItem>ROL DE PAGOS</asp:ListItem>
                                    <asp:ListItem>TARJETA DE CREDITO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="cajagrande" placeholder="BANCO"></asp:TextBox>
                            </td>
                            <td class="texto">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="cajagrande" placeholder="NRO CUENTA" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td >
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Corriente" CssClass="texto" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox2" runat="server" CssClass="texto" Text="Ahorros" />
                            </td>
                        </tr>
                        
                    </table>
                    
                    
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style6">
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown-contentG">
                                    <asp:ListItem>SELECCIONE TARJETA</asp:ListItem>
                                    <asp:ListItem>VISA</asp:ListItem>
                                    <asp:ListItem>MASTER CARD</asp:ListItem>
                                    <asp:ListItem>AMERICAN EXPRESS</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="cajagrande" placeholder="VENCIMIENTO"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="cajagrande" placeholder="NUMERO"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="cajagrande" placeholder="CODIGO DE SEGURIDAD" class="cajagrande"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style10">
                                <asp:Label ID="Label6" runat="server" Text="PRIMA TOTAL" Class="texto"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" CssClass="certificado" Font-Bold="True" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    
                    
                    <br />
                    
                    
                    <table >
                        <tr>
                            
                            <td>
                    <asp:Button ID="Button2" runat="server" Text="GUARDAR" OnClick="Button2_Click" CssClass="button"/>
                    
                    
                            </td>
                            
                        </tr>
                       
                    </table>
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
