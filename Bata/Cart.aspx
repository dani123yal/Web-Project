<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Bata.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:15%"></div>
    <asp:Repeater id="cart" runat="server" >
        <HeaderTemplate>
            <table style="top:50px;" border="1" cellpadding="15">
               <thead>
                    <td>
                        Name
                    </td>
                    <td>
                        Price
                    </td>
                   <td>
                        Image
                    </td>
                </thead>
                <tbody>
        </HeaderTemplate>
        <ItemTemplate>
                <tr>
                    <td>
                        <%# Eval("productName") %>
                    </td>
                    <td>
                        <%# Eval("price") %>
                    </td>
                    <td>
                        <img src="<%# Eval("imagePath") %>" alt="image" />
                    </td>
                </tr>
        </ItemTemplate>
        <FooterTemplate>
            </tbody>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
