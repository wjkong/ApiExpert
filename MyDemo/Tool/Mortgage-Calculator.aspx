<%@ Page Title="Mortgage Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mortgage-calculator.aspx.cs" Inherits="Kong.ApiExpert.Web.Demos.MortgageCalculator" %>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header">
</div>
<form class="form-horizontal" role="form" name="myForm">
<div id="divPaymentAmt" class="alert alert-success" style="display:none"></div>
  <div class="form-group required">
    <label class="control-label col-sm-3" for="txtMortgageAmt">Mortgage Amount</label>
    <div class="col-sm-9">
        <div class=input-group>
            <span class="input-group-addon">$</span>
            <input type=text  id="txtMortgageAmt" class="form-control" maxlength=9 autofocus placeholder="Enter total mortgage amount"/>
        </div>
    </div>
  </div>
   <div class="form-group required">
        <label class="control-label col-sm-3" for="txtInterestRate">Interest Rate</label>
    <div class="col-sm-9">
        <div class=input-group>
            <span class="input-group-addon">%</span>
            <input type=text id="txtInterestRate" class="form-control" maxlength=4 placeholder="Enter interest rate in percentage" />
        </div>
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-3" for="ddlPaymentFrequency">Payment Frequency</label>
    <div class="col-sm-9">
       <select id="ddlPaymentFrequency" class="form-control">
            <option value="12">Monthly</option>
            <option value="24">Semi-monthly</option>
            <option value="26">Bi-weekly</option>
            <option value="52">Weekly</option>
         <%--   <option value="28">Accelerated Bi-weekly</option>
            <option value="56">Accelerated Weekly</option>--%>
        </select>   
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-3" for="ddlAmortizationPeriod">Amortization Period</label>
    <div class="col-sm-9">
       <select id="ddlAmortizationPeriod" class="form-control" >
    </select>    
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-3 col-sm-9">
      <button type="button" class="btn btn-success" id=btnCalculate>Calculate</button>
    </div>
  </div>
  <div id="detail"></div>
</form>
</div>
 <input type=hidden id=hidActiveMenu value="hypTool" />
</asp:Content>
<asp:Content ContentPlaceHolderID="ScriptSection" ID="pageScript" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/Scripts/MortgageCalculator") %>
</asp:Content>


