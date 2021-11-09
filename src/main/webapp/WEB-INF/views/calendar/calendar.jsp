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
var calendar = null;

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

   calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      initialDate: '2020-09-12',
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
        var title = prompt('Event Title:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      eventClick: function(arg) {
        if (confirm('Are you sure you want to delete this event?')) {
          arg.event.remove()
        }
      },
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: [
     /*    {
          title: 'All Day Event',
          start: '2020-09-01'
        },
        {
          title: 'Long Event',
          start: '2020-09-07',
          end: '2020-09-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-09-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-09-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2020-09-11',
          end: '2020-09-13'
        },
        {
          title: 'Meeting',
          start: '2020-09-12T10:30:00',
          end: '2020-09-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2020-09-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2020-09-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2020-09-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2020-09-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2020-09-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2020-09-28'
        } */
      ]
    });

    calendar.render();
  });
var jsondata;
//1. 전체 이벤트 데이터를 추출
function allsave() {
	
	var allEvent = calendar.getEvents();
	//console.log(allEvent); F12해서 값 확인 할 수 있다.
	var events = new Array();
	
	//for문 도는 범위:각 이벤트 갯수만큼  , 총 이벤트 갯수만큼 for문 돌기
	for(var i=0; i<allEvent.length; i++){
		var obj = new Object();
		
		//이벤트 명칭
		obj.title = allEvent[i]._def.title; //이벤트 명칭
		obj.allday = allEvent[i]._def.allDay; //하루종일의 이벤트인지 알려주는 boolean 값(true/false)
		obj.start = allEvent[i]._instance.range.start;//시작시간 날짜 및 시간
		obj.end = allEvent[i]._instance.range.end;
		
		//전체 이벤트들 배열형태로, jason 객체 형태로 events 변수에 담김
		events.push(obj);
	}
	
	//JSON.stringify()는 자바스크립트의 값을 JSON 문자열로 변환한다.
	jsondata = JSON.stringify(events);
	
	//값이 잘 넘어왔는지 콘솔에 찍어보기 F12
	savedata(jsondata);
	console.log(jsondata);
}

function savedata(jsondata) {
	console.log(jsondata);
	alert(jsondata);
	$.ajax({
        url: '/common/regCalendar', //요청경로
        type: 'post',
        data:{"alldata":jsondata},  //필요한 데이터
        /* dataType: 'json',
        contentType: 'application/json', */
        contentType: "application/json; charset=UTF-8",
        success: function(result) {
           //ajax 실행 성공 후 실행할 코드 작성
           alert('성공');
        },
        error: function(request,status,error){
         //ajax 실행 실패 시 실행되는 구간
         
           alert('실패');
           alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
           console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
 	 });
	 
}

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }
.fc-event-title fc-sticky {
	background-color: #0f1756;
}
</style>
</head>
<body>
<div> 
</div>
<div id='calendar'></div>
dd
	<input type="button" value="저장" onclick="allsave();">
</body>
</html>