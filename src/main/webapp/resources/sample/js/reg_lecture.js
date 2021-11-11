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
	        	  str += '<div class="col">';
	              str += '<!-- 학과선택 -->	';
	              str += '<label for="deptList" class="form-label">학과</label>';
	              str += '<select class="form-select" id="deptList" name="deptId">';
	              console.log(result.deptList);
	              $(result.deptList).each(function(index, element){
	            	  str += '<option value="'+ element.deptId + '">' + element.deptName + '</option>';	
	              });
	              str += '</select>';
	              str += '</div>';
	              str += '<div id="profDiv">';
	              str += '<!-- 담당교수 -->';
	              str += '<div class="col">';
	              str += '<label for="empList" class="form-label">담당교수</label>';
	              str += '<select class="form-select" id="empList" name="profNo">';
	              $(result.profList).each(function(index, element){
	            	  str += '<option value="'+element.empNo+'">'+element.memberVO.memName+'</option>';
	              });
	              str += '</select>';
	              str += '</div>';
	              str += '<!-- 담당조교 -->	';
	              str += '<div class="col">';
	              str += '<label for="itemCategory" class="form-label">담당조교</label>';
	              str += '<select class="form-select" id="itemCategory" name="assiNo">';
	              $(result.assiList).each(function(index, element){
	            	  str += '<option value="'+element.empNo +'">'+element.memberVO.memName +'</option>';
	              });
	              str += '</select>';
	              str += '</div>';
	              str += '</div>';
	              
	              $('#tableDiv').append(str);
	        },
	        error: function(){
	        	//ajax 실행 실패 시 실행되는 구간
	        	alert('실패');
	        }
	  });
    });
    
	
	//학과에따른 교수조교수 나오게
	//이벤트 처리
	$(document).on('change', '#deptList', function() {
		var collNo = $('#deptList').val();
		
		//ajax 사용
		$.ajax({
	        url: '/lecture/selectDeptAjax', //요청경로
	        type: 'post',
	        data:{'deptId':deptId}, //필요한 데이터
	        success: function(result) {
	        	//ajax 실행 성공 시 실행되는 구간
	        	$('#profDiv').empty();
	        	
	        	  var str ='';
	     
	              str += '<!-- 담당교수 -->';
	              str += '<div class="col">';
	              str += '<label for="empList" class="form-label">담당교수</label>';
	              str += '<select class="form-select" id="empList" name="profNo">';
	              $(result.profList).each(function(index, element){
	            	  str += '<option value="'+element.empNo+'">'+element.memberVO.memName+'</option>';
	              });
	              str += '</select>';
	              str += '</div>';
	              str += '<!-- 담당조교 -->	';
	              str += '<div class="col">';
	              str += '<label for="itemCategory" class="form-label">담당조교</label>';
	              str += '<select class="form-select" id="itemCategory" name="assiNo">';
	              $(result.assiList).each(function(index, element){
	            	  str += '<option value="'+element.empNo +'">'+element.memberVO.memName +'</option>';
	              });
	              str += '</select>';
	              str += '</div>';
	              
	              $('#profDiv').append(str);
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
	//aaa = function(){
	//};
   
})(jQuery);
























