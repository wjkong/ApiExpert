<%@ Page Title="Question/Answer Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ask-stackoverflow.aspx.cs" Inherits="Kong.ApiExpert.Web.Search.Ask_StackOverflow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<style type="text/css">
.table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
   background-color: #dff0d8;
}

.sortable, .pagination a, [data-toggle="popover"]
{
    cursor: pointer;
}

.ui-autocomplete {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  float: left;
  display: none;
  min-width: 160px;
  _width: 160px;
  padding: 4px 0;
  margin: 2px 0 0 0;
  list-style: none;
  background-color: #ffffff;
  border-color: #ccc;
  border-color: rgba(0, 0, 0, 0.2);
  border-style: solid;
  border-width: 1px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding;
  background-clip: padding-box;
  *border-right-width: 2px;
  *border-bottom-width: 2px;

  .ui-menu-item > a.ui-corner-all {
    display: block;
    padding: 3px 15px;
    clear: both;
    font-weight: normal;
    line-height: 18px;
    color: #555555;
    white-space: nowrap;

    &.ui-state-hover, &.ui-state-active {
      color: #ffffff;
      text-decoration: none;
      background-color: #0088cc;
      border-radius: 0px;
      -webkit-border-radius: 0px;
      -moz-border-radius: 0px;
      background-image: none;
    }
  }
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header">
</div>
<div class="row" >
    <div class = "col-sm-3 col-md-3 col-lg-2">
      <div class="input-group">
        <span class="input-group-addon"><label class="control-label" for="ddlPageSize">Page Size</label></span>
        <select id="ddlPageSize" class="form-control">
            <option value=5>5</option>
            <option value=10 selected=selected>10</option>
            <option value=20>20</option>
            <option value=30>30</option>
            <option value=50>50</option>
            <option value=100>100</option>
        </select> 
    </div>  
</div>
<br class="visible-xs-block"/>
<div class="col-sm-9 col-md-9 col-lg-10" >
 <div class="input-group">
      <input type=text  id="txtQuestion" class="form-control" autocomplete="off" placeholder="Ask question from Stack Overflow ..." autofocus/>
      <span class="input-group-btn">
        <button type="button" class="btn btn-success" id=btnSearch><span class="glyphicon glyphicon-search"></span></button>
      </span>
    </div>
</div>
</div>
<br />
<div class="row text-info" >
     <div class="col-sm-7">
        Powered by <i class='fa fa-stack-overflow'></i> Stackover Flow API
     </div>
     <div id=resultInfo class="col-sm-5 text-right">
        
     </div>
</div>
    <div id="detail">
    </div>
  <div class=row>
     <div class="col-xs-12 text-center">
        <ul class="pagination">
        </ul>
     </div>
  </div>
</div>
  <input type=hidden id=hidCurrentPage value=1 />
  <input type=hidden id=hidCurrentSort value=votes />
  <input type=hidden id=hidCurrentOrder value=desc />

  <input type=hidden id=hidLastPageIndex />
  <input type=hidden id=hidActiveMenu value="hypApp" />

</asp:Content>

<asp:Content ContentPlaceHolderID="ScriptSection" ID="pageScript" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/Scripts/AskQuestion") %>
</asp:Content>
