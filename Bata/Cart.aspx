﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Bata.Cart" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.0.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" EnablePageMethods="true">
    </asp:ScriptManager>
    <p id="error" runat="server"></p>
    <asp:Repeater id="cart" runat="server" >
        <HeaderTemplate>
            <table id="tbl" style="top:50px;" border="1" cellpadding="30">
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
                   <td>
                        
                    </td>
                </thead>
                <tbody>
        </HeaderTemplate>
        <ItemTemplate>
                <tr>  
                    <td>
                        <asp:Label runat="server" ID="id" Visible="false" Text='<%# Eval("id") %>' />
                        <asp:Label runat="server" ID="prodName" Text='<%# Eval("productName") %>' />
                    </td>
                    <td>
                        <asp:Label runat="server" ID="prodPrice" Text='<%# Eval("price") %>' />
                    </td>
                    <td>
                        <img id="prodImg" src="<%# Eval("imagePath") %>" alt="image" width="100px"/>
                    </td>
                    <td>
                        <asp:LinkButton runat="server" onclick="delete" class="btn btn-danger"><i class="fa fa-trash-o"></i> Remove</asp:LinkButton>
                    </td>
                </tr>
        </ItemTemplate>
        <FooterTemplate>
            </tbody>
            </table>
        </FooterTemplate>
    </asp:Repeater>

    <asp:Button ID="Button1" runat="server" Text="Checkout" CssClass="btn-primary btn btn-danger" OnClick="Button1_Click" style="align-items:center" />


    <hr style="border-top:1px dashed red;"/>

    <script type="text/javascript">
    </script>
</asp:Content>
