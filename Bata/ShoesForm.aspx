<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShoesForm.aspx.cs" Inherits="Bata.ShoesForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-top: 300px;
        }
    </style>
</asp:Content>
<asp:Content class="container" ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
            <asp:DataList id="datalist" runat="server" Height="400px" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="auto-style2">
                <HeaderTemplate>
                        <ul>
                </HeaderTemplate>
                <ItemTemplate>
                <li class="last" style="list-style:none;">    
                    <div class="image">
                        <a href="productDetail.aspx?id=<%#Eval("pId")%>"><img src="<%#Eval("pImage")%>"  alt="Alternate Text" width="100%" /></a>
                    </div>
                    <div class="info text-center">
                        <h3><%#Eval("pName")%></h3>
                        <strong>
                            <h3><%#Eval("pPrice")%></h3>
                        </strong>
                    </div>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                    </ul>
            </FooterTemplate>
        </asp:DataList>
            </div>
            <div class="col-md-2">

            </div>
        </div>

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-10">
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    
</asp:Content>
