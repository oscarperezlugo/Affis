<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="Affis.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT TOP 5 EJECUTIVO, SUM(TOTAL) AS TotalQuantity FROM ASEGURADOS GROUP BY EJECUTIVO order by TotalQuantity DESC
"></asp:SqlDataSource>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="328px">
                    <Series>
                        <asp:Series ChartType="Doughnut" Name="Series1" XValueMember="EJECUTIVO" YValueMembers="TotalQuantity">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" ShowFooter="False" ShowHeader="False">
                    <ItemTemplate>
                        
                        <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AffinityConnectionString %>" SelectCommand="SELECT SUM(TOTAL) FROM ASEGURADOS"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource3">
                    <Series>
                        <asp:Series ChartType="Area" Name="Series1">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
