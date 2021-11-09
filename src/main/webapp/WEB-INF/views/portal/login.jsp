<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/portal/js/login.js?ver=12"></script>
<style type="text/css">
*{margin:0;}
body{
	margin: 0 auto;
}
div{
	vertical-align: middle;
	margin: 0 auto;
}
table{
	margin: 0 auto;
	margin-top: 350px;
	width: 600px;
	text-align: center;
}
.left{
	height: 1000px;
	/* background-color: #aaaaaa; */
}
.right{
	height: 1000px;
	/* background-color: #555555; */
	vertical-align: middle;
}
#enter{
	margin-top: 5px;
}
input{
	height: 50px;
	width: 300px;
}
</style>
</head>
<body>
<!-- <div class="row"> -->
	<div class="col-5 left">
		<img src="/resources/portal/images/caption2.jpg" height="100%;" width="100%;">
	</div>
	<div class="col-7 right">
		<table>
			<tr>
				<td id="leftTd"></td>
				<td id="rightTd">
				<!-- 로그인 폼 -->
					<form action="/portal/login" method="post" autocomplete="off">
						<div>
							<input type="text" name="memNo" id="memNo" placeholder="아이디를 입력하세요" required autofocus> <!-- autofocus=>페이지 로드될 때 자동으로 focus -->
						</div>
						<div id="enter"></div>
						<div>
							<input type="password" name="memPw" placeholder="비밀번호를 입력하세요" required>
						</div>
						<div id="enter"></div>
						<!-- 로그인 버튼 -->
						<div>
							<input type="submit" value="로그인">
						</div>
					<!-- 		<input type="checkbox" name="useCookie" id="useCookie">
							로그인 유지 -->
					</form>
					<!-- 아이디 찾기 Modal 버튼 -->
					<span data-bs-toggle="modal" data-bs-target="#idModal">*아이디 찾기</span>
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
					<span data-bs-toggle="modal" data-bs-target="#passwordModal">*비밀번호 변경</span>
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
	
				</td>
			</tr>
		</table>
	</div>
		<span>COPYRIGHT©2019 JESUS UNIVERSITY. ALL RIGHTS RESERVED.</span>
<!-- </div> -->




</body>
</html>