<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarPass.aspx.cs" Inherits="Affis.RecuperarPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .cajagrande {
            border-color: lightgray;
            border-radius: 6px;
            width: 30%;
            height: 25px;
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
            padding: 5px 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: medium;
            font-family: Arial;
            font-weight: bold;
            width: 100px;
            margin-top: 0px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .content { 
            margin-top: 0px;
            display: block;
            margin-left: auto;
            margin-right: auto;
              
        }
        .texto {
            font-family: Arial;
            font-size: small;
            font-weight: normal;
            display: block;
            margin-left: auto;
            margin-right: auto;
            color: gray;
            width: 350px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center mb-4">
        <table style="width:100%;">
            <tr>
                <td style="width:40%;">&nbsp;</td>
                <td>
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="texto" Text="Si has olvidado el nombre de usuario o la contraseña sigue estos pasos para recuperar tu cuenta."></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="USUARIO"></asp:TextBox>
                    <br />
                </td>
                <td style="width:40%;">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="NUEVA CONTRASENA"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="CONFIRMAR CONTRASENA"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-lg btn-primary btn-block" OnClick="LinkButton1_Click"><i class="fa fa-save"></i> GUARDAR</asp:LinkButton>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
