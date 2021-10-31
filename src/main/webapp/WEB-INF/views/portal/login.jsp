<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/portal/js/login.js?ver=12"></script>
</head>
<body>

<!-- 로그인 폼 -->
<form action="/portal/login" method="post" autocomplete="off">
	<input type="text" name="memNo"  placeholder="아이디를 입력하세요" required autofocus> <!-- autofocus=>페이지 로드될 때 자동으로 focus -->
	<input type="password" name="memPw" placeholder="비밀번호를 입력하세요" required>
	<input type="submit" value="로그인">
</form>

<!-- 아이디 찾기 Modal 버튼 -->
<span data-bs-toggle="modal" data-bs-target="#idModal">아이디 찾기</span>
<!--아이디 찾기 Modal 내용 -->
<div class="modal fade" id="idModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog"> 
		<div class="modal-content"> 
			<div class="modal-header"> 
				<h5 class="modal-title" id="exampleModalLabel">아이디 찾기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
			</div>
			<div class="modal-body">
				<form action="/member/login" method="post">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="floatingInput" placeholder="ID" name="id" required>
						<label for="floatingInput">Input your ID</label>
					</div>
					<div class="form-floating mb-3">
						<input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="pw" required>
						<label for="floatingPassword">Input your Password</label>
					</div>
					<div class="col-12 d-grid">
						<input type="submit" class="btn btn-primary" value="Login" onclick="">
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
<span data-bs-toggle="modal" data-bs-target="#passwordModal">비밀번호 변경</span>
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
						<label for="floatingMemNo">Input your student Number</label>
						
						<input type="text" class="form-control" name="memName" id="floatingName" placeholder="이름" required>
						<label for="floatingName">Input your Name </label>
						
						<input type="text" class="form-control" name="to" id="floatingEmail" placeholder="이메일" required>
						<label for="floatingEmail">Input your Email</label>
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

</body>
</html>