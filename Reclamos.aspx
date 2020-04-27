<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reclamos.aspx.cs" Inherits="Affis.Reclamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
    
        
        <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="RECLAMOS"></asp:Label>
            </td>
          
        </tr>
        <tr>
            <td>
                                <asp:Label ID="Label7" runat="server" CssClass="textomini" Text="Cedula de Identidad"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="CEDULA" Width="25%"></asp:TextBox>
                                <br />
                    
                    
                    <table>
                        <tr>
                            <td>
                                <asp:LinkButton ID="Button1" runat="server" Text="REVISAR" OnClick="Button1_Click" class="btn btn-primary"><i class="fa fa-search"></i> REVISAR</asp:LinkButton>
                                &nbsp
                                <asp:LinkButton ID="Button8" runat="server" OnClick="Button8_Click"  CssClass="btn btn-danger" style="margin-left: 0px" Width="115px"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="btn btn-primary"></asp:LinkButton>

                      </td>
                        </tr>
                    </table>                    
                    
         
        </tr>
        
    </table>
    <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridcalc" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="860px">
        <Columns>
            <asp:BoundField DataField="Fecha" HeaderText="FECHA" SortExpression="Fecha" />
            <asp:BoundField DataField="numero" HeaderText="CASO" InsertVisible="False" ReadOnly="True" SortExpression="numero" />
            <asp:BoundField DataField="nombre" HeaderText="TOMADOR" SortExpression="nombre" />
            <asp:BoundField DataField="entidadtomadora" HeaderText="EMPRESA" SortExpression="entidadtomadora" />
            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="SELECCIONAR" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Fecha], [numero], [nombre], [entidadtomadora] FROM [CASOS] WHERE ([cedula] = @cedula)">
        <SelectParameters>
            <asp:SessionParameter Name="cedula" SessionField="caso" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
