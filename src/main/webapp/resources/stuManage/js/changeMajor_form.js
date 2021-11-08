//화면 로딩 후 바로 실행
$(document).ready(function(){
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
		        str += '<select class="form-select" name="upDept" id="deptList">';
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
	changeMajor = function(){
		var result = confirm('전과신청하시겠습니까?');
		
		if(result){
			$('#changeMajor').submit();
		}
	};
   
})(jQuery);
























