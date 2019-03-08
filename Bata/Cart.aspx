<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Bata.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater id="cart" runat="server">
        <ItemTemplate>
            <table>
                <th>
                    <td>
                        Name
                    </td>
                    <td>
                        Price
                    </td>
                </th>
                <tr>
                    <td>
                        <%# Eval("productName") %>
                    </td>
                    <td>
                        <%# Eval("price") %>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
