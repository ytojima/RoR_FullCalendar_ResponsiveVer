$(document).on('turbolinks:load', function () {
    $(document).ready(function () {
        if ($('#calendar').length > 0 ) {
            var calType = 'dayGridMonth';
            if (window.innerWidth < 991.98) {
                calType = 'listMonth';
            }

            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                events: '/calender',
                plugins: [dayGridPlugin, listPlugin],
                initialView: calType,
                locale: 'ja',
                height: 650,
                dayMaxEvents: 5,
                windowResize: function () {
                    if (window.innerWidth < 991.98) {
                        calendar.changeView('listMonth');
                    } else {
                        calendar.changeView('dayGridMonth');
                    }
                },
            });
            calendar.render();
        }
    });
});