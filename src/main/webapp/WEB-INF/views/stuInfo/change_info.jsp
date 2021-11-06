<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function openPostCode(){
		
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	            
	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
	            
	            //우편번호와 주소 정보를 해당 필드에 넣는다
	        	document.getElementById('postcode').value = data.zonecode;
                document.getElementById('roadAddress').value = roadAddr;
                //ㄴ 자바스크립트는 홀따옴표, 쌍따옴표 둘 다 됨
	        }
	    }).open();
	}
</script>
<style type="text/css">
table{
	border: 1px solid black;
	width: 600px;
}
tr,td{
	border: 1px solid black;
}
</style>
</head>
<body>
학생 로그인>내정보>내정보관리>내정보 *수정*

<!-- 변경하면 안되는 정보 그냥 표시만 되게 해둘 것 -->
<div>
	<table>
		<tr>
			<td rowspan="3">이미지첨부</td>
			<td>학번</td>
			<td>${studentInfo.stuNo }</td>
			<td>이름</td>
			<td>${memberInfo.memName }</td>
		</tr>
		<tr>
			<td>소속</td>
			<td>${studentInfo.collegeInfo.collName } / ${studentInfo.majorCode }</td>
			<td>부전공</td>
			<td>${studentInfo.minorCode }</td>
		</tr>
		<tr>
			<td>학년/학기</td>
			<td>${studentInfo.stuYear }학년/${studentInfo.stuSem }학기</td>
			<td>학적상태</td>
			<td>${studentInfo.stuStatus }</td>
		</tr>
	</table>
</div>
<!-- 변경 가능한 정보 -->
<form action="/stuInfo/changeInfo" method="post">
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