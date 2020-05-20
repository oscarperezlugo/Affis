<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reemplazo.aspx.cs" Inherits="Affis.Reemplazo" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
        <head></head>
        <body>
            <div class="container">
                <div class="card">
                    <!-- CABECERA -->
                    <div class="card-header">
                        <div class="form-row">
                            <div class="col-8">
                                <h2><b> REEMPLAZO </b></h2>
                            </div>
                            <div class="col-auto">
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" CssClass="buttonColor"></asp:LinkButton>
                                <asp:LinkButton ID="Button1" runat="server" Text="SIGUIENTE" OnClick="Button1_Click" class="buttonColor" CssClass="buttonColor"><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <!-- CUERPO -->
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-12">
                                <label for="cedulatomador">Cédula Tomador</label><br />
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Cédula Tomador Principal" Width="354px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-12" align="center">
                                <hr />
                                <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click" CssClass="buttonColor"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>
</asp:Content>

