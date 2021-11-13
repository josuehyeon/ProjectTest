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
	background-color: white;
}
tr,td{
	border: 1px solid black;
	height: 30px;
	vertical-align: middle;
}
.tableDiv{
	margin-top: 80px;
}
.column{
	background-color: #003264;
	color: white;
}
.btnDiv{
	margin-top: 5px;
}
input{
	background-color: #dddddd;
}
input:focus {
	background-color: #aaaaaa;
}
img {
  object-fit: cover;
  width: 80px;
}
</style>
</head>
<body>
<!-- 변경하면 안되는 정보 그냥 표시만 되게 해둘 것 -->
<div class="tableDiv">
	<table>
		<tr>
			<td rowspan="3"><img src="/resources/stuInfo/images/${memberInfo.memIdpic }.jpg"></td>
			<td class="column">학번</td>
			<td>${studentInfo.stuNo }</td>
			<td class="column">이름</td>
			<td>${memberInfo.memName }</td>
		</tr>
		<tr>
			<td class="column">소속</td>
			<td>${studentInfo.collegeInfo.collName }&nbsp;${studentInfo.majorCode }</td>
			<td class="column">부전공</td>
			<td>${studentInfo.minorCode }</td>
		</tr>
		<tr>
			<td class="column">학년/학기</td>
			<td>${studentInfo.stuYear }학년&nbsp;${studentInfo.stuSem }학기</td>
			<td class="column">학적상태</td>
			<td>${studentInfo.stuStatus }</td>
		</tr>
	</table>
</div>
<!-- 변경 가능한 정보 -->
<form action="/stuInfo/changeInfo" method="post">
	<div>
		<table>
			<colgroup>
				<col width="10%;">
				<col width="40%;">
				<col width="10%;">
				<col width="40%;">
			</colgroup>
			<tr>
				<td class="column">생년월일</td>
				<td>${memberInfo.memBirth }</td>
				<td class="column">이메일</td>
				<td><input type="text" name="memEmail" value="${memberInfo.memEmail}" style="width: 100%;" autocomplete="none"></td>
			</tr>
			<tr>
				<td class="column">전화번호</td>
				<td> <input type="text" name="memTel" value="${memberInfo.memTel}" style="width: 100%;"></td>
				<td class="column">휴대폰</td>
				<td> <input type="text" name="memPhone" value="${memberInfo.memPhone}" style="width: 100%;"> </td>
			</tr>
			<tr>
				<td class="column">우편번호</td>
				<td>
					<input type="text" name="postcode" id="postcode" value="${memberInfo.postcode }" placeholder="우편번호" required style="width: 25%;" readonly>
					<input type="button" class="btn" onclick="openPostCode();" value="우편번호 찾기" style="width: 35%; padding: 0; font-size: 12pt; background-color: #003264; color: white;">
				</td>
				<td class="column">주소</td>
				<td>
					<input type="text" name="memAddr" id="roadAddress" value="${memberInfo.memAddr }" placeholder="주소" required readonly style="width: 100%;">
						
				</td>
			</tr>
		</table>
	</div>
	<div class="btnDiv">
		<input type="submit" value="변경">
	</div>
	<input type="hidden" name="memNo" value="${studentInfo.stuNo }">
	<div class="eachInputDiv">
	</div>
</form>




</body>
</html>