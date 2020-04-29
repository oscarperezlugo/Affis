<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioAdicion.aspx.cs" Inherits="Affis.InicioAdicion" MasterPageFile="~/Site.Master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1"> 
    <asp:Label ID="Label12" runat="server" CssClass="treeNode" Text="ADICION"></asp:Label>
    <br />
    <br />
    <!DOCTYPE html>

<html>
<head >
    <title></title>
   
</head>
<body>
    
        <table >
            <tr>
                
                 
                <td class="auto-style2"  >
                    
                    
                    <br />
                    <br />
                                <asp:Label ID="Label6" runat="server" CssClass="textomini" Text="Cedula"></asp:Label>
                    <br />
                    
                    <asp:TextBox ID="TextBox1" placeholder="CEDULA" runat="server" class="form-control" Width="200"></asp:TextBox>
                    <asp:Label ID="Label13" runat="server" CssClass="texto"></asp:Label>
                    <br />
                    <br />
                    
                    
                    <table>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" Text="&lt;i class=&quot;fa fa-search&quot;&gt;&lt;/i&gt; BUSCAR" OnClick="Button1_Click" class="btn btn-lg btn-primary"></asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="BtnAtras" runat="server" Text="&lt;i class=&quot;fa fa-backward&quot;&gt;&lt;/i&gt; ATRAS" OnClientClick="history.back(); return false;" class="btn btn-lg btn-primary"></asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="BtnCancelar" runat="server" OnClick="BtnCancelar_Click" Text="CANCELAR" class="btn btn-lg btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>
                            </td>
                        </tr>
                    </table>

                    <br />
                    <br />
                    
                    
                    <asp:GridView ID="GridView1" runat="server" width="900px" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  CssClass="gridcalc" DataSourceID="SqlDataSource1" >
                        <Columns>
                            <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" >
                            </asp:BoundField>
                            <asp:BoundField DataField="NOMBRESCOMPLETOS" HeaderText="NOMBRES COMPLETOS" SortExpression="NOMBRESCOMPLETOS" >
                            </asp:BoundField>
                            <asp:BoundField DataField="NUMERODECERTIFICADO" HeaderText="NUMERO DE CERTIFICADO" SortExpression="NUMERODECERTIFICADO" >
                            <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="Red" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" >
                            <ItemStyle Font-Bold="True" />
                            </asp:BoundField>
                            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="+" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="black" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT [CEDULA], [NOMBRESCOMPLETOS], [NUMERODECERTIFICADO], [ESTADO] FROM [ASEGURADOS] WHERE (([CEDULA] = @CEDULA) AND ([NUMERODECERTIFICADO] IS NOT NULL) AND ([RELACION] = @RELACION))">
                        <SelectParameters>
                            <asp:SessionParameter Name="CEDULA" SessionField="cedulaadc" Type="String" />
                            <asp:Parameter DefaultValue="TOMADOR" Name="RELACION" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    
                    
                &nbsp;<br />
                    
                    
                </td>
        
              
            
            </tr>
            
        </table>
        
        
        
        
            
        
     
        
        
        
        
        
        
        
        
            
        
     
        
        
        
   
</body>
</html>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
        <%: Scripts.Render("~/bundles/modernizr") %>
        <style type="text/css">
            .auto-style2 {
                width: 199%;
            }
        </style>
    </asp:Content>
