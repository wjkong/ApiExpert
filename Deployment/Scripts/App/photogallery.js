﻿"use strict";

var totalPhoto = 0;

$(function () {
    Refresh();
    $('#btnThumbnail').hide();

    //$('#btnNext').click(function () {
    //    var currentPage = $('#hidCurrentPage').val();
    //    currentPage++;

    //    $('#hidCurrentPage').val(currentPage);

    //    if ($('#hidFullPicture').val() == "Y")
    //        SetLargeScreen(currentPage);
    //    else
    //        SetScreen(currentPage, $(this));
    //});

    //$('#btnPrev').click(function () {
    //    var currentPage = $('#hidCurrentPage').val();
    //    currentPage--;

    //    $('#hidCurrentPage').val(currentPage);

    //    if ($('#hidFullPicture').val() == "Y")
    //        SetLargeScreen(currentPage);
    //    else
    //        SetScreen(currentPage, $(this));
    //});

    //$('.pagination').on('click', 'a', function () {
    //    var currentPage = $(this).text();

    //    $('#hidCurrentPage').val(currentPage);


    //    if ($('#hidFullPicture').val() == "Y")
    //        SetLargeScreen(currentPage);
    //    else
    //        SetScreen(currentPage, $(this).parent().parent());
    //});

    $('#Main').on('click', 'img.img-thumbnail', function () {
        var index = $(this).data("index");
        var strMaster = [];

        strMaster.push("<div id=myCarousel class='carousel' data-ride=carousel>");

        var str = [];
        var strHeader = [];

        strHeader.push("<ol class='carousel-indicators'>");
        str.push("<div class='carousel-inner' role='listbox'>");


        $("#Main img.img-thumbnail").each(function (i) {
            if (i == index) {
                str.push("<div class='item active'>");
                strHeader.push("<li data-target='#myCarousel' data-slide-to='", i, "' class='active'></li>");
            }
            else {
                str.push("<div class='item'>");
                strHeader.push("<li data-target='#myCarousel' data-slide-to='", i, "'></li>");
            }


            var imgUrl = $(this).attr('src');
            str.push("<img class='visible-xs-block center-block' src='", imgUrl, "' alt=icon />");
            str.push("<img class='visible-sm-block center-block' src='", imgUrl.replace('_n.jpg', '_c.jpg'), "' alt=icon />");
            str.push("<img class='visible-md-block visible-lg-block center-block' src='", imgUrl.replace('_n.jpg', '_b.jpg'), "' alt=icon />");

            str.push("</div>");
        });

        strHeader.push("</ol>");
        str.push("</div>");

        strMaster.push(strHeader.join(emptyStr));
        strMaster.push(str.join(emptyStr));
        strMaster.push('<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span></a>');
        strMaster.push('<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><span class="sr-only">Next</span></a>');
        strMaster.push("</div>");

        $('#modalPhoto .modal-body').html(strMaster.join(emptyStr));
    });

    $('#modalPhoto').on('hidden.bs.modal', function (e) {
        $('#modalPhoto .modal-body').html(emptyStr);
    });


    $('#btnThumbnail').click(function () {
        $('#hidFullPicture').val("N");
        $('#hidCurrentPage').val(1);

        Refresh();
      
        $(this).hide();
    });
});


function Refresh(target) {
    if (target != null)
        target.showProgressIndicator();

    var start = new Date().getTime();
    var pageIndex = $('#hidCurrentPage').val();

    var pageSize = 9;
    var uri = "https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=444944a3544fd05499d50adaaa0d5188&per_page={0}&page={1}&format=json&jsoncallback=onSuccess";
             
    uri = uri.format(pageSize, pageIndex);

    $.ajax({
        type: 'GET',
        url: uri,
        dataType: "jsonp",
        crossDomain: true,
        complete: function (xhr, status) {
            if (target != null) {
                $('.progressIndicator').fadeOut(100).remove();
            }

            var end = new Date().getTime();
            var time = ((end - start) * 0.001).toFixed(3);

            $('#resultInfo').html("Total results: {0}; Execution time: {1}s".format(totalPhoto, time));
        }
    });
}

function onSuccess(data) {
    if (data.stat == "ok") {

        var str = [];

        var uri = "<img class='img-thumbnail' data-toggle='modal' data-target='#modalPhoto' src='https://farm{0}.staticflickr.com/{1}/{2}_{3}_n.jpg' data-index='{4}' />";


        $.each(data.photos.photo, function (index, picture) {
            str.push("<div class='col-sm-6 col-md-4'>");
            str.push(uri.format(picture.farm, picture.server, picture.id, picture.secret, index));
            str.push("</div>");
        });

        BuildNavBar(data.photos.pages);

        $('#Main').html(str.join(emptyStr));

        var pageSize = 9;

        var currentPage = $('#hidCurrentPage').val();

        if (currentPage == 1) {
            $('#btnPrev').attr('disabled', 'disabled');
        }
        else
            $('#btnPrev').removeAttr('disabled', 'disabled');

        totalPhoto = data.photos.total;

        if (currentPage * pageSize < totalPhoto) {
            $('#btnNext').removeAttr('disabled', 'disabled');
        }
        else
            $('#btnNext').attr('disabled', 'disabled');

        $('#btnPrev, #btnNext').show();
    }
}