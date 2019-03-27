<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="OrderConfirmtion.aspx.cs" Inherits="Bata.OrderConfirmtion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cover" runat="server">
    <div class="justify-content-center">
        <h1>Your Order Has Been Placed</h1>
        <h2 runat="server" id="ordId">Order ID: </h2>
        
        <br />
        <h2 runat="server" id="ttl">Total Amount of Order: <%= total.ToString()%></h2>
        <h3>It will be delivered to your doorstep in 3 days</h3>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
