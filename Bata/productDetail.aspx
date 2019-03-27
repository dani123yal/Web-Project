<%@ Page Title="" Language="C#" MasterPageFile="~/cartMaster.Master" AutoEventWireup="true" CodeBehind="productDetail.aspx.cs" Inherits="Bata.productDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .prodPage {
            margin-top: 30px;
        }

        /*.auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 16.666667%;
            flex: 0 0 16.666667%;
            max-width: 16.666667%;
            left: -11px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }*/
        .container{
            margin-top:0px;
        }
        
        .div1 {
              width: 50px;    
              height: 30px;
              border: 1px solid #bcbcbc;
              box-sizing: border-box;
}
        
        .swatch-attribute-label {
            font-weight: 600;
            font-size: 16px;
            color: #141414;
            position: relative;
                                        }
        .swatch-attribute-selected-option {
            color: #7e2c3a;
            padding-left: 17px;
        }
                .label {
            font-weight: 500;
         margin: 0 0 8px;
        }



         .price {
                    font-size: 15px !important;
                    font-weight: 500 !important;
                } 
         .product-info-main .product-info-stock-sku {
                min-width: 15rem;
                display: table-cell;
                vertical-align: top;
                padding-bottom: 10px;
                color: #888;
            }
         .info-stock-sku {
                color: #bcbcbc !important;
                font-weight: bold;
            }
         .stock.available, .product-info-main .stock.unavailable {
                color: #7e2c3a;
                display: none;
            }
           

    </style>
    <div class="container prodPage">
                <div class="row">
                    <div class="auto-style1 col-md-2">
                    <asp:DataList ID="img" runat="server">
                      <HeaderTemplate>
                      </HeaderTemplate>
                        <ItemTemplate>
                        <div class="row">
                            <div class="card shadow" style="width: 8rem;">
                                <img src="<%#Eval("shoeImage")%>" class="card-img-top" alt="...">
                            </div>
                        </div>
                        </ItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:DataList>
                        </div>
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                  <div class="carousel-inner">
                                     <div class="inner1">
                                    <asp:Repeater ID="carousel" runat="server">
                                       <HeaderTemplate>
                                       </HeaderTemplate>
                                       <ItemTemplate>
                                    <div class="carousel-item <%# (Container.ItemIndex == 0 ? "active" : "") %>">
                                       <img src="<%# Eval("shoeImage").ToString() %>"  class="d-block w-100" alt="..." />
                                      </div>    
                                        </ItemTemplate>
                                       <FooterTemplate>
                                       </FooterTemplate>
                                       </asp:Repeater>
                                  </div>
                                  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon alert-dark" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                  </a>
                                  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                  </a>
                                </div>
                            </div>
                  </div>
                            
                    <div class="col-md-5" style="border-style:hidden; border-width: 1px; border-color: darkgray;">
            <asp:Repeater ID="prod" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                        <div class="page-title-wrapper product">
                        <h1 class="page-title">
                   <span class="base" data-ui-id="page-title-wrapper" itemprop="name"><%# Eval("shoeName")%></span>
                            </h1> 
             <div class="product-info-stock-sku">
                    <div class="product attribute sku">
                  <strong class="type">SKU</strong><div class="value" itemprop="sku"></div>
              </div>
     
                </div>
            </div>
             <span class="price pad"><br>PKR <%# Eval("shoePrice")%> </span>
                       
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
                        <div> <br />
                        <span class="swatch-attribute-label">Color</span>
                        </div>
                        <input type="color" name="" value="black" disabled><br><br>
                        <div><br />
                        <span class="swatch-attribute-label">Size</span>
                            <br />
                        <span class="swatch-attribute-selected-option">
                            <select id="size" runat="server" size="3">
                            <option class="div1" value="3" selected>
                                36/3
                            </option>
                            <option class="div1" value="4">
                                37/4
                            </option>
                            <option class="div1" value="6">
                                39/6
                            </option>
                            </select>
                            <br>
                        </span>
                        </div>
                        <div>
                            <br />
                        <label class="label" for="qty"><span>Qty</span></label></div>
                        <input type="number" min="1" max="10" id="qty" value="1" runat="server"/>
                        <div></div>
                        <asp:Button runat="server" type="button" ID="b1" class="btn btn-block btn-danger" Text="add to cart" OnClick="addToCart" />
</div>
    </div>
</div>
</asp:Content>