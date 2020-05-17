<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beneficiarios.aspx.cs" Inherits="Affis.Beneficiarios" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 

            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <div class="form-row">
                            <div class="col-8">
                                <h2><b> BENEFICIARIOS </b></h2>
                            </div>
                            <div class="col-auto">
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="buttonColor"></asp:LinkButton>
                                <asp:LinkButton ID="Button9" runat="server" OnClick="Button9_Click" CssClass="buttonColor"><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-12">
                                <label for="cedulatomador">Cédula Tomador</label><br />
                                <asp:TextBox ID="Label4" runat="server" CssClass="form-control" Width="400px" placeholder="Cédula Tomador Principal"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-4">
                                <label for="nombre">Nombre</label><br />
                            </div>
                            <div class="col-4">
                                <label for="parentesco">Parentesco</label><br />
                            </div>
                            <div class="col-4">
                                <label for="porcentaje">Porcentaje %</label><br />
                            </div>
                        </div>
                        <div class="form-row">
                            <!-- Nombre 1x1 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Parentesco 1x2 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Porcentaje % 1x3 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" ></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="form-row">
                            <!-- Nombre 2x1 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Parentesco 2x2 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Porcentaje % 2x3 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" ></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="form-row">
                            <!-- Nombre 3x1 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Parentesco 3x2 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Porcentaje % 3x3 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" ></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="form-row">
                            <!-- Nombre 4x1 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Parentesco 4x2 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Porcentaje % 4x3 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" ></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="form-row">
                            <!-- Nombre 5x1 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Parentesco 5x2 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox><br />
                            </div>
                            <!-- Porcentaje % 5x3 -->
                            <div class="col-4">
                                <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control" ></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-12" align="center">
                                <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-success"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>                    
                                <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    </asp:Content>

