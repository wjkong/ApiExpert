$(function () {
//    var url = "currency-history.aspx/GetCurrencyHistory";
    var url = "../Service/WebService.asmx/GetCurrencyHistory";
    var str = [];

    $.ajax({
        type: 'POST',
        url: url,
        dataType: "text",
        success: OnSuccess,
        error: function (xhr, status, error) {
            alert(error);
        },
        complete: function (xhr, status) {

        }
    });

});


function OnSuccess(data, status) {

    var jsonData = JSON.parse(data.d);
}