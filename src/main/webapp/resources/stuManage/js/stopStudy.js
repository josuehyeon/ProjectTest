
/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	$(document).on('click', '#stopStudyAgree', function(){
		var a = $('#stopStudyAgree').is(':checked'); 
		if(a){
			$('#stopStudyBtn').attr('disabled', false);
		}
		else {
			$('#stopStudyBtn').attr('disabled', true);
		}
	});
	
	$(document).on('click', '#stopStudyBtn', function(){
		var b = confirm('유의 사항을 확인 했으며 휴학을 신청합니다.');
		if(b){
			alert('휴학신청 완료');
		}
		else{
			alert('휴학신청 취소');
		}
	});
	
	
	
});

/* 함수선언 영역*/
(function($){
     aaa = function(){
	
     };
	
})(jQuery);
