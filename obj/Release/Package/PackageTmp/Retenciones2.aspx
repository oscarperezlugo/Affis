<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Retenciones2.aspx.cs" Inherits="Affis.Retenciones2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 68px;
        }
        .auto-style4 {
            border-color: white;
            font-family: Arial;
            font-weight: normal;
            color: gray;
            margin-right: 18px;
        }
        .auto-style5 {
            display: block;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style2">
    
        
        <asp:Label ID="Label6" runat="server" CssClass="treeNode" Text="RETENCIONES"></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Gray" OnClick="LinkButton2_Click"><i class="fa fa-search">b</i></asp:LinkButton>
                <br />                                
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Cedula"  CssClass="auto-style5" Width="25%"></asp:TextBox>
                <br />                                
            </td>
            
        </tr>
        <tr>
            <td class="auto-style3">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1014px" CssClass="gridcalc" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE" SortExpression="NOMBRESCOMPLETOS" />
                                        <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                                        <asp:BoundField DataField="ENTIDADTOMADORA" HeaderText="EMPRESA" SortExpression="ENTIDADTOMADORA" />
                                        <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="CERTIFICADO" SortExpression="NUMERODECERTIFICADO" >
                                        <ItemStyle Font-Bold="True" Font-Size="Larger" ForeColor="Red" />
                                        </asp:BoundField>
                                        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="SELECCIONAR" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [ENTIDADTOMADORA], [NUMERODECERTIFICADO] FROM [ASEGURADOS] WHERE ([CEDULA] = @CEDULA)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="CEDULA" SessionField="cedulacer" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" DataSourceID="SqlDataSource2" Width="1014px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRE" SortExpression="NOMBRESCOMPLETOS" />
                                        <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                                        <asp:BoundField DataField="ENTIDADTOMADORA" HeaderText="EMPRESA" SortExpression="ENTIDADTOMADORA" />
                                        <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="CERTIFICADO" SortExpression="NUMERODECERTIFICADO">
                                        <ItemStyle Font-Bold="True" Font-Size="Larger" ForeColor="Red" />
                                        </asp:BoundField>
                                        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="SELECCIONAR" />
                                    </Columns>
                                    <SelectedRowStyle BackColor="#CCCCCC" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRESCOMPLETOS], [CEDULA], [ENTIDADTOMADORA], [NUMERODECERTIFICADO] FROM [ASEGURADOS] WHERE ([NUMERODECERTIFICADO] = @NUMERODECERTIFICADO)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="NUMERODECERTIFICADO" SessionField="cedulacer" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                    
                    
                                <br />
                    </td>
            
        </tr>
        
        <tr>
            <td>
                    
                    
                            &nbsp; 
                    
                    
                </td>
            
        </tr>
    </table>
</asp:Content>
