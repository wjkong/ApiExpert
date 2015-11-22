<%@ Page Title="Photo Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="photo-gallery.aspx.cs" Inherits="Kong.ApiExpert.Web.App.photo_gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="row text-info" >
     <div class="col-sm-6">
        <span>
            Photo Gallery Powered by Flickr API
        </span>
     </div>
     <div id=resultInfo class="col-sm-6 text-right">
        
     </div>
  </div>
  <br />
  <div id="Main" class="row alert" style="background-color:#EEEEEE">
  </div>
  <br />
  <div class=row>
     <div class="col-xs-1 col-md-1 col-lg-1">
        <button type="button" class="btn btn-success btn-lg" id=btnPrev style="display:none"> <span class='glyphicon glyphicon-triangle-left'></span></button>
     </div>
     <div class="col-xs-1 col-md-1 col-lg-1">
        <button id=btnThumbnail type='button' class='btn btn-success btn-lg' style="display:none"><span class='glyphicon glyphicon-th'></span></button>
     </div>
     <div class="col-xs-8 col-md-7 col-lg-5 text-center">
        <ul class="pagination">
        </ul>
     </div>
     <div class="col-xs-2 col-md-3 col-lg-5 text-right">
        <button type="button" class="btn btn-success btn-lg" id=btnNext style="display:none"><span class='glyphicon glyphicon-triangle-right'></span></button>
     </div>
  </div>
</div>
<div class="modal fade" id="modalPhoto" role="dialog">
<div class="modal-dialog modal-lg">
    <!-- Modal content-->
    <div class="modal-content">
    <div class="modal-body">
    
    </div>
    </div>
</div>
</div>
   
  <input type=hidden id=hidCurrentPage value=1 />
  <input type=hidden id=hidFullPicture value="N" />
  <input type=hidden id=hidLastPageIndex />
  <input type=hidden id=hidActiveMenu value="hypApp" />
   <input type=hidden id=hidRoot value="../" />
  <script src="../Scripts/Common.js" type="text/javascript"></script>
  <script src="../Scripts/PhotoGallery.js" type="text/javascript"></script>
</asp:Content>
