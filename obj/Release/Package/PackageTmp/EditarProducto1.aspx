<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarProducto1.aspx.cs" Inherits="Affis.EditarProducto1" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label12" runat="server" CssClass="treeNode" Text="EDICION DE PRODUCTOS"></asp:Label>
    <br />
    <br />
    <!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>
    
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Codigo" DataValueField="Codigo" CssClass="dropdown-content">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [Codigo] FROM [PRODUCTOS]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click">SELECCIONAR</asp:LinkButton>
        </div>
    
</body>
</html>
    </asp:Content>
