$(document).ready(function() {
    $('.carousel').carousel({
	interval: 3000
    });
    $('.carousel-control').fadeTo(0, 0.05);
    $(".carousel").hover(function() {
	$('.carousel-control').stop().fadeTo(500, 1);
    },function() {
	$('.carousel-control').stop().fadeTo(500, 0.05);
    });
    
});
