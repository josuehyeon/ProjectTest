//화면 로딩 후 바로 실행
$(document).ready(function(){
	//이벤트 처리
	//강의 신청
	$(document).on('click', '.enrolment', function() {
		var result = confirm('강의신청하시겠습니까?');
		var lecId =  $(this).attr('data-lecId');
		
		if(result){
			$('#enrolment').submit();
			location.href='/lecture/enrolment';
		}
    });
	
	
    
	//pdf 모달보여주기
	$(document).on('click', '.pdf', function() {
		var lecId =  $(this).attr('data-lecId');
		$.ajax({
            url: '/lecture/lecPdf', //요청경로
            type: 'get',
            data:{'lecId':lecId}, //필요한 데이터
            success: function(result) {
            	$('.modal-body').empty();
            	
            	var str = '<iframe src="/resources/pdfs/' + result.attachedPdfName + '"></iframe>';
            	$('.modal-body').append(str);
            	
            	$('#pdfModal').modal('show');
            	
               
            },
            error: function(){
             //ajax 실행 실패 시 실행되는 구간
               alert('실패');
            }
		});
	
	});
	
	
	
});

//함수 선언 영역
(function($){
	
	/*enrolment = function(){
		var result = confirm=('수강신청하시겠습니까?');
		
		if(result) {
			//$('#enrolment').submit();
		}
	};*/
   
})(jQuery);
























