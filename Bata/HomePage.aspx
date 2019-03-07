<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Bata.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="homepage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        
    <div class="head">
            <div class="homeImage">   
            </div>
    </div>
    <div class="page">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
        <h1>ARTICLE</h1>
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
