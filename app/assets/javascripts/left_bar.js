$(document).ready(function(){
    var activeLink = localStorage.getItem('activeLink');
    var activeSubLink = localStorage.getItem('activeSubLink');
    var div = '<div class="left-arrow-wrapper"><span class="left-arrow"></span></div>';

    if (activeLink != null){
        $('nav.sidebar ul li').removeClass('dashboard');
        var highlightedTab = 'li#'+activeLink;
        $("ul.sub-menu").css("overflow", "hidden");
        $(highlightedTab).addClass('dashboard');
        $(highlightedTab).children('a.expandable').after(div);
        $(highlightedTab).find(".fa-angle-down").addClass("fa-angle-up").removeClass("fa-angle-down");
        $(highlightedTab).find("ul.sub-menu").slideDown(500);
    }
    if (activeSubLink != null){
        var subTab = 'li#'+activeSubLink;
        $(subTab).addClass('highlight');
    }

    $(document).on('click',".sidebar-menu-expanded li a.expandable",function(evt){

        if ($(this).parent().find("ul.sub-menu").is(":hidden")){
            $("ul.sub-menu").css("overflow", "hidden");
            $("ul.sub-menu").slideUp(500);
            $(".main-menu li > a.expandable").removeClass("open");
            $(".main-menu li> a.expandable .fa-angle-up").removeClass('fa-angle-up').addClass("fa-angle-down");
            $(this).parent().find("ul.sub-menu").slideDown(500);
            $(this).find(".fa-angle-down").addClass("fa-angle-up").removeClass("fa-angle-down");
            $(this).addClass('open');

        }else if (!$(this).parent().hasClass('sub-menu')){
            $("ul.sub-menu").slideUp(500);
            $(".main-menu li > a.expandable").removeClass("open");
            $(".main-menu li> a.expandable .fa-angle-up").removeClass('fa-angle-up').addClass("fa-angle-down");
        }else{
            $(this).parent().find("ul.sub-menu").slideUp(500);
            $(this).find(".fa-angle-up").addClass("fa-angle-down").removeClass("fa-angle-up");
            $(this).removeClass("open");

        }
        evt.stopPropagation();
    });
    $(document).on('mouseover',".sidebar-menu-collapsed li a.expandable, .sidebar-menu-collapsed ul.sub-menu",function(evt){
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

    $(document).on('click', 'ul.main-menu li > a.expandable', function(){
        var $parent = $(this).parent();
        localStorage.setItem('activeLink', $parent.attr('id'));
    });

    $(document).on('click', 'ul.sub-menu li > a', function(){
        var $parent = $(this).parent();
        localStorage.setItem('activeSubLink', $parent.attr('id'));

        var $main_menu = $parent.parents('ul.main-menu li');
        if (!$main_menu.hasClass('dashboard')){
            localStorage.setItem('activeLink', $main_menu.attr('id'));
        }
    });
});
