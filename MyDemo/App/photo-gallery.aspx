<%@ Page Title="Photo Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="photo-gallery.aspx.cs" Inherits="Kong.ApiExpert.Web.App.photo_gallery" %>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="row text-info" >
     <div class="col-sm-6">
        <span>
            Photo Gallery Powered by <i class="fa fa-flickr" aria-hidden="true"></i> Flickr API
        </span>
     </div>
     <div id=resultInfo class="col-sm-6 text-right">
     </div>
  </div>
  <br />
  <div id="Main" class="row alert" style="background-color:#EEEEEE">
  </div>
  <br />
  <div class="row text-center">
        <ul class="pagination">
        </ul>
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
</asp:Content>

<asp:Content ContentPlaceHolderID="ScriptSection" ID="pageScript" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/Scripts/PhotoGallery") %>
</asp:Content>
