<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${not empty memberInfo.memPw }">
		<script type="text/javascript">
			location.href = '/stuInfo/changePwJsp';
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('아이디와 비밀번호를 확인하세요.');
			location.href = '/stuInfo/chkPwJsp';
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>