<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empresa.aspx.cs" Inherits="Affis.TomadorPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial;
            height: 490px;
        }
        .auto-style2 {
            width: 238px;
        }
        .auto-style3 {
            width: 218px;
        }
        .auto-style4 {
            width: 214px;
        }
        .auto-style5 {
            width: 238px;
            height: 23px;
        }
        .auto-style6 {
            width: 218px;
            height: 23px;
        }
        .auto-style7 {
            width: 269px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 217px;
        }
        .auto-style10 {
            width: 205px;
        }
        .auto-style11 {
            width: 212px;
        }
        .auto-style12 {
            width: 224px;
        }
        .auto-style13 {
            width: 211px;
        }
        .auto-style14 {
            width: 210px;
        }
        .auto-style15 {
            width: 225px;
        }
        .auto-style16 {
            width: 228px;
            height: 16px;
        }
        .auto-style18 {
            width: 100%;
            height: 362px;
        }
        .auto-style19 {
            width: 269px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="TOMADOR PRINCIPAL" Font-Bold="True" Font-Size="20pt" Height="50px" Width="309px"></asp:Label>
            <table class="auto-style18">
                <tr>
                    <td class="auto-style2">MENU</td>
                    <td class="auto-style2">CEDULA DE INDENTIDAD</td>
                    <td class="auto-style3">NOMBRE COMPLETO</td>
                    <td class="auto-style19">GENERO</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <input id="Text11" class="auto-style15" type="text" name="cedula"/></td>
                    <td class="auto-style3">
                        <input id="Text6" class="auto-style11" type="text" name="nombre"/></td>
                    <td class="auto-style19">
                        <input id="Text1" class="auto-style9" type="text" name="direccion" /></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" >
                            <asp:ListItem>MASCULINO</asp:ListItem>
                            <asp:ListItem>FEMENINO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">TELEFONO DOMICILIO</td>
                    <td class="auto-style3">TELEFONO CELULAR</td>
                    <td class="auto-style19">DIRECCION</td>
                    <td>DIRECCION EMPLEADOR</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <input id="Text7" class="auto-style12" type="text" name="teldomicilio"/></td>
                    <td class="auto-style3">
                        <input id="Text8" class="auto-style13" type="text" name="telcelular"/></td>
                    <td class="auto-style19">
                        <input id="Text4" class="auto-style10" type="text" /></td>
                    <td>
                        <input id="Text2" class="auto-style4" type="text" name="dirempresa"/></td>
                </tr>
                <tr>
                    <td class="auto-style2">EMAIL</td>
                    <td class="auto-style3">TELEFONO EMPRESA</td>
                    <td class="auto-style19">MEDIO DE COBRO</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <input id="Text12" class="auto-style16" type="text" name="email" /></td>
                    <td class="auto-style3">
                        <input id="Text9" class="auto-style14" type="text" name="telempresa"/></td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>TARJETA DE CREDITO</asp:ListItem>
                            <asp:ListItem>ROL DE PAGO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">ENTIDAD TOMADORA</td>
                    <td class="auto-style3">CARGO</td>
                    <td class="auto-style19">CODIGO</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE_COMERCIAL" DataValueField="NOMBRE_COMERCIAL">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRE COMERCIAL] AS NOMBRE_COMERCIAL FROM [EMPRESAS]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style6">
                        <input id="Text10" class="auto-style10" type="text" name="cargo"/></td>
                    <td class="auto-style7">
                        <input id="Text3" class="auto-style10" type="text" name="codigo"/></td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">FECHA NACIMIENTO</td>
                    <td class="auto-style6">FECHA EFECTIVA</td>
                    <td class="auto-style7">INICIO VIGENCIA</td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource2" DataTextField="AÑO" DataValueField="AÑO">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource4" DataTextField="DIA_" DataValueField="DIA_">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource3" DataTextField="MES" DataValueField="MES">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource2" DataTextField="AÑO" DataValueField="AÑO">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource4" DataTextField="DIA_" DataValueField="DIA_">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource3" DataTextField="MES" DataValueField="MES">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="AÑO" DataValueField="AÑO">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource4" DataTextField="DIA_" DataValueField="DIA_">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="MES" DataValueField="MES">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GUARDAR" />
        <asp:Button ID="Button2" runat="server" Text="CANCELAR" />
    </form>
</body>
</html>
