<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inclusion2.aspx.cs" Inherits="Affis.Inclusion2" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label12" runat="server" CssClass="treeNode" Text="INCLUSION"></asp:Label>
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
                    
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                    <table >
                       
                        <tr>
                            <td >
                                <br />
                                <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="Cedula"></asp:Label>
                    <br />
                                <asp:TextBox id="Text3" placeholder="CEDULA" type="text" runat="server" class="form-control" Width="95%" Height="95%"/>
                                <asp:RequiredFieldValidator ID="rfv_cedula" runat="server" ErrorMessage="El campo cedula es obligatorio" ControlToValidate="Text3" ForeColor="Red"></asp:RequiredFieldValidator>

                            </td>
                    
                            <td>
                                <br />
                                <asp:Label ID="Label2" runat="server" CssClass="textomini" Text="Direccion"></asp:Label>
                    <br />
                                <asp:TextBox id="Text1" class="form-control" placeholder="DIRECCION" runat="server" Width="95%" Height="95%"/></td>
                            
                        </tr>
                        <tr>
                            <td >
                                <br />
                                <asp:Label ID="Label1" runat="server" CssClass="textomini" Text="Email"></asp:Label>
                    <br />
                    <asp:TextBox id="Text2" placeholder="EMAIL" type="text" runat="server" class="form-control" Width="95%" Height="95%"/></td>
                            
                            <td>
                                <br />
                                <asp:Label ID="Label3" runat="server" CssClass="textomini" Text="Cargo"></asp:Label>
                    <br /><asp:TextBox id="cargo1" class="form-control" placeholder="CARGO" type="text" runat="server" Width="95%" Height="95%"/></td>
                            
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <asp:Label ID="Label4" runat="server" CssClass="textomini" Text="Nombre Completo"></asp:Label>
                                <br />
                                <asp:TextBox id="Text6" class="form-control" placeholder="NOMBRE COMPLETO" type="text" runat="server" Width="95%" Height="95%" />
                                <asp:RequiredFieldValidator ID="rfv_nombre" runat="server" ErrorMessage="El campo nombre es obligatorio" ControlToValidate="Text6" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                                    <asp:ListItem Value="null">GENERO</asp:ListItem>
                                    <asp:ListItem>MASCULINO</asp:ListItem>
                                    <asp:ListItem>FEMENINO</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfv_Genero" runat="server" ErrorMessage="El campo genero es obligatorio" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            
                        </tr>
                        <tr>
                            <td >
                                <br />
                                <asp:Label ID="Label6" runat="server" CssClass="textomini" Text="Telefono Celular"></asp:Label>
                    <br />
                    <asp:TextBox id="Text7" class="form-control" placeholder="TELEFONO CELULAR" type="text" runat="server" Width="95%" Height="95%"/></td>
                            <td>
                                <br />
                                <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Telefono Domicilio"></asp:Label>
                    <br />
                                <asp:TextBox id="Text8" class="form-control" placeholder="TELEFONO DOMICILIO" type="text" runat="server" Width="95%" Height="95%"/></td>
                            
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
                            </td>
                            <td>
                    <asp:DropDownList ID="DropDownList7" runat="server" datasourceid="SqlDataSource5" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                    </asp:DropDownList>
                            </td>
                        </tr>
                   <%--     <tr>
                            <td class="texto">FECHA EFECTIVA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td >
                                <asp:DropDownList ID="DropDownList8" runat="server" datasourceid="SqlDataSource6" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList12" runat="server" CssClass="dropdown-content">
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
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList10" runat="server" datasourceid="SqlDataSource7" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
                                </asp:DropDownList>
                            </td>
                        </tr>--%>
                        <tr>
                            <td class="texto">FECHA NACIMIENTO <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                            </td>
                            <td> 
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content"></asp:DropDownList>
                                
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown-content">
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
                                
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content"></asp:DropDownList>
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:RequiredFieldValidator ID="rfv_anho" runat="server" ErrorMessage="El campo año es obligatorio" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfv_mes" runat="server" ErrorMessage="El campo mes es obligatorio" ControlToValidate="DropDownList3" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfv_dia" runat="server" ErrorMessage="El campo dia es obligatorio" ControlToValidate="DropDownList4" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    <table >
                        <tr>
                            <td >
                                <asp:Label ID="Label5" runat="server" CssClass="texto" Text="¿El tomador es un asegurado?"></asp:Label>
                                <asp:RadioButtonList id="RadioButtonList1" runat="server" RepeatDirection="Horizontal"  OnSelectedIndexChanged="onSelectedIndexChanged" >
                                    <asp:ListItem>SI</asp:ListItem>
                                    <asp:ListItem>NO</asp:ListItem>
                                </asp:RadioButtonList>
<%--                                <asp:RadioButton ID="CheckBox1" Text="SI" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                <asp:RadioButton ID="CheckBox2" Text="NO" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" />--%>
                            </td>
                            <td >&nbsp;</td>
                            <td >
                                &nbsp;</td>
                            
                        </tr>
                        
                    </table>
                    <br />
                                <asp:Label ID="Label15" runat="server" CssClass="textomini" Text="Codigo"></asp:Label>
                                <asp:TextBox id="Text9" class="form-control" placeholder="CODIGO" type="text" runat="server" Width="20%" Height="95%"/>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <br />
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <br />
                    <asp:LinkButton ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTRAR" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> REGISTRAR</asp:LinkButton>
<%--                    <asp:LinkButton ID="Button3" runat="server"  Text="SRI" OnClick="Button3_Click" CssClass="btn btn-secondary"><i class="fa fa-search"></i> SRI</asp:LinkButton>
                    <asp:LinkButton ID="Button4" runat="server"  Text="CEDULA" OnClick="Button4_Click" CssClass="btn btn-secondary"><i class="fa fa-search"></i> CEDULA</asp:LinkButton>
                    <asp:LinkButton ID="Button7" runat="server"  Text="RGCE" OnClick="Button7_Click" CssClass="btn btn-secondary"><i class="fa fa-search"></i> R.CIVIL</asp:LinkButton>--%>
                    <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click" Text="CANCELAR" CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    
                    
                    <br />
                  
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
  
</body>
</html>
    </asp:Content>
