<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApplicationForm.aspx.cs" Inherits="Kong.ApiExpert.Web.Prototype.ApplicationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  
<style type="text/css">

.mControl
{
    margin-top:5px;  
}

label.required:after
{
    color: red;
    content: "*";
    position: absolute;
    margin-left: 3px;
   
    font-family: 'Glyphicons Halflings';
    font-weight: normal;
    font-size: 12px;
}
 
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<form class="form-horizontal" role="form">
  <div class="form-group">
    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label required" for=txtFirstName>First Name</label>
    </div>
    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <input type=text id=txtFirstName class="form-control" />
    </div>
  
    <div class="clearfix visible-sm-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label required" for=txtLastName>Last Name</label>
    </div>
    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <input type=text id=txtLastName class="form-control"/>
    </div>

    <div class="clearfix visible-md-block"></div>
    <div class="clearfix visible-sm-block"></div>

    <div class="col-xs-2 col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=radGender>Gender</label>
    </div>
    <div class="col-xs-10 col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <label class="radio-inline"><input type="radio" name="radGender">Male</label>
        <label class="radio-inline"><input type="radio" name="radGender">Female</label>
    </div>

    <div class="clearfix visible-sm-block"></div>
    <div class="clearfix visible-lg-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=txtAddress>Address</label>
    </div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <input type=text id=txtAddress class="form-control bfh-phone"  data-country="US" />
    </div>
    <div class="clearfix visible-sm-block"></div>
    <div class="clearfix visible-md-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=txtSuite>Unit/Suite</label>
    </div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <input type=text id=txtSuite class="form-control"/>
    </div>
    <div class="clearfix visible-sm-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=ddlCountry>Country</label>
    </div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <select id=ddlCountry class="form-control">
        </select>
    </div>

    <div class="clearfix visible-sm-block"></div>
    <div class="clearfix visible-lg-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=ddlState>State/Province</label>
    </div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <select id=ddlState class="form-control">
        </select>
    </div>
   <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=txtPhone>Phone</label>
    </div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <input type="tel" id=txtPhone class="form-control" />
    </div>
</div>
</form>

<input type=hidden id=hidActiveMenu value="hypApp" />

</asp:Content>
