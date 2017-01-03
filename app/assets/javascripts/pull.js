$(function(){
    $('#menu').hover(function(){
        $("ul:not(:animated)", this).slideDown().css({position: 'absolute', zIndex: 1000});
    }, function(){
        $("ul.pull",this).slideUp();
    });
});