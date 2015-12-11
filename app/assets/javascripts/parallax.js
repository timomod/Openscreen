



// Parallax
$(document).ready(function(){
    if (!device.tablet() && !device.mobile()) {
        $(".parallax").addClass("fixed");
        $window = $(window);
        $('section[data-type="background"]').each(function(){
            var $scroll = $(this);
            $(window).scroll(function() {
                var yPos = -(($window.scrollTop() - $scroll.offset().top) / $scroll.data('speed'));
                var coords = '50% '+ yPos + 'px';
                $scroll.css({ backgroundPosition: coords });
            });
        });
        $(window).scroll(function() {
            var scroll = $(window).scrollTop();
            $('.site-wrapper-inner').css({'opacity':(( 200-scroll )/400)+0.4});
        });

        /* Create HTML5 element for IE */
        document.createElement("section");
    }
});
