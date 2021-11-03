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
		<div style="text-align: right;">
			<c:if test="${not empty sessionScope.loginInfo }">
				${sessionScope.loginInfo.memNo }님 반갑습니다.
				<a href="/portal/logout">로그아웃</a> <!-- 일단 여기 넣어놓음 -->
				<a href="/portal/mainJsp">메인</a> <!-- 일단 여기 넣어놓음 -->
			</c:if>
		</div>
		<div class="col-12">
			<nav class="navbar navbar-light" style="background-color: #212529;">
				<a class="nav-link link-light" href="/board/portal">HOME</a>
				<c:if test="${not empty sessionScope.loginInfo }">
					<c:choose>
						<c:when test="${sessionScope.loginInfo.memAuth eq 3}">
							<a class="nav-link link-light" href="/admin/goMain">학생관리(Admin)</a>
							<a class="nav-link link-light" href="/board/infoPark">정보광장</a>
							<a class="nav-link link-light" href="/board/job">취업정보</a>							
							<a class="nav-link link-light" href="#">관리자가 사용하는 메뉴 표시</a>					
						</c:when>
						<c:otherwise>
							<a class="nav-link link-light" href="#">내 정보</a>
							<a class="nav-link link-light" href="/stuManage/goMain">학적관리</a>
							<a class="nav-link link-light" href="#">교과과정/수업</a>
							<a class="nav-link link-light" href="/lecture/goMain">강의 관리</a>
							<a class="nav-link link-light" href="/board/infoPark">정보광장</a>
							<a class="nav-link link-light" href="/board/job">취업정보</a>
						</c:otherwise>
					</c:choose>
				</c:if>
			</nav>
		</div>
	</div>
</div>
</body>
</html>