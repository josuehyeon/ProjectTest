<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/portal/js/login.js?ver=12"></script>
<style type="text/css">
*{
	margin: 0;
}
body{
	margin: 0;
	background-color: #eeeeee;
}
.tableDiv{
}
table{
	margin: 0 auto;
	padding-top: 100px;
	background-color: white;
	margin-top: 10px;
	text-align: center;
	width: 1000px;
}
td{
	text-align: center;
	vertical-align: middle;
}
#enter{
	margin-top: 5px;
}
input{
	width: 300px;
	height: 50px;
}
.welcomeDiv{
	margin-bottom: 50px;
}
</style>
</head>
<body>
<!-- 로그인 폼 -->
<div class="tableDiv">
	<table>
		<colgroup>
			<col width="50%;">
			<col width="50%;">
		</colgroup>
		<tr>
			<td class="leftTd">
				<img src="/resources/portal/images/뚜비.PNG">
			</td>
			<td>
				<img src="/resources/portal/images/JesusLogo.png" style="width: 200px;">
				<div class="welcomeDiv">
					<span>
						예수대학교 포탈시스템 방문을 환영합니다.
					</span>
				</div>
				<form action="/portal/login" method="post" autocomplete="off">
					<div>
						<input type="text" name="memNo" id="memNo" placeholder="아이디를 입력하세요" required autofocus> <!-- autofocus=>페이지 로드될 때 자동으로 focus -->
					</div>
					<div id="enter"></div>
					<div>
						<input type="password" name="memPw" placeholder="비밀번호를 입력하세요" required>
					</div>
					<!-- 로그인 버튼 -->
					<div id="enter"></div>
					<div>
						<input type="submit" value="로그인">
					</div>
				</form>
				<!-- 아이디 찾기 Modal 버튼 -->
				<span data-bs-toggle="modal" data-bs-target="#idModal"><span style="color: red;">*</span>아이디 찾기</span>
				<!--아이디 찾기 Modal 내용 -->
				<div class="modal fade" id="idModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog"> 
						<div class="modal-content"> 
							<div class="modal-header"> 
								<h5 class="modal-title" id="exampleModalLabel">아이디 찾기</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
							</div>
							<div class="modal-body">
								<form action="/portal/findId" method="post">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingId" placeholder="ID" name="memName" required>
										<label for="floatingId">Name</label>
									</div>
									<!-- <div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingBirthDate" placeholder="BirthDate" name="memBirth" required>
										<label for="floatingBirthDate">Birth Date</label>
									</div> -->
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingPhoneNum" placeholder="PhoneNumber" name="memPhone" required>
										<label for="floatingPhoneNum">Phone Number</label>
									</div>
									<div class="col-12 d-grid">
										<input type="submit" class="btn btn-primary" value="아이디확인" onclick="">
									</div>
								</form>
							</div>
							<!-- <div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div> -->
						</div>
					</div>
				</div>
				
				<!-- 비밀번호 변경 Modal 버튼 -->
				<span data-bs-toggle="modal" data-bs-target="#passwordModal"><span style="color: red;">*</span>비밀번호 변경</span>
				<!--비밀번호 변경 Modal 내용 -->
				<div class="modal fade" id="passwordModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog"> 
						<div class="modal-content"> 
							<div class="modal-header"> 
								<h5 class="modal-title" id="exampleModalLabel">비밀번호 변경</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
							</div>
							<div class="modal-body">
							
								<form action="/portal/sendMail" method="post" id="sendMail">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="memNo" id="floatingMemNo" placeholder="학번" required>
										<label for="floatingMemNo">Member Number</label>
									</div>
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="memName" id="floatingName" placeholder="이름" required>
										<label for="floatingName">Name</label>
									</div>
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="to" id="floatingEmail" placeholder="이메일" required>
										<label for="floatingEmail">Email</label>
									</div>
									<div class="col-12 d-grid">
										<input type="button" class="btn btn-primary" id="sendEmailBtn" value="임시 비밀번호 발급">
									</div>
								</form>
								
							</div>
							<!-- <div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div> -->
						</div>
					</div>
				</div>
				<div>
					<span>아이디 로그인은, 학번 및 교직원 번호를 이용해 주세요.</span>
				</div>
			</td>
		</tr>
	</table>	
</div>
<span>COPYRIGHT©2019 JESUS UNIVERSITY. ALL RIGHTS RESERVED.</span>

</body>
</html>