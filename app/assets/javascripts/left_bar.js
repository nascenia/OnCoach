$(document).ready(function(){
    $(document).on('click',".sidebar-menu-expanded li a.expandable",function(evt){

        if ($(this).parent().find("ul.sub-menu").is(":hidden")){
            $("ul.sub-menu").hide();
            $(".main-menu li > a.expandable").removeClass("open");
            $(".main-menu li> a.expandable .glyphicon-chevron-up").removeClass('glyphicon-chevron-up').addClass("glyphicon-chevron-down");
            $(this).parent().find("ul.sub-menu").slideDown(500);
            $(this).find(".glyphicon-chevron-down").addClass("glyphicon-chevron-up").removeClass("glyphicon-chevron-down");
            $(this).addClass('open');

        }else{
            $(this).parent().find("ul.sub-menu").slideUp(500);
            $(this).find(".glyphicon-chevron-up").addClass("glyphicon-chevron-down").removeClass("glyphicon-chevron-up");
            $(this).removeClass("open");

        }
        evt.stopPropagation();
    });
    $(document).on('mouseover',".sidebar-menu-collapsed li a.expandable",function(evt){
        if ($(this).parent().find("ul.sub-menu").is(":hidden")){
            $("ul.sub-menu").hide();
            $(".main-menu li > a.expandable").removeClass("open");
            $(".main-menu li").removeClass("open");
            $(this).parent().find("ul.sub-menu").show();
            $(this).addClass("open");
            $(this).parent().addClass("open");
        }
        evt.stopPropagation();
    });
    $('.sidebar-menu-collapsed .sub-menu').mouseover(function(evt){
        evt.stopPropagation();
    });

    $(document).mouseover(function(){
        $('.sidebar-menu-collapsed .sub-menu').hide();
        $(".sidebar-menu-collapsed .main-menu li > a.expandable").removeClass("open");
        $(".sidebar-menu-collapsed .main-menu li").removeClass("open");
    });

    $(document).on('click', 'ul.main-menu li > a.expandable, .sidebar.sidebar-menu-expanded ul.sub-menu li > a', function(){
        $('ul li').removeClass('dashboard');

        var div = '<div class="left-arrow-wrapper"><span class="left-arrow"></span></div>'
        var $parent = $(this).parent();
        if (!$parent.hasClass('dashboard')){
            $parent.addClass('dashboard');
            $(this).closest('a.expandable').after(div);
        }
    })
});
