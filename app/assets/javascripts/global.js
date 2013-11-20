$(document).ready(function() {
    $(".item-hover").on({
        mouseenter: function() {
            $(this).stop().fadeTo(500, 0.6);
        },
        mouseleave: function() {
            $(this).stop().fadeTo(500, 1);
        }
    });
});
