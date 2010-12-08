$(function() {
    $('.gallery').each(function() {
        $(this).children('a').lightBox({
            txtImage:       'Photo',
            txtOf:          '/',
            imageLoading:   'images/lightbox/lightbox-ico-loading.gif',
            imageBtnClose:  'images/lightbox/lightbox-btn-close.gif',
            imageBtnPrev:   'images/lightbox/lightbox-btn-prev.gif',
            imageBtnNext:   'images/lightbox/lightbox-btn-next.gif',
            imageBlank:     'images/lightbox/lightbox-blank.gif'
        });
    });
});
