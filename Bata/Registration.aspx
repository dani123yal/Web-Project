<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Bata.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/reg.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cover" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form_wrapper">
  <div class="form_container">
    <div class="title_container">
      <h2>Registration</h2>
    </div>
    <div class="row clearfix">
      <div class="">
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
            <input type="email" name="email" placeholder="Email" required />
          </div>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
            <input type="password" name="password" placeholder="Password" required />
          </div>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
            <input type="password" name="password" placeholder="Re-type Password" required />
          </div>
          <div class="row clearfix">
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
          </div>
            	<div class="input_field radio_option">
              <input type="radio" name="radiogroup1" id="rd1">
              <label for="rd1">Male</label>
              <input type="radio" name="radiogroup1" id="rd2">
              <label for="rd2">Female</label>
              </div>
              <div class="input_field select_option">
                <select>
                  <option>Select a city</option>
                  <option>Karachi</option>
                  <option>Lahore</option>
                  <option>Islamabad</option>                  
                    <option>Rawalpindi</option>                  
                    <option>Multan</option>                  
                    <option>Hyderabad</option>                  
                    <option>Sialkot</option>                  
                    <option>Pehawar</option>

             </select>
                <div class="select_arrow"></div>
              </div>
            <div class="input_field checkbox_option">
            	<input type="checkbox" id="cb1">
    			<label for="cb1">I agree with terms and conditions</label>
            </div>
            <div class="input_field checkbox_option">
            	<input type="checkbox" id="cb2">
    			<label for="cb2">I want to receive the newsletter</label>
            </div>
          <input class="button" type="submit" value="Register" />
      </div>
    </div>
  </div>
</div>
</asp:Content>
