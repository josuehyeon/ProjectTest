<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: 0 auto;
	margin-top: 30px;
	text-align: center;
}
.tt{
	margin: 0 auto;
	text-align: center;
}
.container{
	
}
.tx{
	text-align: center;
	margin: 0 auto;
	height: 30px;
	vertical-align:middle;
}
</style>
</head>
<body>
<form action="/board/istBd" method="post">
<div class="container">
	<div class="row">
		<div class="col-12">
			<table>
				<col width="15%">
				<col width="25%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="*%">
				<tr style="width: 300px;">
					<td class="tt"  style="border-right: 1px solid #a8a8a8;">제목</td>
					<td>
						<input type="text" name="boardTitle" style="width: 150px;">
					</td>
					<td class="tt" style="border-right: 1px solid #a8a8a8;">
						주제
					</td>
					<td>
						<select name="cateNo">
							<option value="1" selected>자유게시판</option>
							<option value="2">건의게시판</option>
						</select>
					</td>
					<td>날짜</td>
					<td><input type="date" name="boardDate" value="${nowDate }" readonly></td>
				</tr>
				<tr>
					<td colspan="6" class="tt" style="height: 50px; vertical-align:middle;">내용</td>
				</tr>
				<tr>
					<td colspan="6"><textarea rows="30" cols="160" name="boardContent" style="resize: none; margin: 0 auto; verrical-align" placeholder="타인을 불편하게 하는 발언은 제재당할 수 있음을 알립니다." ></textarea></td>
				</tr>
				<tr>
					<td colspan="6" class="tt">
						임의 작성자 : <input type="text" name="boardWriter" value="${sessionScope.loginInfo.memNo }" readonly="readonly">
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<div style="text-align: center;">
	<input type="submit" name="글 등록">
</div>
</form>
</body>
</html>