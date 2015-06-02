$(document).ready(function(){

    return $("li a.expandable").click(function(){

        if ($(this).parent().find("ul.sub-menu").is(":hidden")){
            $(this).parent().find("ul.sub-menu").slideDown(500);
            $(this).find(".glyphicon-chevron-down").addClass("glyphicon-chevron-up").removeClass("glyphicon-chevron-down");
        }else{
            $(this).parent().find("ul.sub-menu").slideUp(500);
            $(this).find(".glyphicon-chevron-up").addClass("glyphicon-chevron-down").removeClass("glyphicon-chevron-up");

        }
    });
});
