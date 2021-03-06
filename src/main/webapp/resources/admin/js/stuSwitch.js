/* 페이지 로딩 후 실행 */
$(document).ready(function(){
   $(document).on('click', '.modalBtn', function() {
	   var stuNo = $(this).attr('data-stuNo');
	   var type = $(this).attr('data-type');
	   $('#type').val(type);
	   
	   // ajax로 선택한 학생의 정보를 조회
	   $.ajax({
	        url: '/admin/stuSwitchAjax', //요청경로
	        type: 'post',
	        data:{'stuNo':stuNo}, //필요한 데이터
	        success: function(result) {
	        	//모달 띄우기 전 모달의 내용 초기화
	        	$('.stuNoTd').text(result.stuNo);
		        $('.stuNameTd').text(result.memberInfo.memName);
		        $('.stuMajorTd').text(result.majorName);
		        $('.stuMinorTd').text(result.minorName);
		        $('.stuYearGenderTd').text(result.stuYear + ' / ' + result.memberInfo.memGen);
		        $('.stuStatusTd').text(result.stuStatus);
		        $('.stuBirTd').text(result.memberInfo.memBirth);
		        $('.stuEmailTd').text(result.memberInfo.memEmail);
		        $('.stuTelTd').text(result.memberInfo.memTel);
		        $('.stuPhoneTd').text(result.memberInfo.memPhone);
		        $('.stuPostCodeTd').text(result.memberInfo.postcode);
		        $('.stuAddrTd').text(result.memberInfo.memAddr);
	     	
	        	$('#exampleModal').modal('hide');
	        	
//	        	$('#' + modalId).on('hidden.bs.modal', function (e) {
//	        		alert('메일 전송됐습니다');
//	        	});
	        },
	        error: function(){
	        	//ajax 실행 실패 시 실행되는 구간
	        	alert('error');
	        } //error 닫기
		}); //ajax 닫기
	   
	   
	   $('#exampleModal').modal('show');
   });
   
   
   
   $(document).on('click', '#modalAjax', function() {
	   var stuNo = $('.stuNoTd').text();
	   var type = $('#type').val();
	   
	   if(type == 1){
		// ajax로 선택한 학생의 정보를 조회
		   $.ajax({
		        url: '/admin/stuSwitchRealAjax', //요청경로
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
	   else if(type == 2){
		// ajax로 선택한 학생의 정보를 조회
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
   });
   
});

/* 함수선언 영역*/
(function($){
     /*aaa = function(){
   
     };*/
})(jQuery);