﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adicion.aspx.cs" Inherits="Affis.Adicion" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
 
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
     <!DOCTYPE html>
     <html>
         <head>
             <title></title>
             <style type="text/css">
                .mGrid td {
                border-radius: 0.25rem;
                border: 1px solid #ced4da;
                height: calc(1.5em + 0.75rem + 2px);
                display: block;
                font-size: 1rem;
                padding: 0.375rem 0.75rem;
                background-color: #fff;
                background-clip: padding-box;
                margin-top: -8px;
            }
             </style>
         </head>
         <body>
             <div class ="container">
                 <div class="card">
                     <form>
                         <!-- CABECERA -->
                         <div class="card-header">
                             <div class="form-row">
                                 <div class="col-8">
                                     <h2><b>ADICIÓN </b></h2>
                                 </div>
                                 <div class="col-auto">
                                     <asp:LinkButton ID="LinkButton3" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" CssClass="buttonColor"></asp:LinkButton>
                                     <asp:LinkButton ID="LinkButton4" runat="server" OnClick="Button2_Click"  CssClass="buttonColor" ><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                                 </div>
                             </div>
                         </div>
                         <!-- CUERPO -->
                         <div class="card-body">
                             <div class="form-row">
                                 <div class="col-md-6">
                                     <label for="tomadorcedula">Tomador Cédula</label>
                                     <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Tomador Cédula"></asp:TextBox><br />
                                 </div>
                                 <div class="col-md-6">
                                     <label for="cedula">Cédula</label>
                                     <asp:TextBox id="Text3" placeholder="Cédula" type="text" runat="server" class="form-control"/><br />
                                 </div>
                             </div>
                             <div class="form-row">
                                 <div class="col-md-6">
                                     <label for="nombrecompleto">Nombre Completo</label><br />
                                     <asp:TextBox id="Text6" placeholder="Nombre Completo" type="text" runat="server" class="form-control"/><br />
                                 </div>
                                 <div class="col-md-3">
                                     <label for="genero">Género</label><br />
                                     <asp:DropDownList ID="DropDownList1" runat="server" class="dropdown-content" CssClass="dropdownStyle">
                                         <asp:ListItem Value="null">Género</asp:ListItem>
                                         <asp:ListItem>Masculino</asp:ListItem>
                                         <asp:ListItem>Femenino</asp:ListItem>
                                     </asp:DropDownList>
                                 </div>
                                 <div class="col-md-3">
                                     <label for="relacion">Relación</label><br />
                                     <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdownStyle">
                                         <asp:ListItem>Relación</asp:ListItem>
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
                             </div>
                             <div class="form-row">
                                 <div class="col-auto">
                                     <label for="fechanacimiento">Fecha de Nacimiento</label><br />
                                     <!-- AÑO -->
                                     <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle">
                                     </asp:DropDownList>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                                     <!-- MES -->
                                     <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdownStyle">
                                         <asp:ListItem Value="1">Enero</asp:ListItem>
                                         <asp:ListItem Value="2">Febrero</asp:ListItem>
                                         <asp:ListItem Value="3">Marzo</asp:ListItem>
                                         <asp:ListItem Value="4">Abril</asp:ListItem>
                                         <asp:ListItem Value="5">Mayo</asp:ListItem>
                                         <asp:ListItem Value="6">Junio</asp:ListItem>
                                         <asp:ListItem Value="7">Julio</asp:ListItem>
                                         <asp:ListItem Value="8">Agosto</asp:ListItem>
                                         <asp:ListItem Value="9">Septiembre</asp:ListItem>
                                         <asp:ListItem Value="10">Octubre</asp:ListItem>
                                         <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                         <asp:ListItem Value="12">Diciembre</asp:ListItem>
                                     </asp:DropDownList>
                                     <!-- DIA -->
                                     <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle">
                                     </asp:DropDownList>
                                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [MES] FROM [MES$]"></asp:SqlDataSource>
                                     <br />
                                 </div>
                                 <div class="col-auto">
                                     <label for="producto">Producto</label><br />
                                     <asp:DropDownList ID="DropDownList8" runat="server"  Width="364px" CssClass="dropdownStyle">
                                         <asp:ListItem>Producto</asp:ListItem>
                                         <asp:ListItem>Muerte accidental y desmembración accidental</asp:ListItem>
                                         <asp:ListItem>Renta diaria por hospitalización</asp:ListItem>
                                         <asp:ListItem>Beca educativa</asp:ListItem>
                                     </asp:DropDownList>
                                 </div>
                                 <div class="col-auto">
                                     <label for="plan">Plan</label><br />
                                     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Producto] FROM [PRODUCTOS]"></asp:SqlDataSource>
                                     <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdownStyle"  >
                                         <asp:ListItem Value="null">Plan</asp:ListItem>
                                         <asp:ListItem>A</asp:ListItem>
                                         <asp:ListItem>B</asp:ListItem>
                                         <asp:ListItem>C</asp:ListItem>
                                     </asp:DropDownList>
                                     
                                 </div>
                             </div>
                             <hr />
                             <!-- BOTONES -->
                             <div class="form-row">
                                 
                                 <div class="col-md-2"><br />
                                     <asp:LinkButton ID="Button3" runat="server" OnClick="Button3_Click"  CssClass="buttonColor" ><i class="fa fa-calculator"></i> CALCULAR</asp:LinkButton>
                                 </div>
                                 <div class="col-md-6">
                                     <label for="valorcalcular">Valor</label>
                                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="mGrid" ShowHeader="False" BorderStyle="None">
                                         <Columns>
                                             <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" DataFormatString="{0:0.00}" />
                                             <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" visible="false" />
                                             <asp:BoundField DataField="Plan" HeaderText="Plan" SortExpression="Plan" visible="false" />
                                         </Columns>
                                     </asp:GridView>
                                     <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Valor], [Producto], [Plan] FROM [PRODUCTOS]"></asp:SqlDataSource>
                                 </div>
                                 <div class="col-md-auto">
                                     <br />
                                     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Button1_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> ADICIONAR </asp:LinkButton>
                                     <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Button5_Click" CssClass="buttonColor"> CANCELAR </asp:LinkButton>
                                 </div>
                             </div>
                         </div>
                     </form>
                 </div>
             </div>
         </body>
     </html>
 </asp:Content>


    
