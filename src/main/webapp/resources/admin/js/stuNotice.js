//화면 로딩 후 바로 실행
$(document).ready(function(){
	//이벤트 처리
	$(document).on('click', '#okayBtn', function() {
		var stuNo = $(this).attr('data-stuNo');
		
//		var yellowReason = $(this).closest('.yellowReason').val();
		var yellReason = $(this).parent().prev().find('.yellowReason').val();
		
		var email = $(this).parent().prev().find('.emailTd').text();
		
		
		$.ajax({
	        url: '/admin/mailNoticeAjax', //요청경로
	        type: 'post',
	        data:{'stuNo':stuNo , 'yellReason':yellReason, 'email':email}, //필요한 데이터
	        success: function(result) {
	        	
	        },
	        error: function(){
	        	//ajax 실행 실패 시 실행되는 구간
	        	alert('error');
	        } //error 닫기
		}); //ajax 닫기
		
    }); //change collegeList 이벤트 닫기
    
	
	
	
});

//함수 선언 영역
(function($){
	//aaa = function(){
	//};
   
})(jQuery);



