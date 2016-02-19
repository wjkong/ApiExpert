<%@ Page Title="C Sharp Interview Question" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="C-sharp-interview-question.aspx.cs" Inherits="Kong.ApiExpert.Web.Doc.C_sharp_interview_question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header">
</div>
<div class="pull-right text-info">
   Published: June 15th, 2012
</div>
<br />
<p>   
<div>1.	Why or when should use abstract class?</div>
Abstract class is best to be used for base class, which prevent accidently from creating an instance of base class. When we create a base class contain all common functionality, we don’t want the base class to be instantiated. i.e. Assume we has a base class Employee , we’d better let the derived class FullEmployee and ContractEmployee create a instance, rather than base class. 
</p> 
<div>
2.	What is the advantage of using interface?
<ul>
    <li>Allow us to develop decoupled system</li>
    <li>
        Very useful for Dependency Injection
    </li>
    <li>
        Make unit testing easier
    </li>
</ul>
</div>
<p>
3.	What is a recursive function?<br />
A method inside will call itself.
</p>
<p>
4.	Could you give me an example, where should be used recursion?<br />
Find all the files inside a folder and all the sub-folders in the hierarchy 
</p> 
<p>
5.	Could abstract class have a constructor?<br />
Yes, it could. It should be used protected, rather than public. Also, it will be called prior to derived class constructor.
</p>
<div>
6.	What is difference between IS and AS keyword?<br />
<ul>
    <li>“Is” operator returns true if an object can be cast to a specific type, otherwise false.</li>
    <li>
       “AS” operator attempts cast an object to a specific type, and returns null if it fails. 
    </li>
</ul>
</div>
<div>
7.	What is difference between classes and structs?<br />
<ul>
    <li>Struct is a value type and seal type, which is stored in a stack, cannot be inherited and also cannot inherit from a class.</li>
    <li>
        Value type holds their value in memory where they declared, which will be destroyed immediately after scope is lost.
    </li>
    <li>
        Class is a reference type, which is stored in a heap. 
    </li>
    <li>
        Reference type holds a reference to an object in memory, which only the reference variable will be destroyed immediately after scope is lost, the object will be destroyed later by the garbage collector.
    </li>
    <li>Both struct and class can inherit from an interface</li>
</ul>
</div>
</div>
<input type=hidden id=hidActiveMenu value="hypBlog" />
<input type=hidden id=hidRoot value="../" />

</asp:Content>
