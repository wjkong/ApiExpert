<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Kong.ApiExpert.Web.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
        $('#hidActiveMenuItem').val("hypFAQ");
        $('.answer, .glyphicon-minus').hide();

        $('.glyphicon-plus').click(function () {
            $(this).hide();
            $(this).next('.glyphicon-minus').show()
            $(this).parent().next('.answer').fadeIn();
        });

        $('.glyphicon-minus').click(function () {

            $(this).hide();
            $(this).prev('.glyphicon-plus').show();
            $(this).parent().next('.answer').fadeOut();
        });



    });
  </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div><span class="glyphicon glyphicon-plus"></span><span class="glyphicon glyphicon-minus"></span>Upderconstruction</div>
    <div class="answer">Why, yes</div>

    <div><span class="glyphicon glyphicon-plus"></span><span class="glyphicon glyphicon-minus"></span>Upderconstruction</div>
    <div class="answer">Why, yes</div>
    <div class="icon-plus-sign"></div>
</asp:Content>
