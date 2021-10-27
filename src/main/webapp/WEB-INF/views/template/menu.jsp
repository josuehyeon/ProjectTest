<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<style type="text/css">
.nav-link {
	color: white;
}
</style>
</head>
<body>
<div>
	<div class="row">
		<div class="col-12">
			<nav class="navbar navbar-light" style="background-color: #282827;">
				<a class="nav-link link-light" href="/board/portal">HOME</a>
				<a class="nav-link link-light" href="/admin/goMain">학생관리(관리자)</a>
				<a class="nav-link link-light" href="#">내 정보</a>
				<a class="nav-link link-light" href="/stuManage/goMain">학적관리</a>
				<a class="nav-link link-light" href="#">교과과정/수업</a>
				<a class="nav-link link-light" href="/lecture/goMain">강의 관리</a>
				<a class="nav-link link-light" href="/board/infoPark">정보광장</a>
				<a class="nav-link link-light" href="/board/job">취업정보</a>
			</nav>
		</div>
	</div>
</div>
</body>
</html>