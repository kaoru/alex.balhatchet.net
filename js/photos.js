$(function() {
    $('.gallery').each(function() {
        $(this).children('a').lightBox({
            txtImage:'Photo',
            txtOf:'/'
        });
    });
});
