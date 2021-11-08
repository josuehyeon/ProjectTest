//화면 로딩 후 바로 실행
$(document).ready(function(){
	//이벤트 처리
	//강의 신청
	$(document).on('click', '.enrolment', function() {
		var result = confirm('강의신청하시겠습니까?');
		
		if(result){
			$(this).parent().submit();
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
	
	//단과대선택하면 학과나오도록
	//이벤트 처리
	$(document).on('change', '#collegeList', function() {
		var collNo = $('#collegeList').val();
		
		//ajax 사용
		$.ajax({
	        url: '/lecture/selectCollAjax', //요청경로
	        type: 'post',
	        data:{'collNo':collNo}, //필요한 데이터
	        success: function(result) {
	        	//ajax 실행 성공 시 실행되는 구간
	        	$('#tableDiv').empty();
	        	
	        	  var str ='';
	              str += '<label for="deptList" class="form-label">학과</label>';
	              str += '<select class="form-select" id="deptList" name="deptId">';
	              str += '<option value="">전체</option>';
	              console.log(result.deptList);
	              $(result.deptList).each(function(index, element){
	            	  str += '<option value="'+ element.deptId + '">' + element.deptName + '</option>';	
	              });
	              str += '</select>';
	            
	              
	              $('#tableDiv').append(str);
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
	
	deleteEnrol = function(enrolmentId){
		var result = confirm('취소하시겠습니까?');

		if(result) {
			location.href='/lecture/deleteEnrol?enrolmentId='+enrolmentId;
		}
	};
   
})(jQuery);
























