<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/form/istBoard" method="post">
<div class="container">
	<div class="row">
		<div class="col-12">
			<table>
				<col width="5%">
				<col width="45%">
				<col width="25%">
				<col width="25%">
				<tr>
					<td>제목</td>
					<td>
						<input type="text" name="title">
					</td>
					<td>
						주제
					</td>
					<td>
						<select name="cateNo">
							<option value="1" selected>자유게시판</option>
							<option value="2">건의게시판</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="4">내용</td>
				</tr>
				<tr>
					<td colspan="4"><textarea rows="30" cols="120" name="content" style="resize: none;"></textarea></td>
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