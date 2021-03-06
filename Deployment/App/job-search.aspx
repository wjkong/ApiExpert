﻿<%@ Page Title="Job Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="job-search.aspx.cs" Inherits="Kong.ApiExpert.Web.Search.Job_Search" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header">
</div>
<div class="row" >
    <div class = "col-sm-9 col-lg-8">
        <div class="input-group">
            <span class="input-group-addon"><label class="control-label" for="txtCity">City</label></span>
            <input type=text  id="txtCity" class="form-control" placeholder="Enter your preferred city" onfocus="geolocate()" autofocus/>
        </div>
    </div>
     <div class = "col-sm-3 col-lg-4">
        <div style="padding-top:10px">
        <a data-toggle="modal" data-target="#myModal"><i class='fa fa-filter'></i>Additional Filter</a>
        </div>
    </div>
</div>
<br />
<div class="row" >
    <div class = "col-sm-3 col-lg-2">
      <div class="input-group">
        <span class="input-group-addon"><label class="control-label" for="ddlPageSize">Page Size</label></span>
        <select id="ddlPageSize" class="form-control">
            <option value=5>5</option>
            <option value=10 selected=selected>10</option>
            <option value=20>20</option>
            <option value=25>25</option>
        </select> 
    </div>  
</div>
<br class="visible-xs-block"/>
<div class="col-sm-9 col-lg-10" >
 <div class="input-group">
      <input type=text  id="txtQuery" class="form-control" placeholder="Search job by title, keywords or company name ..." />
      <span class="input-group-btn">
        <button type="button" class="btn btn-success" id=btnSearch><span class="glyphicon glyphicon-search"></span></button>
      </span>
        
    </div>
</div>
</div>
<br />
<div class="row text-info" >
     <div class="col-sm-6">
        <span id=indeed_at>
            <a href="http://www.indeed.com/">Job Search</a> Powered by 
            <a href="http://www.indeed.com/" title="Job Search"><img src="http://www.indeed.com/p/jobsearch.gif" style="border: 0; vertical-align: middle;" alt="Indeed job search"></a>
        </span>
     </div>
     <div id=resultInfo class="col-sm-6 text-right">
       
     </div>
</div>
                             
<div id="detail">
</div>
<div class="row text-center">
   <ul class="pagination"></ul>
</div>
 <!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog">
    
    <!-- Modal content-->
    <div class="modal-content">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Addtional Filter</h4>
    </div>
    <div class="modal-body">
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <div class="col-sm-6 text-right">
                    <label class="control-label " for=ddlFromAge>Jobs published</label>
                </div>
                <div class="col-sm-6">
                   <select id="ddlFromAge"  class="form-control">
						<option value="">anytime</option>
                        <option value="30">within a month</option>
                        <option value="15">within 15 days</option>
                        <option value="7">within 7 days</option>
                        <option value="3">within 3 days</option>
					</select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6 text-right">
                    <label class="control-label " for=ddlRadius>Location</label>
                </div>
                <div class="col-sm-6">
                   <select id="ddlRadius" class="form-control">
					    <option value="0">only in</option>
                        <option value="5">within 5 KM</option>
						<option value="10">within 10 KM</option>
						<option value="15">within 15 KM</option>
						<option selected=selected value="25">within 25 KM</option>
						<option value="50">within 50 KM</option>
						<option value="100">within 100 KM</option>
					</select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6 text-right">
                    <label class="control-label " for=ddlJobType>Show jobs of type</label>
                </div>
                <div class="col-sm-6">
                     <select id="ddlJobType" class="form-control">
                        <option value="">All job types</option>
                        <option value="subcontract">Freelance</option>
                        <option value="casual">Casual</option>
                        <option value="flyin_flyout">Fly-In/Fly-Out</option>
                        <option value="commission">Commission</option>
                        <option value="permanent">Permanent</option>
                        <option value="internship">Internship</option>
                        <option value="parttime">Part-time</option>
                        <option value="fulltime">Full-time</option>
                        <option value="apprenticeship">Apprenticeship</option>
                        <option value="temporary">Temporary</option>
                        <option value="volunteer">Volunteer</option>
                        <option value="contract">Contract</option>
                     </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6 text-right">
                    <label class="control-label " for=ddlSiteType>Show jobs from</label>
                </div>
                <div class="col-sm-6">
                     <select id="ddlSiteType" class="form-control">
					    <option value="">All web sites</option>
					    <option value="employer">Employer web sites only</option>
                        <option value="jobsite">Job boards only</option>
				    </select>
                </div>
            </div>
        </form>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-success" data-dismiss="modal" id=btnDone>Done</button>
    </div>
    </div>
</div>
</div>
</div>
  <input type=hidden id=hidCurrentPage value=1 />
  <input type=hidden id=hidLastPageIndex />
  
  <input type=hidden id=hidIpAddress value="1.2.3.4" />
  <input type=hidden id=hidActiveMenu value="hypApp" />
<form runat=server id=JobSearch>
 <asp:HiddenField ID="hidCountry" runat="server" ClientIDMode=Static />

  <input type=hidden id=country />
  <input type=hidden id=administrative_area_level_1 />
  <input type=hidden id=locality />
  <input type=hidden id=postal_code />
</form>
   
</asp:Content>

<asp:Content ContentPlaceHolderID="ScriptSection" ID="pageScript" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/Scripts/JobSearch") %>
    <script type="text/javascript" src="http://gdc.indeed.com/ads/apiresults.js" async></script>
</asp:Content>