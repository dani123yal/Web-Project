<%@ Page Title="" Language="C#" MasterPageFile="~/cartMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Bata.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <link href="Content/reg.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    

        <div class="d-flex justify-content-center" align="center">
            <div id="message" class="alert alert-success" visible="false" style="color:green; font-family:'Letter Gothic Std'; font-size:25px;" runat="server"></div>
        </div>        
    
    
    <div class="form_wrapper">
  <div class="form_container">
    <div class="title_container">
      <h2>Registration</h2>
    </div>
    <div class="clearfix">
      <div class="">
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
            <input type="text" id="uName" placeholder="Username" required runat="server"/>
          </div>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
            <input type="email" id="email" placeholder="Email" required runat="server"/>
          </div>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
            <input type="password" id="pass" placeholder="Password" required runat="server"/>
          </div>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
            <input type="password" id="rePass" onchange="checkPassword()" onkeyup="checkPassword()" 
                placeholder="Re-type Password" required />
              <p id="error" class="float-right" style="font-size:10px;"></p>
          </div>
          <div class="clearfix">
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-phone"></i></span>
            <input type="tel" id="phone" pattern="[0-9]{4}-[0-9]{7}" title="use this:(xxxx-xxxxxxx)" placeholder="Phone No." maxlength="14" required runat="server"/>
          </div>
              </div>
          <%--<div class="row clearfix">
            <div class="col_half">  
              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                <input type="text" name="name" placeholder="First Name" />
              </div>
            </div>
            <div class="col_half">
              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                <input type="text" name="name" placeholder="Last Name" required />
              </div>
            </div>
          </div>--%>
          <input class="button" type="submit" value="Register" runat="server" onserverclick="Register" />
      </div>
    </div>
  </div>
</div>

    <script type="text/javascript">
        function checkPassword() {
            var pas = document.getElementById("<%=pass.ClientID%>").value;
            var rePas = document.getElementById("rePass").value;

            if (pas == rePas) {
                document.getElementById("error").style.color = "green";
                document.getElementById("error").innerText = "Password match!";
            }
            else {
                document.getElementById("error").style.color = "red";
                document.getElementById("error").innerText = "Password doesn't match";
            }
        }
    </script>
</asp:Content>
