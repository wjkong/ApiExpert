<%@ Page Title="" Language="C#" MasterPageFile="~/MyDemo.Master" AutoEventWireup="true" CodeBehind="ApplicationForm.aspx.cs" Inherits="MyDemo.Prototype.ApplicationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="../Scripts/CountryState.js" type="text/javascript"></script>

<style type="text/css">

.mControl
{
    margin-top:5px;  
}

label.required:after
{
    color: red;
    content: "*";
    position: absolute;
    margin-left: 3px;
   
    font-family: 'Glyphicons Halflings';
    font-weight: normal;
    font-size: 12px;
}
 
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<script type="text/javascript">
    $(function () {
        $.each(countryStates.Countries, function (index, country) {
            var text = country.n;
            var option = new Option(country.v, country.v);
            $(option).html(text);
            $('#ddlCountry').append(option);
        });

        RefreshState();

        $('#ddlCountry').change(function () {
            RefreshState();
        });
    });

    function RefreshState() {
        $('#ddlState').empty();

        var selectedCountry = $('#ddlCountry').val();

        $.each(countryStates.Countries, function (index, country) {
            if (country.v == selectedCountry) {
                $.each(country.s, function (index, state) {
                    var text = state.n;
                    var option = new Option(state.v, state.v);
                    $(option).html(text);
                    $('#ddlState').append(option);
                });
            }
        });
    }
</script>

<form class="form-horizontal" role="form">
  <div class="form-group">
    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label required" for=txtFirstName>First Name</label>
    </div>
    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <input type=text id=txtFirstName class="form-control" />
    </div>
  
    <div class="clearfix visible-sm-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label required" for=txtLastName>Last Name</label>
    </div>
    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <input type=text id=txtLastName class="form-control"/>
    </div>

    <div class="clearfix visible-md-block"></div>
    <div class="clearfix visible-sm-block"></div>

    <div class="col-xs-2 col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=radGender>Gender</label>
    </div>
    <div class="col-xs-10 col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <label class="radio-inline"><input type="radio" name="radGender">Male</label>
        <label class="radio-inline"><input type="radio" name="radGender">Female</label>
    </div>

    <div class="clearfix visible-sm-block"></div>
    <div class="clearfix visible-lg-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=txtAddress>Address</label>
    </div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <input type=text id=txtAddress class="form-control" />
    </div>
    <div class="clearfix visible-sm-block"></div>
    <div class="clearfix visible-md-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=txtSuite>Unit/Suite</label>
    </div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <input type=text id=txtSuite class="form-control"/>
    </div>
    <div class="clearfix visible-sm-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=ddlCountry>Country</label>
    </div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <select id=ddlCountry class="form-control">
        </select>
    </div>

    <div class="clearfix visible-sm-block"></div>
    <div class="clearfix visible-lg-block"></div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-right mControl">
        <label class="control-label" for=ddlState>State/Province</label>
    </div>

    <div class="col-sm-6 col-md-3 col-lg-2 text-left mControl">
        <select id=ddlState class="form-control">
        </select>
    </div>

</div>
</form>

<input type=hidden id=hidActiveMenu value="hypApp" />
  <input type=hidden id=hidRoot value="../" />
    <script src="../Scripts/Common.js" type="text/javascript"></script>
</asp:Content>
