$(document).ready(function(){

    $(document).on('click',".sidebar-menu-expanded li a.expandable",function(evt){

        if ($(this).parent().find("ul.sub-menu").is(":hidden")){
            $("ul.menu").hide();
            $(this).parent().find("ul.sub-menu").slideDown(500);
            $(this).find(".glyphicon-chevron-down").addClass("glyphicon-chevron-up").removeClass("glyphicon-chevron-down");
        }else{
            $(this).parent().find("ul.sub-menu").slideUp(500);
            $(this).find(".glyphicon-chevron-up").addClass("glyphicon-chevron-down").removeClass("glyphicon-chevron-up");

        }
        evt.stopPropagation();
    });
    $(document).on('mouseover',".sidebar-menu-collapsed li a.expandable",function(evt){
        if ($(this).parent().find("ul.sub-menu").is(":hidden")){
            $("ul.sub-menu").hide();
            $(this).parent().find("ul.sub-menu").show();
        }
        evt.stopPropagation();
    });
    $('document').on('mouseover','.sidebar-menu-collapsed ul.sub-menu,.sidebar-manu-collapsed .main-manu li',function(evt){
        evt.stopPropagation();
    });
    $(document).mouseover(function(){
        $('.sidebar-menu-collapsed .sub-menu').hide();
    });
});
