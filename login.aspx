<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Affis.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .button {
            background-color: gray;
            border-radius: 30px;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: medium;
            font-family: Arial;
            font-weight: bold;
            width: 350px;
            display: block;
            margin-left: auto;
            margin-right: auto;
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
            font-family: Arial;
            font-size: small;
            font-weight: normal;
            margin-top: 0px;
            text-align:center;
            color: gray;
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
<body style="background-color:white">
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                
                <td class="auto-style1">
                    
                    <asp:Image ID="Image2" runat="server" ImageUrl="https://www.andbeyond.com/wp-content/uploads/sites/5/Mitad-del-Mundo-in-Quito-Ecuador.jpg" Width="99%" Height="605px" padding="5px"/>
                       
                </td>
                
                <td class="auto-style2">
                    
                    <table class="auto-style4">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" ImageUrl="https://cdn.pixabay.com/photo/2012/04/26/19/43/profile-42914_960_720.png" width="70%" CssClass="auto-style3" Height="277px"/>
                                <br />
                                <br />
                            </td>                            
                        </tr>
                        <tr>
                            <td>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="USUARIO" class="form-control" ></asp:TextBox>
                                <br />
                            </td>                            
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>                            
                        </tr>
                        <tr>
                            <td>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="CONTRASEÑA" class="form-control" ></asp:TextBox>
                                <br />
                            </td>                            
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>                            
                        </tr>
                      
                        <tr>
                            <td>
        <asp:Label ID="Label1" runat="server" CssClass="texto"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INICIAR SESION" class="btn btn-lg btn-primary btn-block" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="texto" OnClick="LinkButtonClicked">Recuperar Contraseña</asp:LinkButton>
                            </td>
                        </tr>
                      
                    </table>
                    
                </td>
            </tr>
            
           
        </table>
    </form>
</body>
</html>
