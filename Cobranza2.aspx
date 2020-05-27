<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cobranza2.aspx.cs" Inherits="Affis.Cobranza2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td>
    
        
        <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="COBRANZAS GESTION-EMPRESA"></asp:Label>
                <br />
            </td>
            
        </tr>
        <tr>
            <td>
                                <asp:Label ID="Label8" runat="server" CssClass="textomini" Text="MES DE FACTURACION"></asp:Label>
                    <br />
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridcalc" DataSourceID="SqlDataSource1" Width="800px">
                                    <Columns>
                                        <asp:BoundField DataField="RAZON_SOCIAL" HeaderText="RAZON_SOCIAL" SortExpression="RAZON_SOCIAL" />
                                        <asp:BoundField DataField="NOMBRECOMERCIAL" HeaderText="NOMBRECOMERCIAL" SortExpression="NOMBRECOMERCIAL" />
                                        <asp:BoundField DataField="CLASE" HeaderText="CLASE" SortExpression="CLASE" />
                                        <asp:BoundField DataField="POLIZA" HeaderText="POLIZA" SortExpression="POLIZA" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [RAZON SOCIAL] AS RAZON_SOCIAL, [NOMBRECOMERCIAL], [CLASE], [POLIZA] FROM [EMPRESAS] WHERE ([RAZON SOCIAL] = @RAZON_SOCIAL)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="RAZON_SOCIAL" SessionField="empresacobro" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="gridcalc" DataSourceID="SqlDataSource2" Width="800px">
                    <Columns>
                        <asp:BoundField DataField="EMITEN_FACTURA_DE_COMISIÓN" HeaderText="EMITEN_FACTURA_DE_COMISIÓN" SortExpression="EMITEN_FACTURA_DE_COMISIÓN" />
                        <asp:BoundField DataField="PORCENTAJE_DE_COMISIÓN" HeaderText="PORCENTAJE_DE_COMISIÓN" SortExpression="PORCENTAJE_DE_COMISIÓN" />
                        <asp:BoundField DataField="FECHA_DE_LLAMADA_PARA_EL_COBRO" HeaderText="FECHA_DE_LLAMADA_PARA_EL_COBRO" SortExpression="FECHA_DE_LLAMADA_PARA_EL_COBRO" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [EMITEN FACTURA DE COMISIÓN] AS EMITEN_FACTURA_DE_COMISIÓN, [PORCENTAJE DE COMISIÓN] AS PORCENTAJE_DE_COMISIÓN, [FECHA DE LLAMADA PARA EL COBRO] AS FECHA_DE_LLAMADA_PARA_EL_COBRO FROM [EMPRESAS] WHERE ([RAZON SOCIAL] = @RAZON_SOCIAL)">
                    <SelectParameters>
                        <asp:SessionParameter Name="RAZON_SOCIAL" SessionField="empresacobro" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="gridcalc" DataSourceID="SqlDataSource3" Width="800px">
                    <Columns>
                        <asp:BoundField DataField="CONTACTO_COBRANZA_1" HeaderText="CONTACTO_COBRANZA_1" SortExpression="CONTACTO_COBRANZA_1" />
                        <asp:BoundField DataField="TELEFONO_12" HeaderText="TELEFONO_12" SortExpression="TELEFONO_12" />
                        <asp:BoundField DataField="CELULAR_12" HeaderText="CELULAR_12" SortExpression="CELULAR_12" />
                        <asp:BoundField DataField="EMAIL_COBRANZA_1" HeaderText="EMAIL_COBRANZA_1" SortExpression="EMAIL_COBRANZA_1" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [CONTACTO COBRANZA 1] AS CONTACTO_COBRANZA_1, [TELEFONO 12] AS TELEFONO_12, [CELULAR 12] AS CELULAR_12, [EMAIL COBRANZA 1] AS EMAIL_COBRANZA_1 FROM [EMPRESAS] WHERE ([RAZON SOCIAL] = @RAZON_SOCIAL)">
                    <SelectParameters>
                        <asp:SessionParameter Name="RAZON_SOCIAL" SessionField="empresacobro" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CssClass="gridcalc" DataSourceID="SqlDataSource4" Width="800px">
                    <Columns>
                        <asp:BoundField DataField="CONTACTO_COBRANZA_2" HeaderText="CONTACTO_COBRANZA_2" SortExpression="CONTACTO_COBRANZA_2" />
                        <asp:BoundField DataField="TELEFONO_22" HeaderText="TELEFONO_22" SortExpression="TELEFONO_22" />
                        <asp:BoundField DataField="CELULAR_22" HeaderText="CELULAR_22" SortExpression="CELULAR_22" />
                        <asp:BoundField DataField="EMAIL_COBRANZA_2" HeaderText="EMAIL_COBRANZA_2" SortExpression="EMAIL_COBRANZA_2" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [CONTACTO COBRANZA 2] AS CONTACTO_COBRANZA_2, [TELEFONO 22] AS TELEFONO_22, [CELULAR 22] AS CELULAR_22, [EMAIL COBRANZA 2] AS EMAIL_COBRANZA_2 FROM [EMPRESAS] WHERE ([RAZON SOCIAL] = @RAZON_SOCIAL)">
                    <SelectParameters>
                        <asp:SessionParameter Name="RAZON_SOCIAL" SessionField="empresacobro" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" ShowHeader="False">
                    <Columns>
                        <asp:BoundField DataField="PRIMA" HeaderText="PRIMA" SortExpression="PRIMA" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [PRIMA] FROM [ASEGURADOS] WHERE ([ENTIDADTOMADORA] = @ENTIDADTOMADORA)">
                    <SelectParameters>
                        <asp:SessionParameter Name="ENTIDADTOMADORA" SessionField="EMPRESACOBRO" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
            
        </tr>
    </table>
    
</asp:Content>
