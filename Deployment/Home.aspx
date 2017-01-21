<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Kong.ApiExpert.Web.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div data-role="page" id="pageone">
 <div data-role="header">
  <div data-role="navbar">
    <ul>
      <li><a href="#anylink" data-icon="home" class="ui-btn-active">Home</a></li>
      <li><a href="#anylink" data-icon="arrow-r">Page Two</a></li>
      <li><a href="#anylink" data-icon="search">Search</a></li>
    </ul>
  </div>
</div>

  <div data-role="main" class="ui-content">
  <form method="post" action="demoform.asp">
      <div class="ui-field-contain">
        <label for="email">E-mail:</label>
        <input type="email" id="email" placeholder="Your email..">
        <label for="email">Password:</label>
        <input type=password id="password">

        <label for="email">Gender:</label>
        <fieldset data-role="controlgroup" data-type="horizontal">
            <label for="male">Male</label>
            <input type="radio" name="gender" id="male" value="male">
            <label for="female">Female</label>
            <input type="radio" name="gender" id="female" value="female">	
        </fieldset>
      </div>
    </form>
  </div>

  <div data-role="footer">
  <h1>Footer Text</h1>
  </div>
</div> 
</asp:Content>
