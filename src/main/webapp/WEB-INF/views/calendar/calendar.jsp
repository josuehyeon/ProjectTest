<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/fullcalendar-5.10.1/lib/main.css?ver=21">
<script type="text/javascript" src="/resources/fullcalendar-5.10.1/lib/main.js?ver=2222321"></script>
<script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });

</script>
</head>
<body>
<div id='calendar'></div>
dd
</body>
</html>