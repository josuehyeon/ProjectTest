//화면 로딩 후 바로 실행
$(document).ready(function(){
	
	//이벤트 처리: 변경할 비밀번호 자릿수 맞
	$(document).on('keyup', '#newPw', function() {

		//변경할 비밀번호 값을 가져옴
		var newPw = $('#newPw').val();
		
		//메시지 출력할 공간의 내용물 지움
		$('#newPwSpan').empty();
		
		//비밀번호 조건 정규식
		var pwJ = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,10}$/;
		var pwJTest = !pwJ.test($('#newPw').val()); // =>영어만 있거나, 숫자만 있거나, 
		
		if(pwJTest){
			var str = '영어와 숫자를 모두 포함하여, 6~10자리 사이로 만드세요.';
			$('#newPwSpan').append(str);
		} // if(pwJTest) 닫기
	}); // #newPw 이벤트 닫기
	
	//이벤트 처리: 변경할 비밀번호가 서로 일치하는지 확인하는 메시지 보여주기
	$(document).on('keyup', '#newPwCheck', function() {
		//변경할 비밀번호와, 재확인 input태그의 값을 가져옴
		var newPw = $('#newPw').val();
		var newPwCheck = $('#newPwCheck').val();

		//메시지 출력할 공간 내용물 비우기
		$('#newPwCheckSpan').empty();
		
		//변경할 비밀번호 == 변경할 비밀번호 일치하면
		if(newPw != newPwCheck){
			
			//비밀번호 일치한다는 메시지 띄워주기
			var str = '';
			str += '비밀번호가 일치하지 않습니다.\n';
			$('#newPwCheckSpan').append(str); // – 해당 노드의 마지막 자식 노드 뒤에 html코드를 추가한다.

			
		} //if문 닫기
    }); // newPwCheck 이벤트 닫기
}); //$(document).ready(function(){ 닫기


//함수 선언 영역
(function($){
	changePw = function(){
		//비밀번호 input 값 가져옴
		var newPw = $('#newPw').val();
		var newPwCheck = $('#newPwCheck').val();
		
		//메시지 출력할 공간의 내용물 지움
		$('#newPwSpan').empty();
		$('#newPwCheckSpan').empty();
		
		//비밀번호 조건 정규식
		var pwJ = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,10}$/;
		var pwJTest = !pwJ.test($('#newPw').val()); // =>영어만 있거나, 숫자만 있거나, 공백이 있거나, 자리수가 안 맞으면 => true
		
		if(pwJTest){
			var str = '영어와 숫자를 모두 포함하여야 하며, 6~10자리 사이여야 합니다.';
			$('#newPwSpan').append(str);
		} // if(pwJTest) 닫기
		
		if( newPw==newPwCheck && !pwJTest ){
			$('#changePwForm').submit();
		}else{
			alert('비밀번호를 다시 확인하세요.');		
		}
	}; //checkPw 함수 닫기
   
})(jQuery);
























