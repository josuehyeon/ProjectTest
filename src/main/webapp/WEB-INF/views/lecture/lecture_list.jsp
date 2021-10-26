<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
list
<c:forEach items="${lectureList}" var="lectureInfo">

${lectureInfo.lecName } 
<input type="button" value="삭제" onclick="location.href='/lecture/deleteLecture?lecId=${lectureInfo.lecId }';">
<input type="button" value="수정" onclick="location.href='/lecture/updateLecture?lecId=${lectureInfo.lecId }';">
</c:forEach>
</body>
</html>