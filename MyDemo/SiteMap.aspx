<%@ Page Title="Site Map" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="Kong.ApiExpert.Web.SiteMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.tree {
    min-height:20px;
    padding:19px;
    margin-bottom:20px;
    background-color:#fbfbfb;
    border:1px solid #999;
    -webkit-border-radius:4px;
    -moz-border-radius:4px;
    border-radius:4px;
    -webkit-box-shadow:inset 0 1px 1px rgba(0, 0, 0, 0.05);
    -moz-box-shadow:inset 0 1px 1px rgba(0, 0, 0, 0.05);
    box-shadow:inset 0 1px 1px rgba(0, 0, 0, 0.05)
}
.tree li {
    list-style-type:none;
    margin:0;
    padding:10px 5px 0 5px;
    position:relative
}
.tree li::before, .tree li::after {
    content:'';
    left:-20px;
    position:absolute;
    right:auto
}
.tree li::before {
    border-left:1px solid #999;
    bottom:50px;
    height:100%;
    top:0;
    width:1px
}
.tree li::after {
    border-top:1px solid #999;
    height:20px;
    top:25px;
    width:25px
}
.tree li span 
{
    /*
    -moz-border-radius:5px;
    -webkit-border-radius:5px;
    border:1px solid #999;
    border-radius:5px;
    */
    
    display:inline-block;
    padding:3px 8px;
    text-decoration:none
}
.tree li.parent_li>span {
    cursor:pointer
}
.tree>ul>li::before, .tree>ul>li::after {
    border:0
}
.tree li:last-child::before {
    height:30px
}
.tree li.parent_li>span:hover, .tree li.parent_li>span:hover+ul li span {
    background:#eee;
    /*border:1px solid #94a0b4; */
    color:#000
}

.parentIcon
{
    margin-left:2px;
    color:Green;
    font-size: 1.5em
}

</style>
<script type="text/javascript">
    $(document).ready(function () {
        $(function () {
            $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
            $('.tree li.parent_li > span').on('click', function (e) {
                var children = $(this).parent('li.parent_li').find(' > ul > li');
                if (children.is(":visible")) {
                    children.hide('fast');
                    $(this).attr('title', 'Expand this branch').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
                } else {
                    children.show('fast');
                    $(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
                }
                e.stopPropagation();
            });
        });
    });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class="tree">
    <ul>
        <li>
            <span class="glyphicon glyphicon-home parentIcon" ></span><a href="Default.aspx"><span><i class="icon-folder-open"></i>Home</span></a>
            <ul>
                <li>
                	<span class="glyphicon glyphicon-th parentIcon"></span><span><i class="icon-minus-sign"></i>Application</span>
                    <ul>
                        <li>
	                         <a href="App/place-finder.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-search"></span>Place Finder</span></a>
                        </li>
                        <li>
	                        <a href="App/Job-Search.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-search"></span>Job Search</span></a>
                        </li>
                        <li>
	                        <a href="App/Ask-StackOverflow.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-question-sign"></span>Question Search</span></a>
                        </li>
                      
                         <li>
	                        <a href="App/Local-Business-Search.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-shopping-cart"></span>Local Business Search</span></a>
                        </li>
                         <li>
	                        <a href="App/photo-gallery.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-picture"></span>Photo Gallery</span></a>
                        </li>
                      
                        
                     <%--    <li>
	                       
                            <a href="Demos/ApplicationForm.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-th-list"></span>Application Form</span></a>
                        </li>
                         <li>
	                        <a href="Demos/Photo-Gallery.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-picture"></span>Photo Gallery</span></a>
                        </li>--%>

                      
                    </ul>
                </li>
                <li>
                	<span class="glyphicon glyphicon-wrench parentIcon"></span><span><i class="icon-minus-sign"></i>Tool</span> 
                    <ul>
                          <li>
	                        <a href="Tool/Mortgage-Calculator.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-piggy-bank"></span>Mortgage Calculator</span></a>
                        </li>
                        <li>
	                         <a href="Tool/Currency-Converter.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-usd"></span>Currency Converter</span></a>
                        </li>
                        <li>
	                         <a href="Tool/language-translator.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-transfer"></span>Language Translator</span></a>
                        </li>
                       
                         <li>
	                         <a href="Tool/world-weather-forecast.aspx"><span><i class="icon-leaf"></i><span class="glyphicon  glyphicon-cloud"></span>Weather Forecast</span></a>
                        </li>
                    </ul>
                </li>
                   <li>
                	 <a href="Doc/Blog.aspx"><span><i class="icon-leaf"></i><span class="glyphicon glyphicon-list-alt"></span>Documentaton</span></a>
                </li>
               <%-- <li>
                	 <a href="FAQ.aspx"><span><i class="icon-minus-sign"></i><span class="glyphicon glyphicon-question-sign"></span>&nbsp;Frequence Ask Question</span></a>
                </li>--%>
                <li>
                	 <a href="SiteMap.aspx"><span><i class="icon-minus-sign"></i><span class="glyphicon glyphicon-globe"></span>Site Map</span></a>
                </li>
                <li>
                	 <a href="mailto:wjkonger@gmail.com"><span><i class="icon-minus-sign"></i><span class="glyphicon glyphicon-envelope"></span>Contact</span></a>
                </li>
            </ul>
        </li>
     </ul>
</div>
<input type=hidden id=hidActiveMenu value="HypSiteMap" />
<script src="Scripts/Common.js" type="text/javascript"></script>
</asp:Content>
