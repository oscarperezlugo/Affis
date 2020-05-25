<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inclusion2.aspx.cs" Inherits="Affis.Inclusion2" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 

    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-8">
                        <h2><b> INCLUSIÓN </b></h2>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-3">
                        <label for="cedul">Cédula de Identidad</label><br />
                        <asp:TextBox id="Text3" placeholder="Cédula de Identidad" type="text" runat="server" class="form-control" MaxLength="10" />
                        <asp:RequiredFieldValidator ID="rfv_cedula" runat="server" ErrorMessage="El campo cédula es obligatorio" ControlToValidate="Text3" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-4">
                        <label for="nombrecomp">Nombre Completo</label><br />
                        <asp:TextBox id="Text6" class="form-control" placeholder="Nombre Completo" type="text" runat="server" />
                        <asp:RequiredFieldValidator ID="rfv_nombre" runat="server" ErrorMessage="El campo nombre es obligatorio" ControlToValidate="Text6" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-5">
                        <label for="direccion">Dirección</label><br />
                        <asp:TextBox id="Text1" class="form-control" placeholder="Dirección" runat="server"/>
                    </div>
                </div>
                <div class="form-row">                    
                    <div class="col-3">
                        <label for="email">Email</label><br />
                        <asp:TextBox id="Text2" placeholder="Email" type="text" runat="server" class="form-control"/>
                    </div>
                    <div class="col-3">
                        <label for="cargo">Cargo</label><br />
                        <asp:TextBox id="cargo1" class="form-control" placeholder="Cargo" type="text" runat="server" />
                    </div>
                    <div class="col-2">
                        <label for="genero">Género</label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownStyle" Width="100%" Enabled="True">
                            <asp:ListItem Value="null">Género</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_Genero" runat="server" ErrorMessage="El campo genero es obligatorio" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-4">
                        <label for="fechanac">Fecha de Nacimiento</label><br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle"></asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdownStyle">
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
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_anho" runat="server" ErrorMessage="Año" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfv_mes" runat="server" ErrorMessage="Mes" ControlToValidate="DropDownList3" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfv_dia" runat="server" ErrorMessage="Día" ControlToValidate="DropDownList4" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-4">
                        <label for="tlfcelular">Teléfono Celular</label><br />
                        <asp:TextBox id="Text7" class="form-control" placeholder="Teléfono Celular" type="text" runat="server" />
                        <br />
                    </div>
                    <div class="col-4">
                        <label for="tlfdomicilio">Teléfono Domicilio</label><br />
                        <asp:TextBox id="Text8" class="form-control" placeholder="Teléfono Domicilio" type="text" runat="server" />
                        <br />
                    </div>
                    <div class="col-4">
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                        <label for="iniciovigen">Inicio de Vigencia</label><br />
                        <asp:DropDownList ID="DropDownList5" runat="server" datasourceid="SqlDataSource4" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdownStyle">
                        </asp:DropDownList>
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
                        <asp:DropDownList ID="DropDownList7" runat="server" datasourceid="SqlDataSource5" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdownStyle">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-row">
                   <div class="col-4">
                        <label for="pregunta">¿El tomador es un asegurado?</label><br />
                        <asp:RadioButtonList id="RadioButtonList1" runat="server" RepeatDirection="Horizontal"  >
                            <asp:ListItem>&nbsp;Si&nbsp;</asp:ListItem>
                            <asp:ListItem>&nbsp;No&nbsp;</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-4">
                        <label for="codg">Código</label><br />
                        <asp:TextBox id="Text9" class="form-control" placeholder="Código" type="text" runat="server"/>
                    </div>
                    <div class="col-4">
                        <label for="" class="invisible">Guardar</label><br />
                        <asp:LinkButton ID="Button1" runat="server" OnClick="btn_Registrar_Click" Text="REGISTRAR" CssClass="buttonColor"><i class="fa fa-plus-circle"></i> REGISTRAR</asp:LinkButton>
                    </div>
                </div>
                <div><hr /></div>
                <div class="form-row">
                    <div class="col-12" align="center">
                        <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click" Text="CANCELAR" CssClass="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <%--   YA ESTABA COMENTADO, NO SE BORRA POR POSIBLE USO A FUTURO

         <td class="texto">FECHA EFECTIVA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
         <td >
         <asp:DropDownList ID="DropDownList8" runat="server" datasourceid="SqlDataSource6" DataTextField="AÑO" DataValueField="AÑO" CssClass="dropdown-content">
         </asp:DropDownList>
         </td>
         <td>
         <asp:DropDownList ID="DropDownList12" runat="server" CssClass="dropdown-content">
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
         </td>
         <td>
         <asp:DropDownList ID="DropDownList10" runat="server" datasourceid="SqlDataSource7" DataTextField="DIA_" DataValueField="DIA_" CssClass="dropdown-content">
         </asp:DropDownList>
         </td>
         </tr>


                      <asp:RadioButton ID="CheckBox1" Text="SI" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                    <asp:RadioButton ID="CheckBox2" Text="NO" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" /> 

                    <br />
                    <asp:Label ID="Label15" runat="server" CssClass="textomini" Text="Codigo"></asp:Label>
                    <br />
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [AÑO] FROM [ANO$]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [DIA ] AS DIA_ FROM [DIA$]"></asp:SqlDataSource>
                    <br />
              <asp:LinkButton ID="Button3" runat="server"  Text="SRI" OnClick="Button3_Click" CssClass="btn btn-secondary"><i class="fa fa-search"></i> SRI</asp:LinkButton>
                    <asp:LinkButton ID="Button4" runat="server"  Text="CEDULA" OnClick="Button4_Click" CssClass="btn btn-secondary"><i class="fa fa-search"></i> CEDULA</asp:LinkButton>
                    <asp:LinkButton ID="Button7" runat="server"  Text="RGCE" OnClick="Button7_Click" CssClass="btn btn-secondary"><i class="fa fa-search"></i> R.CIVIL</asp:LinkButton> --%>

    </asp:Content>
