<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reclamos2.aspx.cs" Inherits="Affis.Reclamos2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            .RedondearLabel{
                border-radius: 0.25rem;
                border: 1px solid #ced4da;
                height: calc(1.5em + 0.75rem + 2px);
                display: block;
                font-size: 1rem;
                padding: 0.375rem 0.75rem;
                background-color: #fff;
                background-clip: padding-box;
                text-align: center;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h2><b> RECLAMO </b></h2>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-5">
                        <label for="cedula">Cédula de Identidad</label><br />
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Cédula de Identidad" Width="100%" MaxLength="10"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-5">
                        <label for="nomb">Nombre</label><br />
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Nombre" Width="100%"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-2">
                        <label for="casonro">Caso Nro.</label><br />
                        <asp:Label ID="Label10" runat="server" ForeColor="Red" CssClass="RedondearLabel" Font-Bold="True"></asp:Label>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-4">
                        <label for="relacion">Relación</label><br />
                        <asp:DropDownList ID="DropDownList5" runat="server" Width="100%" CssClass="dropdownStyle" ToolTip="Seleccione una relación">
                            <asp:ListItem>Seleccione una relación</asp:ListItem>
                            <asp:ListItem Value="TOMADOR">Tomador</asp:ListItem>
                            <asp:ListItem Value="CONYUGUE">Cónyuge</asp:ListItem>
                            <asp:ListItem Value="HIJO">Hijo</asp:ListItem>
                            <asp:ListItem Value="HERMANO">Hermano</asp:ListItem>
                            <asp:ListItem Value="PROGENITOR">Progenitor</asp:ListItem>
                            <asp:ListItem Value="PRIMO">Primo</asp:ListItem>
                            <asp:ListItem Value="SOBRINO">Sobrino</asp:ListItem>
                            <asp:ListItem Value="HERMANO">Hermano</asp:ListItem>
                            <asp:ListItem Value="NIETO">Nieto</asp:ListItem>
                            <asp:ListItem Value="CUÑADO">Cuñado</asp:ListItem>
                            <asp:ListItem Value="SUEGRO">Suegro</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-5">
                        <label for="asegurado">Asegurado</label><br />
                        <asp:DropDownList ID="DropDownList12" runat="server" Width="100%" CssClass="dropdownStyle" DataSourceID="SqlDataSource1" DataTextField="NOMBRESCOMPLETOS" DataValueField="NOMBRESCOMPLETOS">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS] FROM [ASEGURADOS] WHERE ([TOMADOR] = @TOMADOR)">
                            <SelectParameters>
                                <asp:SessionParameter Name="TOMADOR" SessionField="caso" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="col-3">
                        <label for="finicio">Fecha de Inicio</label><br />
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" CssClass="RedondearLabel"></asp:Label>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-5">
                        <br />
                        <label for="cobertura">Cobertura</label><br />
                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="dropdownStyle" Width="100%">
                            <asp:ListItem>Seleccione un producto</asp:ListItem>
                            <asp:ListItem>Muerte accidental y desmembración accidental</asp:ListItem>
                            <asp:ListItem>Renta diaria por hospitalización</asp:ListItem>
                            <asp:ListItem>Beca educativa</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </div>
                    <div class="col-4">
                        <br />
                        <label for="causahospitalizacion">Causa de Hospitalización</label><br />
                        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="dropdownStyle" Width="100%">
                            <asp:ListItem>Seleccione una causa</asp:ListItem>
                            <asp:ListItem>Accidente</asp:ListItem>
                            <asp:ListItem>Hospitalización</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </div>
                    <div class="col-2">
                        <br />
                        <label for="casadesalud">Casa de Salud</label><br />
                        <asp:DropDownList ID="DropDownList10" runat="server" CssClass="dropdownStyle" Width="100%">
                            <asp:ListItem>Casa</asp:ListItem>
                            <asp:ListItem>Pública</asp:ListItem>
                            <asp:ListItem>Privada</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-1">
                        <br />
                        <label for="plan">Plan</label><br />
                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdownStyle" Width="100%">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-6">
                        <br />
                        <label for="diagnostico">Diagnóstico</label><br />
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-6">
                        <br />
                        <label for="observac">Observaciones</label><br />
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div><hr /></div>
                <div class="form-row">
                    <div class="col-12" align="center">
                        <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> GUARDAR</asp:LinkButton>
                        <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
