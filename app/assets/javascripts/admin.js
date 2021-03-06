/**
 * Created by christoandrew on 11/16/2015.
 */
//= require bootstrap-table
//= require bootstrap-datepicker
//= require chart.min
//= require chart-data
//= require easypiechart
//= require easypiechart-data

$('#calendar').datepicker({
});

!function ($) {
    $(document).on("click","ul.nav li.parent > a > span.icon", function(){
        $(this).find('em:first').toggleClass("glyphicon-minus");
    });
    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
}(window.jQuery);

$(window).on('resize', function () {
    if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
})
$(window).on('resize', function () {
    if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
})
