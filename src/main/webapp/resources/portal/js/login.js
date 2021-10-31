//화면 로딩 후 바로 실행
$(document).ready(function(){
	
	var passwordModal = document.getElementById('passwordModal');
	passwordModal.addEventListener('hidden.bs.modal', function (event) {
		//$('.modal input:not([type="submit"])').val('');
	});
	
	//이벤트 처리
	$(document).on('click', '#sendEmailBtn', function() {
		var memNo = $('#floatingMemNo').val();
		var memName = $('#floatingName').val();
		var memEmail = $('#floatingEmail').val();
		//ajax 사용
		$.ajax({
	        url: '/portal/chkEmailAjax', //요청경로
	        type: 'post',
	        data:{'memNo':memNo , 'memName':memName}, //필요한 데이터
	        success: function(result) {
	        	//ajax 실행 성공 시 실행되는 구간
	        	alert(result.memEmail+'/'+memEmail);
	        	
	        	if(result.memEmail ==memEmail){
					$('#sendMail').submit();
				}else{
		        	alert('이메일 주소를 확인해주세요');
				}
	        },
	        error: function(){
	        	//ajax 실행 실패 시 실행되는 구간
	        	alert('error');
	        } //error 닫기
		}); //ajax 닫기
		
		
	}); //click #sendEmailBtn 닫기
   
	
	
}); //ready(function)닫기

//함수 선언 영역
(function($){
	//aaa = function(){
	//};
   
})(jQuery);
























