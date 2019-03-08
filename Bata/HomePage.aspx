<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Bata.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="homepage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        
    <div class="head">
            <div class="homeImage">   

                <p>Scroll down this frame to see the effect!</p>

            </div>
    </div>
    <div class="page">

    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="w3-content w3-section" style="max-width:5000px">

  <img class="mySlides w3-animate-fading" src="https://i.ytimg.com/vi/QF3NAIFjXGg/maxresdefault.jpg"  style="width:800px;height:500px">
  <img class="mySlides w3-animate-fading" src="https://pbs.twimg.com/media/DcVtL3vW0AAd6HL.jpg" style="width:800px;height:500px">
  <img class="mySlides w3-animate-fading" src="https://www.bata.in/0/media/css/frontend/octa/images/casual-collection-02.jpg" style="width:800px;height:500px">
  <img class="mySlides w3-animate-fading" src="http://actfaqs.com/uploads/KritiBataM-533x261.jpg" style="width:800px;height:500px">

</div>

        </div>
        <div class="col-md-3"></div>
    </div>

</div>
        <div class="container">
<div class="row">
<div class="col-md-12" style="width: 100%; height: 30px; border-bottom: 1px solid black; text-align: center; margin-bottom:50px;">
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
