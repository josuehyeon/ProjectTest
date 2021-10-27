//화면 로딩 후 바로 실행
$(document).ready(function(){
	//이벤트 처리
	//강의 수정
	$(document).on('click', '.update', function() {
		var result = confirm('수정하시겠습니까?');
		var lecId =  $(this).attr('data-lecId');
		
		if(result){
			location.href='/lecture/updateLectureForm?lecId='+lecId;
		}
    });
	
	//강의 삭제
	$(document).on('click', '.delete', function() {
		var result = confirm('삭제하시겠습니까?');
		var lecId =  $(this).attr('data-lecId');
		
		if(result){
			location.href='/lecture/deleteLecture?lecId='+lecId;
		}
    });
    
	
	
	
});

//함수 선언 영역
(function($){
	//aaa = function(){
	//};
   
})(jQuery);
























