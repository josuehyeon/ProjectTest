//화면 로딩 후 바로 실행
$(document).ready(function(){
	
//예)이벤트: 인문대 클릭시, 인문대 학과만 셀렉트 박스 안에 나오게
	$(document).on('change', '#collegeList', function() {
		var collNo = $('#collegeList').val();
		//ajax 사용
		$.ajax({
	        url: '/stuManage/selectCollegeAjax', //요청경로
	        type: 'post',
	        data:{'collNo':collNo}, //필요한 데이터
	        success: function(result) {
	        	//ajax 실행 성공 시 실행되는 구간
	        	$('#deptTd').empty();
	        	
	        	var str ='';
		        	str += '<select>';
		        	str += '<option value="">전체</option>';
		        	//for문 돌려서 select option 뽑기
		        	$(result).each(function(index, element){
	          	  		str += '<option value="'+ element.deptId + '">' + element.deptName + '</option>';	
	            	});
		        	
		        	str += '</select>';
	              
	            $('#deptTd').append(str);
	        },
	        error: function(){
	        	//ajax 실행 실패 시 실행되는 구간
	        	alert('ajax실패');
	        }
		}); //ajax 닫기
	}); //change collegeList 이벤트 닫기
	
/*//예)이벤트: 국어국문학과 클릭시, 인문대가 셀렉트 박스 안에 나오게
	$(document).on('change', '#deptId', function() {
		alert('deptId연결 성공');
		var deptId = $('#deptId').val();
		alert(deptId);
	}); //change deptId 이벤트 닫기
*/
	
//select box 선택하고 조회 클릭시 실행될 이벤트
	$(document).on('click', '#showMeSelect', function() {
		var stuYear = $('#stuYear').val();
		var stuStatus = $('#stuStatus').val();
		var collNo = $('#collegeList').val();
  		var deptId = $('#deptId').val();
		var majorCode = $('#deptId').val();
		var searchValue = $('#searchValue').val();
		alert('학년:'+ stuYear + ' /학적상태' + stuStatus + ' /단대과대학번호' + collNo + ' /소속학과' + majorCode+ ' /검색어' + searchValue);
		
		//ajax 사용
		$.ajax({
			url: '/stuManage/selectStudentListOnConditionAjax', //요청경로
			type: 'post',
			data:{'stuYear':stuYear, 'stuStatus': stuStatus ,'collNo': collNo, 'majorCode': majorCode, 'searchValue': searchValue}, //필요한 데이터
			success: function(result) {
				//ajax 실행 성공 시 실행되는 구간
				$('#studentListTable').empty();
				
				var str ='';
				str += '<tr>';
				str += '<td>학번</td>';
				str += '<td>학년</td>';
				str += '<td>이름</td>';
				str += '<td>소속 대학</td>';
				str += '<td>전공</td>';
				str += '<td>학적상태</td>';
				str += '</tr>';
				
				$(result).each(function(index, element){
					str += '<tr>';
					str += '<td>' +  element.stuNo  + '</td>';
					str += '<td>' + element.stuYear + '</td>';
					str += '<td><a href="/stuManage/showStuDetail?memNo=' + element.stuNo  + '">' + element.memberInfo.memName + '</a></td>';
					str += '<td>' + element.collNo     + '</td>';
					str += '<td>' + element.majorCode + '</td>';
					str += '<td>' + element.stuStatus  + '</td>';
					str += '</tr>';
				});
				$('#studentListTable').append(str);
				
			},
			error: function(){
				//ajax 실행 실패 시 실행되는 구간
				alert('ajax실패');
			}
		}); //ajax 닫기
    
	}); //click showMeSelect 이벤트 닫기
	$(document).on('click', '#searchBtn', function() {
		alert('searchBtn연결 성공');
		
		
	}); //click searchBtn 이벤트 닫기
	
});

//함수 선언 영역
(function($){
	//aaa = function(){
	//};
   
})(jQuery);
























