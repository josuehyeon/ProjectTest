<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	margin: 0 auto;
	border-collapse: collapse;
	empty-cells:show; /* 빈 셀도 표시가 되도록 */
	/* position: absolute; */
	table-layout: fixed; /* 글자를 추가해도 테이블 크기는 일정하게 */
	width: 750px;
}
thead{
	background-color: #cccccc;
}
tr,td{
	border: 1px solid black;
	text-align: center;
}
td{
	height: 50px;
}
</style>
<script type="text/javascript" src="/resources/stuInfo/js/chk_timetable.js?ver=58"></script>
</head>
<body>
	
<div>
	<table>
		<thead>
			<tr>
				<td>TIME_ID(mon9)</td>
				<td>DAY(mon)</td>
				<td>TIME_START(9)</td>
				<td>TIME(3학점)</td>
				<td>LEC_ROOM(101)</td>
				<td>LEC_ID(1001)</td>
			</tr>
		</thead>
		<c:forEach items="${timetable }" var="each">
			<tr class="each">
				<td class="day">${each.day }</td>
				<td class="timeStart">${each.timeStart }</td>
				<td class="time">${each.time }</td>
				<td class="lecId">${each.lecId }</td>
				<td>${each.lecRoom }</td>
				<td class="timeId">${each.timeId }</td>
				</tr>
		</c:forEach>
	</table>
</div>
<!-- 시간표 -->
<div>
	<table class="timetable">
		<colgroup>
			<col width="20%">
			<col width="16%">
			<col width="16%">
			<col width="16%">
			<col width="16%">
			<col width="16%">
		</colgroup>
		<thead>
			<tr>
				<td></td>
				<td>월</td>
				<td>화</td>
				<td>수</td>
				<td>목</td>
				<td>금</td>
			</tr>
		</thead>
		<tr id="1">
			<td>1교시&nbsp;(09:00~09:50)</td>
			<td id="mon9"></td>
			<td id="tue9"></td>
			<td id="wed9"></td>
			<td id="thu9"></td>
			<td id="fri9"></td>
		</tr>
		<tr id="2">
			<td>2교시&nbsp;(10:00~10:50)</td>
			<td id="mon10"></td>
			<td id="tue10"></td>
			<td id="wed10"></td>
			<td id="thu10"></td>
			<td id="fri10"></td>
		</tr>
		<tr id="3">
			<td>3교시&nbsp;(11:00~11:50)</td>
			<td id="mon11"></td>
			<td id="tue11"></td>
			<td id="wed11"></td>
			<td id="thu11"></td>
			<td id="fri11"></td>
		</tr>
		<tr id="4">
			<td>4교시&nbsp;(12:00~12:50)</td>
			<td id="mon12"></td>
			<td id="tue12"></td>
			<td id="wed12"></td>
			<td id="thu12"></td>
			<td id="fri12"></td>
		</tr>
		<tr id="5">
			<td>5교시&nbsp;(13:00~13:50)</td>
			<td id="mon13"></td>
			<td id="tue13"></td>
			<td id="wed13"></td>
			<td id="thu13"></td>
			<td id="fri13"></td>
		</tr>
		<tr id="6">
			<td>6교시&nbsp;(14:00~14:50)</td>
			<td id="mon14"></td>
			<td id="tue14"></td>
			<td id="wed14"></td>
			<td id="thu14"></td>
			<td id="fri14"></td>
		</tr>
		<tr id="7">
			<td>7교시&nbsp;(15:00~15:50)</td>
			<td id="mon15"></td>
			<td id="tue15"></td>
			<td id="wed15"></td>
			<td id="thu15"></td>
			<td id="fri15"></td>
		</tr>
		<tr id="8">
			<td>8교시&nbsp;(16:00~16:50)</td>
			<td id="mon16"></td>
			<td id="tue16"></td>
			<td id="wed16"></td>
			<td id="thu16"></td>
			<td id="fri16"></td>
		</tr>
		<tr id="9">
			<td>9교시&nbsp;(17:00~17:50)</td>
			<td id="mon17"></td>
			<td id="tue17"></td>
			<td id="wed17"></td>
			<td id="thu17"></td>
			<td id="fri17"></td>
		</tr>
	</table>
</div>
</body>
</html>