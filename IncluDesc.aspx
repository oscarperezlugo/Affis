<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IncluDesc.aspx.cs" Inherits="Affis.IncluDesc" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
 <asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 

     <div class="container">
         <div class="card">
             <div class="card-header">
                 <div class="form-row">
                     <div class="col-8">
                         <h3><b> INCLUSIÓN </b></h3>
                     </div>
                     <div class="col-auto">
                         <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="buttonColor"><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                     </div>
                 </div>
             </div>
             <div class="card-body">
                 <div class="form-row">
                     <div class="col-6">
                         <label for="tomadorcedula">Tomador Cédula</label><br />
                         <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Tomador Cédula"></asp:TextBox>
                     </div>
                 </div>
                 <div class="form-row">
                     <div class="col-4">
                         <br />
                         <label for="ceudla">Cédula</label><br />
                         <asp:TextBox id="Text3" placeholder="Cédula" type="text" runat="server" class="form-control"/><br />
                     </div>
                     <div class="col-4">
                         <br />
                         <label for="nombcompleto">Nombre Completo</label><br />
                         <asp:TextBox id="Text6" placeholder="Nombre Completo" type="text" runat="server" class="form-control"/>
                     </div>
                     <div class="col-2">
                         <br />
                         <label for="genero">Género</label><br />
                         <asp:DropDownList ID="DropDownList1" runat="server" class="dropdownStyle" Width="100%">
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                         </asp:DropDownList>
                     </div>
                     <div class="col-2">
                         <br />
                         <label for="realcion">Relación</label><br />
                         <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdownStyle" Width="100%">
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
                     <div class="col-4">
                         <label for="fechanac">Fecha de Nacimiento</label><br />
                         <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
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
                         <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                     </div>
                     <div class="col-6">
                         <label for="producto">Producto</label><br />
                         <asp:DropDownList ID="DropDownList8" runat="server"  Width="100%" CssClass="dropdownStyle">
                            <asp:ListItem>Producto</asp:ListItem>
                            <asp:ListItem>Muerte accidental y desmembración accidental</asp:ListItem>
                            <asp:ListItem>Renta diaria por hospitalización</asp:ListItem>
                            <asp:ListItem>Beca educativa</asp:ListItem>
                        </asp:DropDownList>
                     </div>
                     <div class="col-2">
                         <label for="plan">Plan</label><br />
                         <asp:DropDownList ID="DropDownList7" runat="server" Width="100%" CssClass="dropdownStyle"  >
                            <asp:ListItem Value="null">Plan</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                        </asp:DropDownList>
                     </div>
                 </div>
                 <div class="form-row">
                     <div class="col-2">
                         <br />
                         <label for="" class="invisible">Boton</label><br />
                         <asp:LinkButton ID="Button3" runat="server" OnClick="Button3_Click"  CssClass="buttonColor" ><i class="fa fa-calculator"></i> CALCULAR</asp:LinkButton>
                     </div>
                     <div class="col-auto">
                         <br />
                         <label for="valor">Valor</label><br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="mGrid" ShowHeader="False" BorderStyle="None">
                        <Columns>
                            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" DataFormatString="{0:0.00}" />
                            <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" visible="false" />
                            <asp:BoundField DataField="Plan" HeaderText="Plan" SortExpression="Plan" visible="false" />
                        </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Valor], [Producto], [Plan] FROM [PRODUCTOS]"></asp:SqlDataSource>
                     </div>
                     <div class="col-auto">
                         <br /><br />
                         <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
                     </div>
                     <div class="col-6"></div>
                     <div class="col-2">
                         <br />
                         <label for="" class="invisible">Adicionar</label><br />
                         <asp:LinkButton ID="Button1" runat="server" OnClick="Button1_Click" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> ADICIONAR</asp:LinkButton>
                     </div>
                 </div>
                 <div><hr /></div>
                 <div class="form-row">
                     <div class="col-12" style="padding-left: 45%">
                         <asp:LinkButton ID="Button5" runat="server" OnClick="Button5_Click" CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </asp:Content>
    
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
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
            }
            .mGrid td {
                border-radius: 0.25rem;
                border: 1px solid #ced4da;
                height: calc(1.5em + 0.75rem + 2px);
                display: block;
                font-size: 1rem;
                padding: 0.375rem 0.75rem;
                background-color: #fff;
                background-clip: padding-box;
            }
    </style>
</asp:Content>

    
