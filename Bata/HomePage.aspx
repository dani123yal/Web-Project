<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Bata.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content runat="server" ID="Cover" ContentPlaceHolderID="cover">
<div class="head">
            <div class="homeImage">   

                <p>Scroll down this frame to see the effect!</p>

            </div>
    </div>
</asp:Content>
<asp:Content ID="homepage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        
    <div class="page">

    <div class="row" align="centre;">
        <div class="col-md-12">
            <div class="w3-content w3-section" style="max-width:5000px">
 
 <img class="mySlides w3-animate-fading" src="Content/Images/add1.PNG" style="width:1100px;height:500px">
<img class="mySlides w3-animate-fading" src="https://i.ytimg.com/vi/QF3NAIFjXGg/maxresdefault.jpg"  style="width:1100px;height:500px">
  <img class="mySlides w3-animate-fading" src="https://www.bata.in/0/media/css/frontend/octa/images/casual-collection-02.jpg" style="width:1100px;height:500px">
  <img class="mySlides w3-animate-fading" src="http://actfaqs.com/uploads/KritiBataM-533x261.jpg" style="width:1100px;height:500px">
</div>

        </div>
    </div>

</div>
    
<div class="row">
<div class="col-md-12" style="width: 100%; height: 30px; border-bottom: 1px solid black; text-align: center;  margin-bottom:60px; margin-top:50px;">
  <span style="font-size: 40px;background-color:white; color: cadetblue; ">
    Your Favourite Styles <!--Padding is optional-->
  </span>
</div>
    </div>
<div class="row">
<div class="col-md-4">
    <img src="https://www.bata.com.pk/pub/media/wysiwyg/em0144/layout_gentleman/home/formal.jpg" width="350"; height="350"></div>
<div class="col-md-4">
    <img src="https://www.bata.com.pk/pub/media/wysiwyg/em0144/layout_gentleman/home/Casual.jpg" width="350"; height="350"></div>
<div class="col-md-4">
    <img src="https://www.bata.com.pk/pub/media/wysiwyg/em0144/layout_gentleman/home/heels.jpg" width="350"; height="350"></div>
</div>
    <div class="row">
<div class="col-md-12" style="width: 100%; height: 30px; border-bottom: 1px solid black; text-align: center; margin-bottom:60px; margin-top:50px;">
  <span style="font-size: 40px;background-color:white; color: cadetblue; ">
    Her Shoe Cabinet <!--Padding is optional-->
  </span>
</div>
    </div>
    <div class="row" >
<div class="col-md-8">
    <img src="https://www.bata.com.pk/pub/media/wysiwyg/em0144/layout_gentleman/home/women-sec.jpg" width="700"; height="450"></div>
<div class="col-md-4">
    <div class="cabinet-list table-cell">
<h3>Shop by categories</h3>
<ul>
<li ><a title="Closed Shoes" href="#">Athletics</a></li>
<li><a title="Sports" href="#">Casual </a></li>
<li><a title="Sandals" href="# "> Comfort </a></li>
<%--<li><a title="Chappals" href="/women/fashion.html "> Fashion </a></li>--%>
</ul>
<h3>Trend of the week</h3>
<div class="custom thumbnail">
<ul>
<li id="banner_1" class="first"><a class="blogImageLeft fullWidth" href="#" > <img src="https://www.bata.com.pk/pub/media/wysiwyg/em0144/layout_gentleman/home/women-blog.jpg" alt="" width="350"; height="250" > </a></li>
</ul>
</div>
</div>
</div>
        </div>
        <div class="row">
<div class="col-md-12" style="width: 100%; height: 30px; border-bottom: 1px solid black; text-align: center; margin-bottom:60px; margin-top:50px;">
  <span style="font-size: 40px;background-color:white; color: cadetblue; ">
    The Social Connect <!--Padding is optional-->
  </span>
</div>
    </div>

    <div class="row">
                <div class="col-md-8" >
                    <div class="col-xs-12 col-xs-6">
<div class="embed-responsive embed-responsive-16by9" style="width:700px; height:350px;"><iframe src="https://www.youtube.com/embed/IVyDei3ip8s" ></iframe></div>
</div>
                </div>

                <div class="col-md-4">
                    <div class="col-xs-12 col-xs-3 social-text text-center">
<div class="news-box"><span class="headd">Bata news feed</span>
<div class="news-boxDetails fullDiv">
    <span class="text-uppercase">Bata walks taller and further with a 20% growth in Q1 17-18 Net profit</span> - Continued focus on lifestyle segment drives a healthy 10% growth in Turnover in Q1 2017-18</div>
    <br />
    <span class="headd">Testimonials</span>
    <div class="news-boxDetails fullDiv"><span class="text-uppercase">Very good user interface on the app. Very happy with the service and product</span></div>
</div>
</div>
                </div>


    </div>
   <script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 7000);    
}
</script>
    
</asp:Content>
