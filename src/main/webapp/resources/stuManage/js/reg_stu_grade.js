//화면 로딩 후 바로 실행
$(document).ready(function(){
	//이벤트 처리
	$(document).on('change', '#lectureSelect', function() {
		var lecId = $('#lectureSelect').val();
		
		//ajax 사용
		$.ajax({
	        url: '/stuManage/clickLectureShowStudent', //요청경로
	        type: 'post',
	        data:{'lecId':lecId}, //필요한 데이터
	        success: function(result) {
	        	//ajax 실행 성공 시 실행되는 구간

	        	alert(result);
	        	$('#studentListDiv').empty();
	        	
	        	var str ='';
	        	str += '<table>' ; 
	        	str += '<tr class="column">' ;
	        	str += '<td>학번</td>';
	        	str += '<td>이름</td>';
	        	str += '<td>성적</td>';
		        	
		        	$(result).each(function(index, element){
	          	  		str += '<tr>' ;
	          	  		str += '<td>' + element.memberInfo.memName + '</td>'	;
	          	  		str += '<td>' + element.stuNo + '</td>'	;
	          	  		str += '<td>' + element.grade + '</td>' ;	
	          	  		str += '</tr>' ;
	            	});
	            	
		        	str += '</table>';
	              
	            $('#studentListDiv').append(str);
	        },
	        error: function(){
	        	//ajax 실행 실패 시 실행되는 구간
	        	alert('실패');
	        }
	  }); //ajax 닫기
    }); //change collegeList 이벤트 닫기
    
	
	
	
});

//함수 선언 영역
(function($){
	//aaa = function(){
	//};
   
})(jQuery);
























