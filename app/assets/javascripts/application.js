// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .
//
////= require jquery3
//= require popper
//= require bootstrap-sprockets
////= require jquery
//= require moment
//= require fullcalendar
//= require rails-ujs
//= require turbolinks
//= require Chart.min
//

$(function () {
    function eventCalendar() {
        return $('#calendar').fullCalendar({
            events: '/diaries.json',
            titleFormat: 'YYYY年 M月',
            dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
			dayClick: function(date, jsEvent, view) {
			    $(".fc-day[data-date=" + date.format("YYYY-MM-DD") + "]").css("background-color", "red");
                var selected_date = date.format("YYYY-MM-DD");
				window.location.href = `/diaries/record?date=${selected_date}`;
			}
        });
    };
    function clearCalendar() {
        $('#calendar').html('');
    };
    $(document).on('turbolinks:load', function () {
	    eventCalendar();
    });
});

$(function() {
    $('.a').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 2500,
    });
});

