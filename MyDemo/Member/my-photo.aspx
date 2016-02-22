<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="my-photo.aspx.cs" Inherits="Kong.ApiExpert.Web.Member.MyPhoto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
 <div id="Main"  class="row alert" style="background-color:#EEEEEE">
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

</asp:Content>

<asp:Content ContentPlaceHolderID="ScriptSection" ID="pageScript" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/Scripts/MyPhoto") %>
</asp:Content>
