/// <reference path="jquery-2.1.1.js" />
$(document).ready(function ()
{
    //$('th').addClass("higligth"); // выбрать элементы th
    //$('h2').addClass("higligth2"); // выбрать элементы h2
    //$('.name').addClass("higligth3"); // выбрать классы name
    //$('#deleteButton').addClass("higligth1"); // выбрать элементы с id = "deleteButton"

    //$('h2').addClass("higligth2"); // выбрать элементы h2
    //$('h2 + table > thead > tr > th').addClass("higligth");
    //$('h2 + table > tbody > tr > td').addClass("higligth1");

    $('table td:first').addClass("higligth1");
    $('table td:last').addClass("higligth1");

    //$('tr:eq(1)').addClass("higligth");

    //$('table td:eq(5)').addClass("higligth1");

    //$('tr:has(td:contains("Kin")) > td').addClass("higligth2");
    $(':button').addClass("higligth2");
    $('tr:has(td:contains("Kili"))').css("color", "blue");
    $('table').find("td[class]").parent().filter(":even").css("color", "red");

    $('tr').prepend("<td></td>");
    $('<input name="delete" type="radio"/>').prependTo("tbody td:first-child").first().attr("checked", true);

    $('td').bind("mouseenter", function (e)
    {
        e.addClass("higligth1");
    });

    $('td').bind("mouseleave", function (e)
    {
        e.removeClass("higligth1");
    });

    $(":button").bind("click", function (e)
    {
        $(':radio:checked').closest('tr').remove();
        $(':radio').first().attr("checked", true);
    });
});
