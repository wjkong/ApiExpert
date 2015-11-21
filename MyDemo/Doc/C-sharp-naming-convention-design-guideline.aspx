<%@ Page Title="C Sharp Naming Convention Design Guideline" Language="C#" MasterPageFile="~/MyDemo.Master" AutoEventWireup="true" CodeBehind="C-sharp-naming-convention-design-guideline.aspx.cs" Inherits="MyDemo.Blog.naming_convention_design_guideline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
td 
{
    text-align:left;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<div class=wrapper>
<div class="page-header">
</div>
<div class="pull-right text-info">
   Published: June 15th, 2012
</div>
<br />
<div>
    <p><span class="firstLetter">C</span>onsistent naming pattern is one of the most important elements of predictability and discoverability in a managed class library. Widespread use and understanding of these naming guidelines should eliminate unclear code and make it easier for developers to understand shared code. </p>
    <p>
    <br />
    <span style="color:Red">Pascal case:</span> The first letter in the identifier and the first letter of each subsequent concatenated word are capitalized. <br />
    <span style="color:Red">Camel case:</span> The first letter of an identifier is lowercase and the first letter of each subsequent concatenated word is capitalized. <br />
    <span style="color:Red">Upper case:</span> Only use all upper case separated by underscore "_" for identifiers.<br />  

</p>
</div>
<div>
<h5>1. Namespace naming convention: <span class=text-primary>CompanyName.SolutionName.ProjectName.ModualName (Pascal Case)</span></h5>
<p class="para">
MicNets.Blog.Web<br />
MicNets.Blog.DAL<br />
MicNets.Blog.Biz<br />
</p>
<p>
<h5>2. Class naming convention: <span class=text-primary>Use a noun or noun phrase to name a class, and avoid using the underscore character "_"  (Pascal Case)</span></h5>
<p class="para">
Account<br />
BookStore<br />
Department<br />
</p>

<h5>3. Interface naming convention: <span class=text-primary>Prefix Interface name with a character "I", and avoid using the underscore character "_" (Pascal Case)</span></h5>
<p class="para">
IAccount<br />
IStore<br />
IDepartment<br />
</p>

<h5>4. Method parameters & Local method variables naming convention: <span class=text-primary>Use descriptive parameter name (Camel Case)</span></h5>
<p class="para">
depositAmount<br />
days<br />
isWeekend<br />
</p>

<h5>5. Constants naming convention: <span class=text-primary>Use all uppercase with noun words separated by underscore "_" to name constant (Upper Case)</span></h5>
<p class="para">
MAXIMUM_DAILY_TRASACTION_AMOUNT;<br />
HOURS_OF_DAY;<br />
MINNUTES_OF_HOUR;<br />
</p>

<h5>6. Enumerations naming convention: <span class=text-primary>Use a singlton noun begins with an "N" prefix (Pascal Case)</span></h5>
<p class="para">
NAccountType;<br />
NCategory;<br />
NFontSize;<br />
</p>

<h5>7. Private Member variables naming convention: <span class=text-primary>Prefix private member variable with an underscore "_" (Camel Case)</span></h5>
<p class="para">
_price;<br />
_balance;<br />
_description;<br />
</p>

<h5>8. Properties naming convention: <span class=text-primary>Must exactly match the member variable name without an underscore "_" prefix (Pascal Case)</span></h5>
<p class="para">
Member variables: private decimal _price;<br />
Property:   public decimal Price<br />
            { <br />
                <span class="tab">get {   return _price; }</span><br />
                <span class="tab">set {&nbsp; _price &nbsp;=&nbsp; value; }</span> <br />
            }<br />
</p>

<h5>9. Methods/Functions naming convention: <span class=text-primary>Use verbs or verb phrases to name methods or functions (Pascal Case) </span></h5>
<p class="para">
LoadAllApplication();<br />
InsertOneCustomer();<br />
ReserveTicket();<br />
</p>

<h5>10. Control naming convention: <span class=text-primary>Prefix the most popular 3-character to name a server control, 4-character if neccessary (Camel Case)</span></h5>
<br />
<table class="table table-hover table-bordered">
    <tr>
        <td>TextBox
        </td>
        <td>
            txt*
        </td>
        <td rowspan=23 style="width:40px">
        </td>
         <td>
             GridView</td>
        <td>
            gvw*</td>
    </tr>
    <tr>
        <td>Button; LinkButton; ImageButton
        </td>
        <td >
            btn*
        </td>
         <td>
             DataList</td>
        <td>
            dal*</td>
    </tr>
    <tr>
        <td>Lable
        </td>
        <td >
            lbl*
        </td>
          <td>
              DetailsView</td>
        <td>
            dvw*</td>
    </tr>
    <tr>
        <td>CheckBox
        </td>
        <td >
            chk*
        </td>
         <td>
             FormView</td>
        <td>
            fvw*</td>
    </tr>
    <tr>
        <td>
            HyperLink</td>
        <td >
            hyp*</td>
          <td>
              Repeater</td>
        <td>
            rpt*</td>
    </tr>
    <tr>
        <td>
            DropDownList</td>
        <td >
            ddl*</td>
          <td>
              ReportViewer</td>
        <td>
            rvw*</td>
    </tr>
    <tr>
        <td>
            ListBox</td>
        <td >
            ltb*</td>
          <td>
              RequiredFieldValidator</td>
        <td>
            vldr*</td>
    </tr>
    <tr>
        <td style="height: 21px">
            CheckBoxList</td>
        <td style="height: 21px" >
            chkl*</td>
          <td>
              RangeValidator</td>
        <td>
            vldg*</td>
     </tr>
     <tr>
        <td>
            RadioButton</td>
        <td >
            rad*</td>
          <td>
              RegularExpressionValidator</td>
        <td>
            vlde*</td>
            
    </tr>
       <tr>
        <td>
            RadioButtonList</td>
        <td>
            radl*</td>
          <td>
              CompareValidator</td>
        <td>
            vldc*</td>
    </tr>
    <tr>
        <td>
            Image&nbsp;</td>
        <td >
            img*
        </td>
          <td>
              CustomValidator</td>
        <td>
            vldx*</td>
    </tr>
    <tr>
        <td>
            ImageMap</td>
        <td >
            map*
        </td>
          <td>
              ValidationSummary</td>
        <td>
            vlds*</td>
    </tr>
    <tr>
        <td>
            Table</td>
        <td >
            tbl*
        </td>
          <td>
              Memu</td>
        <td>
            menu*</td>
    </tr>
    <tr>
        <td>
            BulletedList</td>
        <td >
            btl*</td>
          <td>
              TreeView</td>
        <td>
            tvw*</td>
    </tr>
    <tr>
        <td>
            HiddenField</td>
        <td >
            hid*</td>
        <td>
            LoginView</td>
        <td>
            lvw*</td>
    </tr>
    <tr>
        <td>
            Literal</td>
        <td >
            lit*</td>
        <td>
            boolean</td>
        <td>
            bln*</td>
    </tr>
    <tr>
        <td style="height: 21px">
            Calender</td>
        <td style="height: 21px" >
            cald*</td>
       <td>
           StringBuilder</td>
        <td>
            strb*</td>
     </tr>
     <tr>
        <td>
            FileUpload</td>
        <td >
            fil*</td>
     <td>
         User/Custom Control</td>
        <td>
            ctl*</td>
    </tr>
        <tr>
        <td>
            MultiView</td>
        <td >
            mvw*</td>
        <td>
            DataGrid</td>
        <td>
            dag*</td>
    </tr>
    <tr>
        <td>
            View</td>
        <td >
            vw*</td>
        <td>
        </td>
        <td>
            
        </td>
    </tr>
    <tr>
        <td style="height: 21px">
            PlaceHolder</td>
        <td style="height: 21px" >
            pld*</td>
       <td>
        </td>
        <td>
            
        </td>
     </tr>
     <tr>
        <td>
            Panel</td>
        <td >
            pnl*</td>
     <td>
        </td>
        <td>
            
        </td>
    </tr>
</table>

	
<h5>
    11. Code blocks opening and closing braces: <span class=text-primary>Code blocks always be opened on the next line as a statement.</span></h5>
<p class="para">
if (i = 0)<br />
{<br />
    <span class="tab">return false;</span> <br />
}<br />
</p>
</div>
<div class="row">
    <h5>12. Spacing: <span class=text-primary>Spaces improve readability by decreasing code density.</span></h5>
    <br />
<table class="table table-hover table-bordered">
    <tr>
        <td >
            Use a space after a comma between function parameters
        </td>
        <td rowspan=12 style="width:40px"></td>
         <td >
            Do not use spaces before or after the parenthesis and function parameters
        </td>
    </tr>
    <tr>
        <td ><span class=text-primary>Good: GetCustomerList(int CountryID,&nbsp;&nbsp;int StateID,&nbsp;&nbsp;bool blnMale)</span>
        </td>
        
        <td ><span class=text-primary>Good: SelectAllBook(string storeName)</span>
        </td>
      
    </tr>
    <tr>
        <td ><span style="color: Red">Bad:&nbsp;&nbsp;GetCustomerList(int CountryID,int StateID,bool blnMale)</span>
        </td>
        
        <td ><span style="color: Red">Bad:&nbsp;&nbsp;SelectAllBook(&nbsp;&nbsp;string storeName&nbsp;&nbsp;)</span>
        </td>
    </tr>
    <tr>
        <td colspan=3>
            <br />
        </td>
    </tr>
    <tr>
        <td >
            Use a space before flow control statements
        </td>
        <td >
            Do not use spaces between a function name and parenthesis
        </td>
    </tr>
        <tr>
        <td ><span class=text-primary>Good: while&nbsp;&nbsp;(true)</span>
        </td>
        
        <td ><span class=text-primary>Good: InsertOne()</span>
        </td>
      
    </tr>
    <tr>
        <td ><span style="color: Red">Bad:&nbsp;  &nbsp;while(true)</span>
        </td>
        
        <td ><span style="color: Red">Bad:&nbsp;  &nbsp;InsertOne&nbsp;&nbsp;()</span>
        </td>
    </tr>
    <tr>
        <td colspan=3>
            <br />
        </td>
    </tr>
    
    <tr>
        <td >Use a space before and after comparison operators
        </td>
        <td >Do not use spaces inside brackets
        </td>
    </tr>
        <tr>
        <td ><span class=text-primary>Good: if (amountDeposit&nbsp;&nbsp;>=&nbsp;&nbsp;amountWithdraw)</span>
        </td>
        
        <td ><span class=text-primary>Good: Customer["Index"]</span>
        </td>
      
    </tr>
    <tr>
        <td ><span style="color: Red">Bad:&nbsp;  &nbsp;if (amountDeposit>=amountWithdraw)</</span>
        </td>
        
        <td ><span style="color: Red">Bad:&nbsp;  &nbsp;Customer[&nbsp;&nbsp;"Index"&nbsp;&nbsp;]</span>
        </td>
    </tr>

</table>

</div>

<h5>13. Magic number: <span class=text-primary>No magic number should be 
    used in coding, except -1, 0 and 1. Using descriptive constant or varaiable to hold the 
    value.</span></h5>
    <br />
    <table class="table table-hover table-bordered">
      <tr>
        <td ><span style="color: Red">Bad:&nbsp;&nbsp;if (NumOfPaymentPerYear == 12)</span>
        </td>
        
        <td ><span style="color: Red">Bad:&nbsp;&nbsp;for (int i = 0; i < 10; i++)</span>
        </td>
    </tr>
     <tr>
        <td ><span class=text-primary>Good: int const MONTHLY_NUM_PAYMENT_PER_YEAR = 12; <br /> if (NumOfPaymentPerYear == MONTHLY_NUM_PAYMENT_PER_YEAR)</span>
        </td>
        
        <td ><span class=text-primary>Good: int maxCount = 10; <br />(int i = 0; i < maxCount; i++)  </span>
        </td>
      
    </tr>
  
    </table>

<h5>14. Local variable: <span class=text-primary>Local variable names should be descriptive enough. And 
    initialize local variables as soon as they are declared</span>
</h5>
<p class="para">
string errorMeg = string.Empty; <br />
decimal interestRate = decimal.Zero; <br />
int numOfPayment = 0; <br />
bool blnIsWeekend = false; <br />
</p>
<h5>15. Wrapping Lines <span class=text-primary>When an expression will not fit on a single line, break it up according to the principles below.</span>
</h5>
<p class="para">
* Break after a comma. <br />
* Break after an operator. <br />
* Prefer higher-level breaks to lower-level breaks. <br />
*Align the new line with the beginning of the expression at the same level on the previous line. <br /><br />

i.e.<br />
CalculateMonthlyPayment(outstandingPrincipal, interestRate, term,<br />
<span style="padding-left:145px">downpayment, creditScore)</span><br />
                        
monthlyPayment = (outstandingPrincipal - downPayment) * <br />
<span style="padding-left:105px">(1 + interestRate) / term</span>
</p>
<h5>16. The length of class and method: <span class=text-primary>Class and method should be kept them short and neat.</span>
</h5>
<p class="para">
Any classes with more than 2000 lines of coding should be broken down to other sub classes.<br /> 
Any methods that have more than 30 lines of coding should be broken down to other sub methods<br />
</p>
</div>
<input type=hidden id=hidActiveMenu value="hypBlog" />
<input type=hidden id=hidRoot value="../" />
<script src="../Scripts/Common.js" type="text/javascript"></script>

</asp:Content>
