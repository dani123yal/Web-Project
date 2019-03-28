<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Bata.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cover" runat="server">
        <a href="Cart.aspx" class="btn btn-info">
            <i class="fa fa-arrow-circle-left"></i> Back to Cart
        </a>
    <h1>Enter Shipment Information</h1>

    Username<input id="Text1" type="text" runat=server  />
    <br />
    Shipment Address<input id="Text2" type="text" runat=server required/>
    <br />

    <h2>Your Order:</h2>
    <br />
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
                        qty
                    </td>
                   <td>
                        Total
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
                        <img id="prodImg" src="<%# Eval("imagePath") %>" alt="image" width="100px" />
                    </td>
                    <td>
                        <asp:Label runat="server" ID="Label1" Text='<%# Eval("qty") %>' />
                    </td>
                    <td>
                        <asp:Label runat="server" ID="Label2" Text='<%# Eval("total") %>' />
                    </td>
                </tr>
        </ItemTemplate>
        <FooterTemplate>
            </tbody>
            </table>
        </FooterTemplate>
    </asp:Repeater>
        <input type="submit" id="Btn" runat="server" value="Confirm Order" class="btn-danger" onserverclick="Button1_Click" style="align-items:center"/>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
