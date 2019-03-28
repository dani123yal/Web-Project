<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HistoryDetails.aspx.cs" Inherits="Bata.HistoryDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cover" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <asp:Repeater id="history" runat="server">
                <HeaderTemplate>
                    <table id="myTable2" class="table">
                    <thead>
                        <tr>
                            <td>Shoe</td>
                            <td>Shoe Name</td>
                            <td>Category</td>
                            <td>Price</td>
                            <td>Quantity</td>
                        </tr>
                    </thead>
                    <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <img src="<%# Eval("shoeImage")%>" width="200px"/>
                        </td>
                        <td>
                            <%# Eval("shoeName")%>
                        </td>
                        <td>
                            <%# Eval("shoeCategory")%>
                        </td>
                        <td>
                            <%# Eval("shoePrice")%>
                        </td>
                        <td>
                            <%# Eval("quantity")%>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                </tbody>
                </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
