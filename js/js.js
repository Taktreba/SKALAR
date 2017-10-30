$(document).ready(function () { // модалка для картинки с затемнением

    $(".image").click(function () {
        var img = $(this);
        var src = img.attr('src');
        $("body").append("<div class='popup'>" +
            "<div class='popup_bg'></div>" +
            "<img src='" + src + "' class='popup_img' />" +
            "</div>");
        $(".popup").fadeIn(800);
        $(".popup_bg").click(function () {
            $(".popup").fadeOut(800);
            setTimeout(function () {
                $(".popup").remove();
            }, 800);
        });
    });

});

$(document).ready(function () {

    $("#myTable").tablesorter({
        sortList: [[2, 0]], // отсортировано по мылу
        widgets: ["zebra"],
        headers: {
            3: {
                sorter: false
            },
            4: {
                sorter: false
            },
            5: {
                sorter: false
            },
            6: {
                sorter: false
            }
        }
    }).tablesorterPager({ // настройки пагинации
        size: 5,
        container: $('#pager'),
        positionFixed: false
    });
});