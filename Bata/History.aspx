<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Bata.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cover" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <asp:Repeater id="history" runat="server">
                <HeaderTemplate>
                    <table id="myTable" class="table table-striped">
                    <thead>
                        <tr>
                            <td>Order Number</td>
                            <td>Order Date</td>
                            <td>Address</td>
                            <td>Total Price</td>
                            <td>Status</td>
                            <td>View</td>
                        </tr>
                    </thead>
                    <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%# Eval("OrdNo")%>
                        </td>
                        <td>
                            <%# Eval("ordDate")%>
                        </td>
                        <td>
                            <%# Eval("ordAddress")%>
                        </td>
                        <td>
                            <%# Eval("total")%>
                        </td>
                        <td>
                            <%# Eval("ordStatus")%>
                        </td>
                        <td>
                            <a href="HistoryDetails.aspx?id=<%# Eval("ordId")%>" class="btn btn-info">
                                <i class="fa fa-info"></i> View Details
                            </a>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                </tbody>
                </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
        <div class="col-md-1"></div>
    </div>
</asp:Content>
