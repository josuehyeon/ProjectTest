<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="/resources/stuManage/js/stopStudy.js?ver=2"></script>


</head>
<body>
<a href="/stuManage/stopStudyInfo">휴학 안내</a><br>
<div class="goStopStudy"><a href="/stuManage/goStopStudy">휴학 신청</a></div>


<a href="/stuManage/againStudyInfo">복학 안내</a><br>
<a href="/stuManage/goAgainStudy">복학 신청</a><br>

<a href="/stuManage/exitInfo">자퇴 안내</a><br>
<a href="/stuManage/goExit">자퇴 신청</a><br>


<a href="">전과 안내</a>
<a href="/stuManage/goChangeMajor">전과 신청</a>
<a href="">복수전공 안내</a>
<a href="/stuManage/goDoubleMajor">복수전공 신청</a>

<br><br>
<a href="/stuManage/showStuList">학생조회</a>
<!-- <a href="/stuManage/showStuDetail?memNo=blabla">학생 상세 조회 -->
</body>
</html>