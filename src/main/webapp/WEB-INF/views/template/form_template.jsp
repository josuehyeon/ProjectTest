<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title"/></title>
<!-- 태그 초기화 작업 -->
<link rel="stylesheet" href="/resources/common/reset.css">

<!-- 제이쿼리 문법을 로딩 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<!-- 부트스트랩 사용을 위해 css, js를 로딩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<style type="text/css">
body {
	font-family: 'NanumBarunpen';
	text-align: center;
	background-color: #e1e2e1;
	background-repeat: no-repeat;
	background-size: cover;
}
.aaa{
	background-color: aqua;
}
table {
  text-align: center;
  margin: auto 0;
  
}
.container-fluid{
	width: 90%;
	margin-top: 20px;
	margin-bottom: 20px;
}
body {
	text-align: center;
	background-color: #e1e2e1;
}
tr, td{
	text-align: center;
}
.col{
	text-align: center;
}
.row{
	text-align: center;
}
th, td {
  text-align: center;
}
td{
	text-align: center;
}
thead{
	text-align: center;
}

	body {
		background-repeat: no-repeat;
		background-size: cover;
	}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col">
			<tiles:insertAttribute name="menu"/>
		</div>
		<div class="col-12">
			<tiles:insertAttribute name="body"/>
		</div>
	</div>
</div>
</body>
</html>
