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
        <asp:Repeater ID="prod" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="row">
                    <div class="auto-style1 col-md-2">
                        <div class="row">
                            <div class="card shadow" style="width: 8rem;">
                                <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-a.jpg" class="card-img-top" alt="...">
                            </div>
                        </div>
                        <div class="row">
                            <div class="card shadow" style="width: 8rem;">
                                <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-b.jpg" class="card-img-top" alt="...">
                            </div>
                        </div>
                        <div class="row">
                            <div class="card shadow" style="width: 8rem;">
                                <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/560x560/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-d.jpg" class="card-img-top" alt="...">
                            </div>

                        </div>
                        <div class="row">
                            <div class="card shadow" style="width: 8rem;">
                                <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-e.jpg" class="card-img-top" alt="...">
                            </div>

                        </div>

                    </div>
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                  <div class="carousel-inner">
                                     <div class="inner1">
                                    <div class="carousel-item active">
                                      <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-a.jpg" class="d-block w-100" alt="...">
                                    </div>
                                          
                                    <div class="carousel-item">
                                      <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/560x560/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-b.jpg" class="d-block w-100" alt="...">
                                    </div>
                                    <div class="carousel-item">
                                      <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/560x560/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-d.jpg" class="d-block w-100" alt="...">
                                    </div>
                                       <div class="carousel-item">
                                      <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/560x560/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-e.jpg" class="d-block w-100" alt="...">
                                    </div>
                                  </div>
                                  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                  </a>
                                  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                  </a>
                                </div>
                 
                        </div>
                        <%--             <div class="magnify-lens" data-gallery-role="magnifier-zoom" style="width: 377px; height: 519px; left: 182.5px; top: 77.5px;"></div>--%>
                    </div>
                  
                    <div class="col-md-5" style="border-style:hidden; border-width: 1px; border-color: darkgray;">

                        <div class="page-title-wrapper product">
                        <h1 class="page-title">
                   <span class="base" data-ui-id="page-title-wrapper" itemprop="name"><%# Eval("pName")%></span>
                            </h1> 
             <div class="product-info-stock-sku">
                    <div class="product attribute sku">
                  <strong class="type">SKU</strong><div class="value" itemprop="sku"><%# Eval("pName")%></div>
              </div>
     
                </div>
            </div>


             <span class="price"><br>PKR <%# Eval("pPrice")%> </span>
                        

                        <div> <br />
                        <span class="swatch-attribute-label">Color</span>
                        <span class="swatch-attribute-selected-option">Yellow</span></div>
                        <input type="color" name="" value="black"><br><br>
                        <div><br />
                        <span class="swatch-attribute-label">Size</span>
                        <span class="swatch-attribute-selected-option"><div class="div1">36/3</div>         
                          <div class="div1">37/4</div>
                           <div class="div1">39/6</div><br></span></div>
                        <div>
                            <br />
                        <label class="label" for="qty"><span>Qty</span></label></div>



                        <div></div>

                       

                      
          
                        <asp:Button runat="server" type="button" ID="b1" class="btn btn-block btn-danger" Text="add to cart" OnClick="addToCart" />
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>

    </div>

</asp:Content>