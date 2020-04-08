<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beneficiarios.aspx.cs" Inherits="Affis.Beneficiarios" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="BENEFICIARIOS"></asp:Label>
    <br />
                    
                    
                    <table >
                        <tr>
                            <td class="texto">
                                CEDULA TOMADOR</td>
                        </tr>
                    </table>
                    
                    
  
    <!DOCTYPE html>

<html>
<head>
    <title></title>
    
</head>
<body>
    
        
                    
                    
                    
                    <table>
                        <tr>
                            <td>
                    
                                 <asp:TextBox ID="Label4" runat="server" CssClass="form-control"></asp:TextBox> 
                                 <!--<asp:TextBox ID="Label3" runat="server" CssClass="form-control"></asp:TextBox>-->
                            </td>
                             <td>
                    
                    
                                
                            </td>
                            
                            
                        </tr>
                       
                        
                    </table>
                    
                    
                    <table >
                        <tr>
                            <td class="texto">
                                NOMBRE</td>
                            <td class="texto">
                                &nbsp;
                                PARENTESCO&nbsp; </td>
                            <td class="texto">
                                PORCENTAJE %<br />
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"  Width="90%"></asp:TextBox><br />
                            </td>
                        </tr>
                        
                        <tr>
                            <td >
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    
                    
                    <table >
                        <tr>
                            <td >
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                        </tr>
                        <br />
                        <tr>
                            <td >
                                <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control" Width="90%"></asp:TextBox><br />
                            </td>
                        </tr>
                    </table>
                    
                    
                    <br />
                    
                    
                    <table >
                        <tr>
                            
                            <td >
                    <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                    
                    
                            &nbsp;<asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    
                    
                &nbsp;<asp:LinkButton ID="Button9" runat="server" OnClick="Button9_Click" CssClass="btn btn-primary"><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                    
                    
                            </td>
                            
                        </tr>
                       
                    </table>
                    
          
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
    
</body>
</html>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    </asp:Content>

