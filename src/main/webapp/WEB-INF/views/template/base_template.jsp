<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title"/></title>
<!-- 태그 초기화 작업 -->
<link href="assets/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/common/reset.css?ver=13">
<link rel="stylesheet" href="/resources/common/CommonMenu.css?ver=27">
<link rel="stylesheet" href="/resources/common/CommonBodyCssFrame.css?ver=10">

<!-- 제이쿼리 문법을 로딩 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="assets/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/resources/common/subMn"></script>
<!-- 부트스트랩 사용을 위해 css, js를 로딩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<style type="text/css">
body {
	font-family: 'NanumBarunpen';
	text-align: center;
	background-color: #cfd8e2;
	background-repeat: no-repeat;
	background-size: cover;
	margin: 0 auto;
}
.a {
	 color: white;
  text-decoration: none;
}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col">
			<tiles:insertAttribute name="menu"/>
		</div>
	</div>
	<div>
		<div class="col-12">
			<tiles:insertAttribute name="body"/>
		</div>
	</div>
</div>
</body>
</html>




