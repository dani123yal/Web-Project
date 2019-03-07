<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShoesForm.aspx.cs" Inherits="Bata.ShoesForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-top: 270px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="conatainer">
        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-8">
            <asp:DataList id="datalist" runat="server" Height="400px" RepeatColumns="1" RepeatDirection="Vertical" Width="433px" CssClass="auto-style2">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <a href="#"><%#Eval("pName")%></a> 
                        </td>
                        <td>
                            <img src="<%#Eval("pImage")%>" alt="Alternate Text" width="100%"/>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">ashdhj</div>
            <div class="col-md-6">asdajsdjkh</div>
        </div>
    </div>
    
</asp:Content>
