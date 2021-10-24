//화면 로딩 후 바로 실행
$(document).ready(function(){
	
	//이벤트 처리: 변경할 비밀번호 자릿수 맞
	$(document).on('keyup', '#newPw', function() {

		//변경할 비밀번호 값을 가져옴
		var newPw = $('#newPw').val();
		//메시지 출력할 공간의 내용물 지움
		$('#newPwSpan').empty();

		//모든 공백 체크 정규식
		var empJ = /\s/;
		//비밀번호 정규식
		//var pwJ = /^[A-Za-z0-9]{6,12}$/;
		var num = /^[0-9]/;
		var eng = /^[A-Za-z]/;
		var numTest = num.test($('#newPw').val());
		var engTest = eng.test($('#newPw').val());
		
		//변경할 비밀번호 자릿수 검사
		if(empJ.test($('#newPw').val())){
			var str = '공백 문자 제거하셈';
			$('#newPwSpan').append(str);
			return false;
		}/*else if(pwJ.test($('#newPw').val())){
			var str = 'pwJ 테스트';
			$('#newPwSpan').append(str);
		}*/
		else if(newPw.length <6 ){
			var str = '비밀번호는 6자리 이상';
			$('#newPwSpan').append(str);
			return false;
		}else if(numTest ==""){
			var str = '숫자가 없음';
			$('#newPwSpan').append(str);
			return false;
		}else if(engTest ==""){
			var str = '영어가 없음';
			$('#newPwSpan').append(str);
			return false;
		}else{
			var str = '통과';
			$('#newPwSpan').append(str);
		} //if-else 닫기
		
	}); // #newPw 이벤트 닫기
	
	//이벤트 처리: 변경할 비밀번호가 서로 일치하는지 확인하는 메시지 보여주기
	$(document).on('keyup', '#newPwCheck', function() {
		//변경할 비밀번호와, 재확인 input태그의 값을 가져옴
		var newPw = $('#newPw').val();
		var newPwCheck = $('#newPwCheck').val();

		//메시지 출력할 공간 내용물 비우기
		$('#newPwCheckSpan').empty();
		
		//변경할 비밀번호 == 변경할 비밀번호 일치하면
		if(newPw == newPwCheck){
			
			//비밀번호 일치한다는 메시지 띄워주기
			var str = '';
			str += 'newPw ==newPwCheck.\n';
			$('#newPwCheckSpan').append(str); // – 해당 노드의 마지막 자식 노드 뒤에 html코드를 추가한다.

			
		} //if문 닫기
    }); // newPwCheck 이벤트 닫기
}); //$(document).ready(function(){ 닫기


//함수 선언 영역
(function($){
	changePw = function(){
		var newPw = $('#newPw').val();
		var newPwCheck = $('#newPwCheck').val();
		
		if( newPw==newPwCheck ){
			$('#changePwForm').submit();
		}else{
			alert('비밀번호를 다시 확인');			
		}
	}; //checkPw 함수 닫기
		
		
		

		
		
		//newPw 유효성부터 검사
		//if(true){
			
		//}
			//자릿수 6개 이상인 경우 
				//영문 숫자 조합 맞음
					//newPw == newPwCheck
						//비밀번호 변경 쿼리 실행
				//둘 중 하나가 없음
					//영문과 숫자의 조합으로 비밀번호를 만들라고 메시지 띄워주기 
			//자릿수 6개 미만
				//alert창 띄움(비밀번호 자릿수 확인하세요)
				//alert창 띄우는 거도 ajax로 해야겠지?
   
})(jQuery);
























