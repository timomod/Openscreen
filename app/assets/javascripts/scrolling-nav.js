//jQuery to collapse the navbar on scroll
$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
        $(".page-scroll").addClass("scroll-style");
        $(".navbar-brand").addClass("brand-style");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
        $(".page-scroll").removeClass("scroll-style");
        $(".navbar-brand").removeClass("brand-style");
    }
});

//jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});




