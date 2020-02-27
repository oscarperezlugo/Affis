﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cobranzas.aspx.cs" Inherits="Affis.Cobranzas" MasterPageFile="~/Site.Master"%>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label8" runat="server" CssClass="treeNode" Text="COBRANZA"></asp:Label>
    <br />
    <table class="auto-style4">
        <tr>
            <td class="auto-style3">
                    
                    
                                <asp:Label ID="Label3" runat="server" CssClass="texto"></asp:Label>
                    
                    
                                <asp:Label ID="Label4" runat="server" CssClass="texto"></asp:Label>
                            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                                    <asp:ListItem>MEDIO DE COBRO</asp:ListItem>
                                    <asp:ListItem>ROL DE PAGOS</asp:ListItem>
                                    <asp:ListItem>TARJETA DE CREDITO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
            <td>
                <br />
                                <asp:Label ID="Label1" runat="server" CssClass="textomini" Text="BANCO"></asp:Label>
                    <br />
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="BANCO"></asp:TextBox>
                            </td>
            <td>
                <br />
                                <asp:Label ID="Label2" runat="server" CssClass="textomini" Text="NRO CUENTA"></asp:Label>
                    <br />
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="NRO CUENTA" ></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                                <asp:CheckBox ID="CheckBox2" runat="server" CssClass="texto" Text="Ahorros" />
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Corriente" CssClass="texto" />
                            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                                    <asp:ListItem>SELECCIONE TARJETA</asp:ListItem>
                                    <asp:ListItem>VISA</asp:ListItem>
                                    <asp:ListItem>MASTER CARD</asp:ListItem>
                                    <asp:ListItem>AMERICAN EXPRESS</asp:ListItem>
                                </asp:DropDownList>
                            </td>
            <td>
                <br />
                                <asp:Label ID="Label5" runat="server" CssClass="textomini" Text="VENCIMIENTO"></asp:Label>
                    <br />
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="VENCIMIENTO"></asp:TextBox>
                            </td>
            <td>
                <br />
                                <asp:Label ID="Label9" runat="server" CssClass="textomini" Text="NUMERO"></asp:Label>
                    <br />
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="NUMERO"></asp:TextBox>
                            </td>
            </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <br />
                                <asp:Label ID="Label10" runat="server" CssClass="textomini" Text="CODIGO DE SEGURIDAD"></asp:Label>
                    <br />
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="CODIGO DE SEGURIDAD" class="cajagrande"></asp:TextBox>
                            </td>
            <td>&nbsp;</td>
            </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                                <asp:Label ID="Label6" runat="server" Text="PRIMA TOTAL" Class="texto"></asp:Label>
                            </td>
            <td>
                                <asp:Label ID="Label7" runat="server" CssClass="certificado" Font-Bold="True" ForeColor="Red"></asp:Label>
                            </td>
            </tr>
    </table>
                    <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    
                    
                    <asp:LinkButton ID="Button3" runat="server" Text="CANCELAR" OnClick="Button3_Click" CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    
                    
                    <asp:LinkButton ID="Button4" runat="server"  OnClick="Button4_Click" CssClass="btn btn-primary"><i class="fa fa-check"></i> FINALIZAR</asp:LinkButton>
                    
                    
    <br />
    <!DOCTYPE html>

<html>
<head >
    <title></title>
    
</head>
<body>
    
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
        <%: Scripts.Render("~/bundles/modernizr") %>
    <style type="text/css">
        .auto-style3 {
            width: 318px;
        }
        .auto-style4 {
            width: 88%;
        }
        .auto-style11 {
            width: 578px;
        }
        </style>
</asp:Content>

