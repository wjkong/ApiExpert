"use strict";

$(function () {
    var url = "../Service/WebService.asmx/GetCurrencyHistory";

    $.ajax({
        type: 'POST',
        url: url,
        dataType: "text",
        success: OnSuccess,
        error: function (xhr, status, error) {
            alert(error);
        },
        complete: function () {

        }
    });

});


function OnSuccess(data) {

    var jsonData = JSON.parse(data.d);
}