﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="AperturaEmpresa.aspx.cs" Inherits="Affis.Base" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="APERTURA EMPRESA"></asp:Label>
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
                    <table >
                        <tr>
                            <td>
                                <br />
                                <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Nombre Comercial"></asp:Label>
                                <br />
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                    <input id="Text2" class="form-control" placeholder="NOMBRE COMERCIAL" type="text" runat="server"/><br />
                                <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Medio de Cobro"></asp:Label>
                                <br />
                            </td>
                           
                        </tr>
                        <tr>
                            <td><asp:DropDownList ID="DropDownList11" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                    <%--    <asp:ListItem>MEDIO DE COBRO</asp:ListItem>--%>
                        <asp:ListItem>TARJETA DE CREDITO</asp:ListItem>
                        <asp:ListItem>ROL DE PAGOS</asp:ListItem>
                        <asp:ListItem>AMBOS</asp:ListItem>
                    </asp:DropDownList>
                                <br />
                                <br />
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="Button1" runat="server" OnClick="Button1_Click" class="button" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                                
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="btn btn-primary"></asp:LinkButton>
                                <asp:LinkButton ID="Button5" runat="server" OnClick="Button5_Click" class="button" CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    
                    
                                <br />
                            </td>
                            
                        </tr>
                    </table>
                </td>
                
            </tr>
          
           
            
             
            
        </table>
    
</body>
</html>
    </asp:Content>
