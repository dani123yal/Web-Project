<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="productDetail.aspx.cs" Inherits="Bata.productDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <style>
        .prodPage{
            margin-top:250px;
        }
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 16.666667%;
            flex: 0 0 16.666667%;
            max-width: 16.666667%;
            left: -11px;
            top: -45px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
      <div class="container prodPage">
          <asp:Repeater id="prod" runat="server">
              <HeaderTemplate>
                </HeaderTemplate>
              <ItemTemplate>
               <div class="row" id="prod" runat="server">
                   <div class="auto-style1">
                                   <div class="row">
                           <div class="row-md-4"></div>
                           <div class="card shadow" style="width: 9rem;">
  <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-a.jpg" class="card-img-top" alt="...">
</div>
    
  </div>

                <div class="row">
                           <div class="row-md-4"></div>
                           <div class="card shadow" style="width: 9rem;">
  <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-b.jpg" class="card-img-top" alt="...">
</div>
     


  </div> 
                                    <div class="row">
                           <div class="row-md-4"></div>
                           <div class="card shadow" style="width: 9rem;">
  <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/560x560/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-d.jpg" class="card-img-top" alt="...">
</div>
    
  </div>
                                    <div class="row">
                           <div class="row-md-4"></div>
                           <div class="card shadow" style="width: 9rem;">
  <img src="https://www.bata.com.pk/pub/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/6/0/604-8269-e.jpg" class="card-img-top" alt="...">
</div>
    
  </div>

                   </div>
                   <div class="col-md-4">
                   <div class="card-shadow" style="">
                       <div class="inner1">
 <img class="card-body-top" src="<%#Eval("pImage")%>"  width="75%" />
                       </div>
    </div>
<%--             <div class="magnify-lens" data-gallery-role="magnifier-zoom" style="width: 377px; height: 519px; left: 182.5px; top: 77.5px;"></div>--%>
  </div>
                   <div class="col-md-6" style="border-style:solid; border-width:1px; border-color: darkgray;">
                       
                           <h1><%# Eval("pName")%></h1>
                           <h3><%# Eval("pPrice")%></h3>
                       <input type="button" id="b1" runat="server" class="btn btn-block btn-danger" value="add to cart"  onClick="addToCart" />
                   </div>
  </div>
                  </ItemTemplate>
              <FooterTemplate>
            </FooterTemplate>
              </asp:Repeater>
          
               </div> 

  
</asp:Content>
