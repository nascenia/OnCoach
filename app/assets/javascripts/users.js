$(document).ready(function(){

    if ($('#weight-bar-chart').length > 0) {
        Morris.Bar({
            element: 'weight-bar-chart',
            data: [
                { y: '2015-06-01', a: 46  },
                { y: '2015-05-01', a: 90   }
            ],
            xkey: 'y',
            ykeys: ['a'],
            labels: ['Weight']
        });
    }
    if ($('#training-bar-chart').length > 0) {
        Morris.Bar({
            element: 'training-bar-chart',
            data: [
                { y: '2015-06-01', a: 450  },
                { y: '2015-05-01', a: 363   }
            ],
            xkey: 'y',
            ykeys: ['a'],
            labels: ['Calories Burned']
        });
    }
    $('a.widget-toggle').on('click', function(){
        var content = $(this).closest('.widget').find('.widget-content');
        $(content).slideToggle(500);
    })

    $('.animate-number').each(function () {
        $(this).prop('Counter',0).animate({
            Counter: $(this).text()
        }, {
            duration: 5000,
            easing: 'swing',
            step: function (now) {
                $(this).text(Math.ceil(now));
            }
        });
    });
});