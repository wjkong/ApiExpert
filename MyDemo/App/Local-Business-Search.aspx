<%@ Page Title="Local Business Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="local-business-search.aspx.cs" Inherits="Kong.ApiExpert.Web.Search.Local_Business_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
   background-color: #dff0d8;
}

.pagination a,  .map, #btnFullMap
{
    cursor: pointer;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header"></div>
<div class="row" >
    <div class = "col-sm-3">
       <div class="input-group">
            <span class="input-group-addon"><label class="control-label" for="ddlPageSize">Page Size</label></span>
             <select id="ddlPageSize" class="form-control">
                <option value=5>5</option>
                <option value=10 selected=selected>10</option>
                <option value=20>20</option>
             </select> 
        </div>
    </div>
    <br class="visible-xs-block"/>
    <div class = "col-sm-4 col-md-3">
       <div class="input-group">
            <span class="input-group-addon"><label class="control-label" for="ddlRadius">Radius</label></span>
        
            <select id="ddlRadius" class="form-control">
                        <option value="1000">within 1 KM</option>
						<option value="3000">within 3 KM</option>
					    <option value="5000" selected=selected>within 5 KM</option>
						<option value="10000">within 10 KM</option>
						<option value="15000">within 15 KM</option>
						<option value="25000">within 25 KM</option>
						<option value="40000">within 40 KM</option>
			</select>
        </div>
    </div>
      <br class="visible-xs-block"/>
    <div class = "col-sm-5 text-primary" data-toggle='modal' data-target='#modalMapMarker' id=mapMarker style="display:none">
         <span><span class="glyphicon glyphicon-map-marker"></span>Show all businesses on the map</span>
     </div>
</div>
<br class="hidden-xs"/>
<div class="row" >
    <div class = "col-sm-6">
       <div class="input-group">
            <span class="input-group-addon"><label class="control-label  required" for="txtLocation">Location</label></span>
        
            <div class="inner-addon right-addon">
            <input type=text  id="txtLocation" class="form-control" onfocus="geolocate()" autofocus placeholder="Address, City, Postal Code or Road Intersaction..."/>
            </div>
        </div>
    </div>
    <br class="visible-xs-block"/>
    <div class = "col-sm-4">
       <div class="input-group">
            <span class="input-group-addon"><label class="control-label" for="txtCity">Business</label></span>
        
            <input type=text  id="txtBusiness" class="form-control" placeholder="Food, movie, massage, restaurant or bike..."/>
        </div>
    </div>
    <br class="visible-xs-block"/>
    <div class = "col-sm-2">
        <button type="button" class="btn btn-success" id=btnSearch><span class="glyphicon glyphicon-search"></span></button>
    </div>
</div>
<br />
<div class="row text-info" >
     <div class="col-sm-6">
        <span>
            Local Business Search Powered by <img src='https://s3-media2.fl.yelpcdn.com/assets/srv0/developer_pages/55e2efe681ed/assets/img/yelp_logo_50x25.png' alt="Yelp" />
        </span>
     </div>
     <div id=resultInfo class="col-sm-6 text-right">
        
     </div>
</div>
                             
<div id="detail">
</div>
<div class=row>
     <div class="col-xs-2 col-sm-1">
        <button type="button" class="btn btn-success btn-lg" id=btnPrev style="display:none"><span class='glyphicon glyphicon-triangle-left'></span></button>
     </div>
     <div class="col-xs-8 col-sm-9 text-center">
        <ul class="pagination">
        </ul>
     </div>
     <div class="col-xs-2 col-sm-2 text-right">
        <button type="button" class="btn btn-success btn-lg" id=btnNext style="display:none"><span class='glyphicon glyphicon-triangle-right'></span></button>
     </div>
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
</div>
  <input type=hidden id=hidCurrentPage value=1 />
  <input type=hidden id=hidLastPageIndex />

  <input type=hidden id=hidActiveMenu value="hypApp" />
</asp:Content>

<asp:Content ContentPlaceHolderID="ScriptSection" ID="pageScript" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/Scripts/SearchLocalBusiness") %>
</asp:Content>