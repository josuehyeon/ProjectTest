
/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	$(document).on('click', '#exitStudyBtn', function(){
		var b = confirm('유의 사항을 확인 했으며 자퇴를 신청합니다.');
		if(b){
			alert('자퇴신청 완료');
			$('#exitStudyBtn').attr('disabled', true);
			$('#exitStudyForm').submit();
		}
		else{
			alert('자퇴신청 취소');
			$('#exitStudyBtn').attr('', false);
		}
	});
	
	$(document).on('click', '.goExitStudy', function(){
		location.href = '/stuManage/goExitStudy?stuNo=' + stuNo;
	});
	
});

/* 함수선언 영역*/
(function($){
     aaa = function(){
	
     };
	
})(jQuery);
