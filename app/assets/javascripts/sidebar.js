$(document).ready(function(){
    var item = localStorage.getItem('item');

    if (item) {
        $('a').removeClass('active');
        $('a#'+item).addClass('active');

        if ($('a#'+item).parents("li:last").hasClass('has_sub')){
            var subItem = localStorage.getItem('subItem');
            $('a#'+subItem).addClass('active');
            $('a#'+item).trigger('click');
        }
    }

    $('#sidebar-menu a').on('click', function(){

        if ($(this).parents("li:last").hasClass('has_sub')){
            var item = $(this).parents("li:last").children("a:first").attr('id');
            localStorage.setItem('item', item);

            var subItem = $(this).attr("id");
            $(subItem).addClass('active');
            localStorage.setItem('subItem', subItem);

        }
        else {
            var item = $(this).attr('id');
            localStorage.setItem('item', item);
        }

    })

})