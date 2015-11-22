<%@ Page Title="World Weather Forecast" Language="C#" MasterPageFile="~/MyDemo.Master" AutoEventWireup="true" CodeBehind="world-weather-forecast.aspx.cs" Inherits="Kong.ApiExpert.Web.Tool.world_weather_forecast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.glyphicon-plus, .glyphicon-minus
{
    cursor: pointer;
    cursor: hand;
    
    font-family: 'Glyphicons Halflings';
    font-weight: normal;
    font-size: 14px;
    color:Red;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header">
</div>
<form role="form" name="myForm">
<div class="row" >
    <div class = "col-sm-10">
        <div class="input-group">
          <input type=text  id="txtLocation" class="form-control" placeholder="Enter City/Town, Postal/Zip Code..." onfocus=geolocate()/>
          <span class="input-group-btn">
            <button type="button" class="btn btn-success" id=btnForecast>Forecast</button>
          </span>
        </div>
        <div class="help-block">City, Town, Postal code or Zip Code...</div>
    </div>
     <br class="visible-xs-block" />
     <div class="col-sm-2 text-right">
        <label class="radio-inline"><input type="radio" name="type" checked=checked value="celsius">&#176;C</label>
        <label class="radio-inline"><input type="radio" name="type" value="fahrenheit">&#176;F</label>
    </div>
</div>
<div class="row text-info">
    <div class ="col-sm-6">
       Weather Forecast Powered by <a href="http://www.worldweatheronline.com/" title="Free Weather API" target="_blank"><img alt="Weather API" src="http://cdn.worldweatheronline.net/staticv3/images/logo_small.png" style="border-style:solid; border-width:0px; height:43px; width:100px" /></a>
    </div>
    <div class="col-sm-6 text-right" id=resultInfo>
    </div>
</div>
<div class="alert alert-success al " style="display:none;" id="panelForecast">
<div class="row">
<div class="col-xs-3 col-sm-3 col-md-2">
<div id=location></div>
<div id=weatherIcon></div>
<div id=weatherDesc class=text-nowrap></div>
</div>
<div class="col-xs-9 col-sm-9 col-md-10">
<div class="form-group">
    <div class="col-xs-6 col-sm-3 col-md-2 text-right">
        <label class="control-label">Temperature:</label>
    </div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-left" id=temperature>
    </div>
    <div class="clearfix visible-xs-block"></div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-right">
        <label class="control-label">Feel Temp.:</label>
    </div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-left" id=feelsLikeC>
    </div>

    <div class="clearfix visible-xs-block"></div>
    <div class="clearfix visible-sm-block"></div>

    <div class="col-xs-6 col-sm-3 col-md-2 text-right">
        <label class="control-label">Humidity:</label>
    </div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-left" id=humidity>
    </div>

    <div class="clearfix visible-xs-block"></div>
    <div class="clearfix visible-md-block"></div>
    <div class="clearfix visible-lg-block"></div>

    <div class="col-xs-6 col-sm-3 col-md-2 text-right">
        <label class="control-label">Pressure:</label>
    </div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-left" id=pressure>
    </div>

    <div class="clearfix visible-xs-block"></div>
    <div class="clearfix visible-sm-block"></div>

    <div class="col-xs-6 col-sm-3 col-md-2 text-right">
        <label class="control-label">Visibility:</label>
    </div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-left" id=visibility>
    </div>
    <div class="clearfix visible-xs-block"></div>

    <div class="col-xs-6 col-sm-3 col-md-2 text-right">
        <label class="control-label">Wind Speed:</label>
    </div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-left" id=windspeed>
   </div>
    <div class="clearfix visible-xs-block"></div>
     <div class="clearfix visible-sm-block"></div>
      <div class="clearfix visible-md-block"></div>
    <div class="clearfix visible-lg-block"></div>

    <div class="col-xs-6 col-sm-3 col-md-2 text-right">
        <label class="control-label">Cloud:</label>
    </div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-left" id=cloud>
    </div>
    <div class="clearfix visible-xs-block"></div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-right">
        <label class="control-label">Wind Dir.:</label>
    </div>
    <div class="col-xs-6 col-sm-3 col-md-2 text-left" id=winddir>
    </div>
</div>
</div>
</div>
</div>
<div id="detail">
</div>
<div id="curve_chart" style="width:480px; height:400px"></div>
</form>
</div>
<input type=hidden id=hidActiveMenu value="hypTool" />
  <input type=hidden id=hidRoot value="../" />

   <script type="text/javascript"
          src="https://www.google.com/jsapi?autoload={
            'modules':[{
              'name':'visualization',
              'version':'1',
              'packages':['corechart']
            }]
          }"></script>
 <script src="../Scripts/Common.js" type="text/javascript"></script>
  <script src="../Scripts/weatherforecast.js" type="text/javascript"></script>
 
</asp:Content>
