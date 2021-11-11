$(document).ready(function(){ 
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
   
   //1.휴학 승인
   $(document).on('click', '.stopStudyBtn', function() { 
	   //체크된 체크박스의 개수
	   var b = $('.check:checked').length;
	   if(b == 0){
		   alert('선택한 학생이 없습니다');
		   return;
	   }
	   
	   
	   alert('휴학 승인완료');
	   //일단 데이터 여러개를 담을 수 있는 stuNo 변수를 만든다
	   var stuNoList = new Array();
	   
	   $('.check:checked').each(function(index, element){
		   var stuNo = $(element).val();
		   alert( stuNo ); 
		   stuNoList[index] = stuNo;
	   });
	   
	   location.href = '/admin/updateStopStatusToStudent?stuNoList=' + stuNoList;
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
   
   