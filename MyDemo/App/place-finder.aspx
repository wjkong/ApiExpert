<%@ Page Title="Place Finder" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="place-finder.aspx.cs" Inherits="Kong.ApiExpert.Web.App.place_finder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header"></div>
<div class="row" >
     <div class = "col-sm-3">
       <div class="input-group">
            <span class="input-group-addon"><label class="control-label" for="ddlRadius">Type</label></span>
            <select id="ddlType" class="form-control text-capitalize">
            
			</select>
        </div>
    </div>
    <br class="visible-xs-block"/>
    <div class=col-sm-3>
         <div class="input-group">
            <span class="input-group-addon"><label class="control-label" for="ddlRadius">Radius</label></span>
            <select id="ddlRadius" class="form-control">
                <option value="1000">1 KM</option>
				<option value="2000">2 KM</option>
                <option value="3000">3 KM</option>
				<option value="5000" selected=selected>5 KM</option>
				<option value="10000">10 KM</option>
				<option value="15000">15 KM</option>
				<option value="25000">25 KM</option>
				<option value="50000">50 KM</option>
			</select>
        </div>
    </div>
    <br class="visible-xs-block"/>
    <div class = "col-sm-6">
        <div class="input-group">
          <input type=text  id="txtLocation" class="form-control" placeholder="Enter Address, City/Town, Postal/Zip Code..." onfocus=geolocate() />
          <span class="input-group-btn">
            <button type="button" class="btn btn-success" id=btnSearch><span class="glyphicon glyphicon-search"></span></button>
          </span>
        </div>
    </div>
</div>
<div class=row>
     <div class="col-sm-6 text-primary">
         <div style="display:none; padding-top:10px;"  data-toggle='modal' data-target='#modalMapMarker' id=mapMarker><span class="glyphicon glyphicon-map-marker" ></span>Show All Places</div>
    </div>
    <div class="col-sm-6 checkbox">
        <label><input type="checkbox" value="" id=chkCurrentPosition>Use Current Position</label>
    </div>
</div>
<div class="row text-info" >
     <div class="col-sm-6">
        <span>
            Place Finder <img src=https://maps.gstatic.com/mapfiles/api-3/images/powered-by-google-on-white2.png alt=google />
        </span>
     </div>
     <div id=resultInfo class="col-sm-6 text-right">
        
     </div>
</div>
<div id="detail">
</div>
<div class="modal fade" id="modalMapMarker" role="dialog">
<div class="modal-dialog modal-lg">
    <!-- Modal content-->
    <div class="modal-content">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"></h4>
    </div>
    <div class="modal-body">
        <div id='mapMarker-canvas'></div>
    </div>
</div>
</div>
</div>
<div class="modal fade" id="modalDetail" role="dialog">
<div class="modal-dialog modal-lg">
    <!-- Modal content-->
    <div class="modal-content">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <div class="modal-title">
        </div>
    </div>
    <div class="modal-body">
        <div id='detail-canvas'>
              <div class=row>
                <div class="col-sm-2 text-right">
                    <label class="control-label">Google+: </label>
                </div>
                <div class=col-sm-10 id=googlePlus> 
                </div>
            </div>
            <div class=row>
                <div class="col-sm-2 text-right">
                    <label class="control-label">Rating: </label>
                </div>
                <div class=col-sm-6 > 
                    <span class="stars" id=rating></span>
                </div>
                 <div class='col-sm-4 text-right'> 
                    <img src=https://maps.gstatic.com/mapfiles/api-3/images/powered-by-google-on-white2.png alt=google />
                </div>
            </div>

            <div class=row>
                <div class="col-sm-2 text-right">
                    <label class="control-label">Phone: </label>
                </div>
                <div class=col-sm-10 id=phone> 
                </div>
            </div>
            <div class=row>
                <div class="col-sm-2 text-right">
                    <label class="control-label">Address: </label>
                </div>
                <div class=col-sm-10 id=address> 
                </div>
            </div>
            <div class=row>
                <div class="col-sm-2 text-right">
                    <label class="control-label">Web site: </label>
                </div>
                <div class=col-sm-10 id=website> 
                </div>
            </div>
          
            <div class=row>
                <div class="col-sm-2 text-right">
                    <label class="control-label">Hours: </label>
                </div>
                <div class=col-sm-10 id=businessHours> 
                </div>
            </div>
            <div class=row>
                <div class=col-sm-12 id=review> 
                </div>
            </div>
        
        </div>
    </div>
</div>
</div>
</div>
</div>
 <input type=hidden id=hidActiveMenu value="hypApp" />
   <input type=hidden id=hidRoot value="../" />

      <input type=hidden id=hidLat  />
         <input type=hidden id=hidLng  />

    <script src="../Scripts/Common.js" type="text/javascript"></script>
    <script src="../Scripts/PlaceFinder.js" type="text/javascript"></script>
</asp:Content>
