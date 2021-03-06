﻿<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Kong.ApiExpert.Web.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<form class="form-horizontal" role="form" id="LoginForm">
  <div class="form-group required">
     <label class="control-label required col-sm-3" for=txtUsername>User Name</label>
     
    <div class="col-sm-9">
         <input type=text id=txtUsername class="form-control" maxlength=16 autofocus />
    </div>
  </div>
   <div class="form-group required">
      <label class="control-label required col-sm-3" for=txtPassword>Password</label>
     
    <div class="col-sm-9">
         <input type=password id=txtPassword class="form-control" maxlength=16/>
    </div>
  </div>
  <div class="form-group"> 
    <div class="checkbox col-sm-offset-3 col-sm-9">
        <label><input type="checkbox" id=chkRememberMe>Remember Me</label>
    </div>
  </div>
   <div class="form-group">
   <div class="col-sm-offset-3 col-sm-9">
          <div class="g-recaptcha" id=googleRecaptcha data-sitekey="6Lfi5QoTAAAAAJihj7N_tR-INl_Z15okAEeg3EZ2" lang="es">
          </div>
   </div>
  </div>

  <div class="form-group"> 
    <div class="col-sm-offset-3 col-sm-9">
        <button type="button" class="btn btn-success" id=btnLogin>Login</button>
    </div>
  </div>
</form>
</div>
<div class="modal" id="modalValidation" role="dialog">
<div class="modal-dialog modal-sm">
    <!-- Modal content-->
    <div class="modal-content">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title text-danger">Validation Summary</h4>
    </div>
    <div class="modal-body">
        
    </div>
</div>
</div>
</div>
</asp:Content>

<asp:Content ContentPlaceHolderID="ScriptSection" ID="pageScript" runat="server">
    <script src='https://www.google.com/recaptcha/api.js?&hl=fr' type="text/javascript" lang="es"></script>
    <%: System.Web.Optimization.Scripts.Render("~/Scripts/Login") %>
</asp:Content>
