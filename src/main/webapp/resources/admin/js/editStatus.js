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
   
   //
   $(document).on('click', '.okayBtn', function() { 
	   
	   alert('승인완료 변경');
	   //일단 데이터 여러개를 담을 수 있는 stuNo 변수를 만든다
	   var stuNoList = new Array();
	   
	   $('.check:checked').each(function(index, element){
		   var stuNo = $(element).val();
		   alert( stuNo ); 
		   stuNoList[index] = stuNo;
	   });
	   
	   location.href = '/admin/editStatus1?stuNoList=' + stuNoList;
   });

   
   $(document).on('click', '.notOkayBtn', function(){
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
   
   