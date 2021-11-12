$(document).ready(function(){ 
		
	//라디오 버튼 클릭 시
	$(document).on('click', '.statusRadio', function() {
		//승인대기, 승인완료 값 가져 옴
		var value = $(this).val();
		var stuNo = $(this).attr('data-stuNo');
		var type = $(this).attr('data-type');
		
		if(type == '자퇴'){
			alert('승인되었습니다');
			location.href = '/admin/updateExitStatusToStudent?stuNoListExit=' + stuNo;
		}
		else if(type == '휴학'){
			alert('승인되었습니다');
			location.href = '/admin/updateStopStatusToStudent1?stuNoListStop=' + stuNo;
		}
		else if(type == '복학'){
			alert('승인되었습니다');
			location.href = '/admin/updateAgainStatusToStudent?stuNoListAgain=' + stuNo;
		}
	
	}); 
	
	//전체 체크 박스 값 변경시
	$(document).on('click', '#checkAll', function() {
      //전체 체크박스의 체크 여부를 판단
      var isChecked = $('#checkAll').is(':checked');
      
      if(isChecked){//전체 체크
         $('.check').prop('checked',true);
      }
      else{//전체 체크 해제
         $('.check').prop('checked',false);
      }
   }); 
   
   //개별 체크박스 다 선택시 최상단 체크 박스 값 변경
   $(document).on('click', '.check', function() {
      //체크박스의 개수
      var a = $('.check').length;
      //체크된 체크박스의 개수
      var b = $('.check:checked').length;
      
      if(a==b){
         $('#checkAll').prop('checked',true);
      }
      else{
         $('#checkAll').prop('checked',false);
      }
      
   });
   
   //일괄처리
   $(document).on('click', '.stopStudyBtn', function() { 
	   //체크된 체크박스의 개수
	   var b = $('.check:checked').length;
	   if(b == 0){
		   alert('선택한 학생이 없습니다');
		   return;
	   }
	   
	   
	   alert('승인완료');
	   //일단 데이터 여러개를 담을 수 있는 stuNo 변수를 만든다
	   var stuNoListStop = new Array();
	   var stuNoListExit = new Array();
	   var stuNoListAgain = new Array();
	   
	   var exitCnt = 0;
	   var stopCnt = 0;
	   var againCnt = 0;
	   
	   $('.check:checked').each(function(index, element){
		   var stuNo = $(element).val();
		   var type = $(element).attr('data-type');
		   
		   if(type == '자퇴'){
			   stuNoListExit[exitCnt] = stuNo;
			   exitCnt++;
			}
			else if(type == '휴학'){
				stuNoListStop[stopCnt] = stuNo;
				stopCnt++;
			}
			else if(type == '복학'){
				stuNoListAgain[againCnt] = stuNo;
				againCnt++;
			}
		   
	   });
	   
	   location.href = '/admin/updateStopStatusToStudent?stuNoListExit=' + stuNoListExit + '&stuNoListStop=' + stuNoListStop + '&stuNoListAgain=' + stuNoListAgain;
   });
   
   //2.복학 승인
   $(document).on('click', '.againStudyBtn', function() { 
	 //체크된 체크박스의 개수
	   var b = $('.check:checked').length;
	   if(b == 0){
		   alert('선택한 학생이 없습니다');
		   return;
	   }
	   
	   
	   alert('복학 승인완료');
	   //일단 데이터 여러개를 담을 수 있는 stuNo 변수를 만든다
	   var stuNoList = new Array();
	   
	   $('.check:checked').each(function(index, element){
		   var stuNo = $(element).val();
		   alert( stuNo ); 
		   stuNoList[index] = stuNo;
	   });
	   
	   location.href = '/admin/updateAgainStatusToStudent?stuNoList=' + stuNoList;
   });
   
   //3.휴학 승인
   $(document).on('click', '.exitStudyBtn', function() { 
	 //체크된 체크박스의 개수
	   var b = $('.check:checked').length;
	   if(b == 0){
		   alert('선택한 학생이 없습니다');
		   return;
	   }
	   
	   
	   alert('자퇴 승인완료');
	   //일단 데이터 여러개를 담을 수 있는 stuNo 변수를 만든다
	   var stuNoList = new Array();
	   
	   $('.check:checked').each(function(index, element){
		   var stuNo = $(element).val();
		   alert( stuNo ); 
		   stuNoList[index] = stuNo;
	   });
	   
	   location.href = '/admin/updateExitStatusToStudent?stuNoList=' + stuNoList;
   });

   
   $(document).on('click', '.notOkayBtn', function(){
	 //체크된 체크박스의 개수
	   var b = $('.check:checked').length;
	   if(b == 0){
		   alert('선택한 학생이 없습니다');
		   return;
	   }
	   
	   alert('승인대기 변경');
	   var stuNoList = new Array();
	   
	   $('.check:checked').each(function(index, element){
		   var stuNo = $(element).val();
		   alert( stuNo ); 
		   stuNoList[index] = stuNo;
	   });
	   
	   location.href = '/admin/editStatus2?stuNoList=' + stuNoList;
   
   }); 
   
   $(document).on('click', '.deleteBtn', function(){
	 //체크된 체크박스의 개수
	   var b = $('.check:checked').length;
	   if(b == 0){
		   alert('선택한 학생이 없습니다');
		   return;
	   }
	   
	   alert('중복 삭제');
	   var stuNoList = new Array();
	   
	   $('.check:checked').each(function(index, element){
		   var stuNo = $(element).val();
		   alert( stuNo ); 
		   stuNoList[index] = stuNo;
	   });
	   
	   location.href = '/admin/editStatus3?stuNoList=' + stuNoList;
	   
   }); 

});   
   
/* 함수선언 영역*/
(function($){
     exitStudy = function(){
    	 $.ajax({
 	        url: '/admin/stuDoubleRealAjax', //요청경로
 	        type: 'post',
 	        data:{'stuNo':stuNo}, //필요한 데이터
 	        success: function(result) {
 	        	$('#exampleModal').modal('hide');
 	        	
 	        	$('#exampleModal').on('hidden.bs.modal', function (e) {
 	        		alert('승인되었습니다');
 	        		location.href = '/admin/stuSwitch';
 	        	});
 	        },
 	        error: function(){
 	        	//ajax 실행 실패 시 실행되는 구간
 	        	alert('error');
 	        } //error 닫기
 		}); //ajax 닫기
     }
     
     stopStudy = function(){
    	 
     }
     
     againStudy = function(){
    	 
     }
})(jQuery);   