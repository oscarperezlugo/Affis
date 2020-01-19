<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarPass.aspx.cs" Inherits="Affis.RecuperarPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .cajagrande {
            border-color: lightgray;
            border-radius: 6px;
            width: 30%;
            width: 350px;
            margin-top: 0px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .button {
            background-color: white;
            border-radius: 5px;
            border: solid;
            border-color: gray;
            color: gray;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: medium;
            font-family: Arial;
            font-weight: bold;
            width: 120px;
            margin-top: 0px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="cajagrande" placeholder="USUARIO"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="cajagrande" placeholder="NUEVA CONTRASENA"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="cajagrande" placeholder="CONFIRMAR CONTRASENA"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" OnClick="LinkButton1_Click"><i class="fa fa-save"></i> GUARDAR</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
