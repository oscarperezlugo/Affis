<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Affis.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            width: 100%;
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



        .texto {
            font-family: Arial;
            font-size: small;
            font-weight: normal;
            text-align: left;
            color: gray;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body style="background-color:lightgray">
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                
                <td class="auto-style1">
                    
                    <asp:Image ID="Image2" runat="server" ImageUrl="https://baic.ec/wp-content/uploads/2018/12/ecuador-e1559239499682.jpg" Width="100%" Height="630px" />
                       
                </td>
                
                <td class="auto-style2">
                    
                    <table style="width: 100%; ">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" ImageUrl="https://image.flaticon.com/icons/png/512/32/32438.png" width="70%" CssClass="auto-style3" Height="277px"/>
                            </td>                            
                        </tr>
                        <tr>
                            <td>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="USUARIO" CssClass="auto-style3" ></asp:TextBox>
                            </td>                            
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>                            
                        </tr>
                        <tr>
                            <td>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="CONTRASEÑA" CssClass="auto-style3" ></asp:TextBox>
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
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INICIAR SESION" CssClass="button" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                      
                    </table>
                    
                </td>
            </tr>
            
           
        </table>
    </form>
</body>
</html>
