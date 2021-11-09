
/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	$(document).on('click', '#againStudyBtn', function(){
		var b = confirm('유의 사항을 확인 했으며 복학을 신청합니다.');
		if(b){
			alert('복학신청 완료');
			$('#againStudyBtn').attr('disabled', true);
			$('#againStudyForm').submit();
		}
		else{
			alert('복학신청 취소');
			$('#againStudyBtn').attr('', false);
		}
	});
	
	$(document).on('click', '.goAgainStudy', function(){
		location.href = '/stuManage/goAgainStudy?stuNo=' + stuNo;
	});
	
});

/* 함수선언 영역*/
(function($){
     aaa = function(){
	
     };
	
})(jQuery);
