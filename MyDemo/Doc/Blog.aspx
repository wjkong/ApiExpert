<%@ Page Title="Documentaion" Language="C#" MasterPageFile="~/MyDemo.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Kong.ApiExpert.Web.Blog.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header">
</div>
<div>
      <a href="http://www.asp.net/" target=_blank><asp:Image runat=server ImageUrl="~/Images/ASPNET.jpg" ID="img" AlternateText="ASP.NET" /></a>&nbsp;
      <asp:Image runat=server ImageUrl="~/Images/C.jpg" ID="Image1"  AlternateText="C Sharp" />&nbsp;
      <a href="http://www.microsoft.com/en-ca/server-cloud/products/sql-server/" target=_blank class=hidden-sm><asp:Image runat=server ImageUrl="~/Images/MsSql.jpg" ID="Image2" AlternateText="Ms Sql" /></a>
</div>
<div>
    <ul>
        <li><a href=C-sharp-naming-convention-design-guideline.aspx>C# Naming Convention Design Guideline</a></li>
    </ul>
</div>
</div>
<input type=hidden id=hidActiveMenu value="hypBlog" />
<input type=hidden id=hidRoot value="../" />
<script src="../Scripts/Common.js" type="text/javascript"></script>
</asp:Content>
