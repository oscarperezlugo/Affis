<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adicion.aspx.cs" Inherits="Affis.Adicion" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
 
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
     <!DOCTYPE html>
     <html>
         <head>
         </head>
         <body>
             <div class ="container">
                 <div class="card">
                     <form>
                         <!-- CABEZERA -->
                         <div class="card-header">
                             <div class="form-row">
                                 <div class="col-8">
                                     <h2><b>ADICION </b></h2>
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
                                     <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="TOMADOR CEDULA"></asp:TextBox><br />
                                 </div>
                                 <div class="col-md-6">
                                     <label for="cedula">Cédula</label>
                                     <asp:TextBox id="Text3" placeholder="CEDULA" type="text" runat="server" class="form-control"/><br />
                                 </div>
                             </div>
                             <div class="form-row">
                                 <div class="col-md-6">
                                     <label for="nombrecompleto">Nombre Completo</label><br />
                                     <asp:TextBox id="Text6" placeholder="NOMBRE COMPLETO" type="text" runat="server" class="form-control"/><br />
                                 </div>
                                 <div class="col-md-3">
                                     <label for="genero">Género</label><br />
                                     <asp:DropDownList ID="DropDownList1" runat="server" class="dropdown-content" CssClass="dropdownStyle">
                                         <asp:ListItem Value="null">GENERO</asp:ListItem>
                                         <asp:ListItem>MASCULINO</asp:ListItem>
                                         <asp:ListItem>FEMENINO</asp:ListItem>
                                     </asp:DropDownList>
                                 </div>
                                 <div class="col-md-3">
                                     <label for="relacion">Relación</label><br />
                                     <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdownStyle">
                                         <asp:ListItem>RELACION</asp:ListItem>
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
                                         <asp:ListItem Value="1">ENERO</asp:ListItem>
                                         <asp:ListItem Value="2">FEBRERO</asp:ListItem>
                                         <asp:ListItem Value="3">MARZO</asp:ListItem>
                                         <asp:ListItem Value="4">ABRIL</asp:ListItem>
                                         <asp:ListItem Value="5">MAYO</asp:ListItem>
                                         <asp:ListItem Value="6">JUNIO</asp:ListItem>
                                         <asp:ListItem Value="7">JULIO</asp:ListItem>
                                         <asp:ListItem Value="8">AGOSTO</asp:ListItem>
                                         <asp:ListItem Value="9">SEPTIEMBRE</asp:ListItem>
                                         <asp:ListItem Value="10">OCTUBRE</asp:ListItem>
                                         <asp:ListItem Value="11">NOVIEMBRE</asp:ListItem>
                                         <asp:ListItem Value="12">DICIEMBRE</asp:ListItem>
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
                                         <asp:ListItem>PRODUCTO</asp:ListItem>
                                         <asp:ListItem>Muerte accidental y desmembración accidental</asp:ListItem>
                                         <asp:ListItem>Renta diaria por hospitalización</asp:ListItem>
                                         <asp:ListItem>Beca educativa</asp:ListItem>
                                     </asp:DropDownList>
                                 </div>
                                 <div class="col-auto">
                                     <label for="plan">Plan</label><br />
                                     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Producto] FROM [PRODUCTOS]"></asp:SqlDataSource>
                                     <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdownStyle"  >
                                         <asp:ListItem Value="null">PLAN</asp:ListItem>
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
                                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="gridcalc" ShowHeader="False" Width="10%" >
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


    
