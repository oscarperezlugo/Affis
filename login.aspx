 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Affis.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet"/>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap');
        .button {
            background-color: #75bcb5;
            border-radius: 30px;
            border: none;
            color: #2e2e2e;
            padding: 15px 32px;
            text-align: center;
            letter-spacing:1px;
            text-decoration: none;
            display: inline-block;
            font-size: medium;
            font-family: 'Oswald', sans-serif;
            font-weight: bold;
            width: 80%;
            display: block;
            margin-left: auto;
            margin-right: auto;
            box-shadow: 2px 2px 10px #666 inset;
        }

        .main {
            background:url("https://www.andbeyond.com/wp-content/uploads/sites/5/Mitad-del-Mundo-in-Quito-Ecuador.jpg") no-repeat;
            background-position: bottom; 
            background-size: cover;
            background-attachment: fixed;
            background-color: floralwhite;
         }
        .box{
            position: absolute;
            top:  50%;
            left:50%;
            transform: translate(-50%,-50%);
            width:400px;
            padding:40px;
            background:rgba(0,0,0,.5);
            box-sizing:border-box;
            box-shadow: 0 15px 25px rgba(0,0,0,.4);
            border-radius:10px;
        }
        .box h2 {
            margin: 0 0 30px;
            padding: 0;
            color:white;
            text-align: center;
            font-size:medium;
            font-family: 'Oswald', sans-serif;
        }
        .auto-style1 {
            width: 70%;
        }
        .auto-style2 {
            width: 30%;
        }

        .cajagrande {
            border-color: lightgray;
            border-radius: 6px;
            height: 25px;
            width: 350px;
            margin-top: 0px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .texto {
            font-family: 'Oswald', sans-serif;
            font-size: small;
            font-weight: normal;
            margin-top: 0px;
            text-align:center;
            color: white;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style3 {
            margin-top: 0px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style4 {
            width: 98%;
        }
    </style>
    
</head>
<body class ="main">
    <div class="container">
        <div class="box">
            <h2>Ingrese los datos de usuario</h2>
            <form id="form1" runat="server">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="USUARIO" class="form-control" ></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" placeholder="CONTRASEÑA" TextMode="Password" class="form-control" ></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INICIAR SESION" class="button" />
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="texto" OnClick="LinkButtonClicked">Recuperar Contraseña</asp:LinkButton>
            </form>
         </div>
    </div>
</body>
</html>
