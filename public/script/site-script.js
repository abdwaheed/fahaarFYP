jQuery(window).load(function() 
  {
	  jQuery(window).scroll(function () {            
    if (jQuery(window).scrollTop() > 100) {
        jQuery(".header").addClass("MenuFixed");                
    } else {
        jQuery(".header").removeClass("MenuFixed");
    }

});
});

$('#testimonialSlide').owlCarousel({
    loop:true,
    margin:30,
    dot:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:3
        }
    }
});
$('#bannerSlide').owlCarousel({
    loop:true,
    margin:0,
    dot:true,
    autoplay:true,
    autoplayTimeout:3000,
    autoplayHoverPause:true,
    onInitialized: startProgressBar,
    onTranslate: resetProgressBar,
    onTranslated: startProgressBar,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
});

function startProgressBar() {
// apply keyframe animation
$(".slide-progress").css({
    width: "100%",
    transition: "width 5000ms"
});
}

function resetProgressBar() {
$(".slide-progress").css({
    width: 0,
    transition: "width 0s"
});
}
