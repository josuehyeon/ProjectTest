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
	        	
	        	var studentList = result.studentList;
	        	var gradeList = result.gradeList;

	        	//alert(result);
	        	$('#studentListDiv').empty();
	        	
	        	var str ='';
	        	str += '<table>' ; 
	        	str += '<tr class="column">' ;
	        	str += '<td>학번</td>';
	        	str += '<td>이름</td>';
	        	str += '<td>성적</td>';
	        	str += '<td></td>';
	        	str += '</tr>' ;
		        	$(studentList).each(function(index, element1){
	          	  		str += 		'<tr>' ;
	          	  		str += 		'<td>' + element1.stuNo + '</td>'	;
	          	  		str += 		'<td>' + element1.memberInfo.memName + '</td>'	;
	          	  		str += 		'<td>'
          	  			str += 		'<select class="grade">'
          	  				if(element1.grade =='미등록'){
          	  					str += 	'<option selected> 미등록</option>';
          	  				}else{
          	  					str += 	'<option> 미등록</option>';
          	  				}
							        	$(gradeList).each(function(index, element2){
							        		if(element1.grade ==element2.grade){
							          	  		str += '<option value="'+ element2.grade + '" selected>' + element2.grade +  '</option>'
							          	  	}else{
							          	  		str += '<option value="'+ element2.grade + '">' + element2.grade +  '</option>'
							          	  	}
							          	       /*str += '<option value="'+ element2.statusName + '" selected>' + element2.statusName + '</option>'*/
						          	  	});
	          	  		str += '</select>';
          	  			str += '</td>';
          	  			str += '<td><input type="button" value="성적등록/변경" id="btn" data-stuNo="' + element1.stuNo + '"></td>';
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
	$(document).on('click', '#btn', function() {
		alert('연결');
		var aa = $(this).attr('data-stuNo');
//		var aa = $(this).attr('data-stuno');
		var vv = $('.grade').val();
		alert(aa);
		alert(vv);
	}); //change collegeList 이벤트 닫기
});

//함수 선언 영역
(function($){
	//aaa = function(){
	//};
   
})(jQuery);
