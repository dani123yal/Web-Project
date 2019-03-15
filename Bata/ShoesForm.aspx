<%@ Page Title="" Language="C#" MasterPageFile="~/cartMaster.Master" AutoEventWireup="true" CodeBehind="ShoesForm.aspx.cs" Inherits="Bata.ShoesForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <style type="text/css">
        /*.auto-style2 {
            margin-top: 300px;
        }
        .auto-style3 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 16.666667%;
            flex: 0 0 16.666667%;
            max-width: 16.666667%;
            left: -6px;
            top: 227px;
            padding-left: 15px;
            padding-right: 15px;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-7">
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
            <div class="col-md-1"></div>
        </div>

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-10">
            </div>
            <div class="col-md-2"></div>
        </div>
    
</asp:Content>
