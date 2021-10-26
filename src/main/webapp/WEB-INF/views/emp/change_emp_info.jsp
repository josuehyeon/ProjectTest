<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 변경 가능한 정보 -->
<form action="/emp/changeInfo" method="post">
	<div>
		<table>
			<tr>
				<td>생년월일</td>
				<td>${memberInfo.memBirth }</td>
				<td>이메일</td>
				<td><input type="text" name="memEmail" value="${memberInfo.memEmail}"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td> <input type="text" name="memTel" value="${memberInfo.memTel}s"></td>
				<td>휴대폰</td>
				<td> <input type="text" name="memPhone" value="${memberInfo.memPhone}"> </td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>
					<input type="text" name="postcode" id="postcode" value="${memberInfo.postcode }" placeholder="우편번호" required style="width: 25%;" readonly>
					<input type="button" class="btn" onclick="openPostCode();" value="클릭 우편번호 찾기" style="width: 25%; padding: 0; font-size: 16pt;">
				</td>
				<td>주소</td>
				<td>
					<input type="text" name="memAddr" id="roadAddress" value="${memberInfo.memAddr }" placeholder="주소" required readonly>
						
				</td>
			</tr>
		</table>
	</div>
	<input type="hidden" name="memNo" value="${studentInfo.stuNo }">
	<input type="submit" value="변경">
	<div class="eachInputDiv">
	</div>
</form>

</body>
</html>