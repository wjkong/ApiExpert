﻿<%@ Page Title="Currency Converter" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="currency-converter.aspx.cs" Inherits="Kong.ApiExpert.Web.Demos.CurrencyConverter" %>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header">
</div>

<form class="form-horizontal" role="form">
  <div class="form-group">
    <label class="control-label col-sm-3" for="ddlFromCurrency">Currency you have</label>
    <div class="col-sm-9">
       <select id="ddlFromCurrency" class="form-control">          
       </select>   
    </div>
  </div>
   <div class="form-group required">
    <label class="control-label col-sm-3" for="txtAmount">Amount</label>
    <div class="col-sm-9">
        <input type=text  id="txtAmount" class="form-control" maxlength=12 placeholder="Enter Your Amount" autofocus />
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-3" for="ddlToCurrency">Currency you want</label>
    <div class="col-sm-9">
       <select id="ddlToCurrency" class="form-control" >
      
    </select>    
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-3 col-sm-9">
      <button type="button" class="btn btn-success" id=btnConvert>Convert</button>
    </div>
  </div>
  <div id="detail"></div>
</form>
</div>
 <input type=hidden id=hidActiveMenu value="hypTool" />
</asp:Content>

<asp:Content ContentPlaceHolderID="ScriptSection" ID="pageScript" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/Scripts/CurrencyConverter") %>
</asp:Content>
