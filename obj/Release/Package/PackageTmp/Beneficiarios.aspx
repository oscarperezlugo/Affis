<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beneficiarios.aspx.cs" Inherits="Affis.Beneficiarios" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="BENEFICIARIOS"></asp:Label>
    <br />
    <br />
    <!DOCTYPE html>

<html>
<head>
    <title></title>
    
</head>
<body>
    
        
                    
                    
                    
                    <table>
                        <tr>
                            <td>
                    
                    
                                <asp:Label ID="Label3" runat="server" CssClass="texto"></asp:Label>
                            </td>
                             <td>
                    
                    
                                <asp:Label ID="Label4" runat="server" CssClass="texto"></asp:Label>
                            </td>
                            
                            
                        </tr>
                       
                        
                    </table>
                    
                    
                    <table >
                        <tr>
                            <td class="texto">
                                NOMBRE</td>
                            <td class="texto">
                                PARENTESCO</td>
                            <td class="texto">
                                PORCENTAJE %</td>
                        </tr>
                        <tr>
                            <td >
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    
                    
                    <table >
                        <tr>
                            <td >
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" ></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    
                    
                    <br />
                    
                    
                    <table >
                        <tr>
                            
                            <td >
                    <asp:Button ID="Button2" runat="server" Text="GUARDAR" OnClick="Button2_Click" CssClass="btn btn-success"/>
                    
                    
                            &nbsp;<asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="CANCELAR" CssClass="btn btn-danger"/>
                    
                    
                &nbsp;<asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="SIGUIENTE" CssClass="btn btn-primary"/>
                    
                    
                            </td>
                            
                        </tr>
                       
                    </table>
                    
          
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    </asp:Content>

