<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaAsistencia.aspx.cs" Inherits="Affis.ConsultaAsistencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ejecutivo" DataValueField="Ejecutivo" CssClass="btn btn-secondary dropdown-toggle">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Ejecutivo] FROM [Asistencia]"></asp:SqlDataSource>
    <br />
    <br />
                    
                    
                    <asp:LinkButton ID="Button1" runat="server" Text="REVISAR" OnClick="Button1_Click" class="btn btn-lg btn-primary"><i class="fa fa-search"></i> REVISAR</asp:LinkButton>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="564px" CssClass="gridcalc">
        <Columns>
            <asp:BoundField DataField="Ejecutivo" HeaderText="Ejecutivo" SortExpression="Ejecutivo" />
            <asp:BoundField DataField="Mes" HeaderText="Mes" SortExpression="Mes" />
            <asp:BoundField DataField="Año" HeaderText="Año" SortExpression="Año" />
            <asp:BoundField DataField="Dias" HeaderText="Dias" SortExpression="Dias" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Ejecutivo], [Mes], [Año], [Dias] FROM [Asistencia] WHERE ([Ejecutivo] = @Ejecutivo)">
        <SelectParameters>
            <asp:SessionParameter Name="Ejecutivo" SessionField="Asistencia" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
