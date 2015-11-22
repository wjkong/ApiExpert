<%@ Page Title="Photo Gallery" Language="C#" MasterPageFile="~/MyDemo.Master" AutoEventWireup="true" CodeBehind="Photo-Gallery.aspx.cs" Inherits="Kong.ApiExpert.Web.Demos.PhotoGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style>
    a, img.img-thumbnail
    {
         cursor: pointer;
         cursor: hand;
    }
    
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
  <script type="text/javascript">
     
  </script>
  
  <div id="Main" class="row">
  </div>
  <br />
  <div class=row>
     <div class="col-xs-1 col-md-1 col-lg-1">
        <button type="button" class="btn btn-success btn-lg" id=btnPrev> <span class='glyphicon glyphicon-triangle-left'></span></button>
     </div>
     <div class="col-xs-1 col-md-1 col-lg-1">
        <button id=btnThumbnail type='button' class='btn btn-success btn-lg'><span class='glyphicon glyphicon-th'></span></button>
     </div>
     <div class="col-xs-8 col-md-7 col-lg-5 text-center">
        <ul class="pagination">
        </ul>
     </div>
     <div class="col-xs-2 col-md-3 col-lg-5 text-right">
        <button type="button" class="btn btn-success btn-lg" id=btnNext><span class='glyphicon glyphicon-triangle-right'></span></button>
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
