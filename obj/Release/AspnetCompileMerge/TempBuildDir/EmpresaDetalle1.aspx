<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmpresaDetalle1.aspx.cs" Inherits="Affis.EmpresaDetalle1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRECOMERCIAL" DataValueField="NOMBRECOMERCIAL" CssClass="dropdown-content">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [NOMBRECOMERCIAL] FROM [EMPRESAS] WHERE ([RUC] IS NULL)"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <table>
        <tr>
            <td>
                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="btn btn-primary"></asp:LinkButton>
                &nbsp;
                <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click"  CssClass="btn btn-primary" ><i class="fa fa-forward"></i> SIGUIENTE</asp:LinkButton>
                &nbsp;&nbsp; 
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CANCELAR" CssClass="btn btn-danger"/>
            </td>
        </tr>
    </table>
                    </asp:Content>
