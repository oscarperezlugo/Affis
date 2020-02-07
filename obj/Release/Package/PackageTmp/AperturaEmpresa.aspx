<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="AperturaEmpresa.aspx.cs" Inherits="Affis.Base" %>
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
                    <input id="Text1" class="form-control" placeholder="RUC" type="text" runat="server"/><br />
                                <br />
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                    <input id="Text2" class="form-control" placeholder="NOMBRE COMERCIAL" type="text" runat="server"/><br />
                                <br />
                            </td>
                           
                        </tr>
                        <tr>
                            <td><asp:DropDownList ID="DropDownList11" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                        <asp:ListItem>MEDIO DE COBRO</asp:ListItem>
                        <asp:ListItem>TARJETA DE CREDITO</asp:ListItem>
                        <asp:ListItem>ROL DE PAGO</asp:ListItem>
                        <asp:ListItem>AMBOS</asp:ListItem>
                    </asp:DropDownList>
                                <br />
                                <br />
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GUARDAR" class="btn btn-success"/>
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
