/* 페이지 로딩 후 실행 */
//$(document).ready(function(){
//   $(document).on('click', '#modal', function() { 
//      var a = confirm('승인하시겠습니까?');
//      if(a){
//    	  alert('승인 완료');
//    	  /*$(this).val('승인 완료');*/
//    	  location.href = '/admin/stuSwitch';
    	/*//ajax 사용
  		$.ajax({
  	        url: '/admin/stuSwitchAjax', //요청경로
  	        type: 'post',
  	        data:{'memNo':memNo}, //필요한 데이터
  	        success: function(result) {
  	        	//ajax 실행 성공 시 실행되는 구간
  	        	alert(result.memEmail+'/'+memEmail);
  	        	
  	        	if(result.memEmail ==memEmail){
  					$('#sendMail').submit();
  				}else{
  		        	alert('이메일 주소를 확인해주세요');
  				}
  	        },
  	        error: function(){
  	        	//ajax 실행 실패 시 실행되는 구간
  	        	alert('error');
  	        } //error 닫기
  		}); //ajax 닫기
      }
      else{
    	  alert('승인 취소');
      }
      
      
      
   });
});

/* 함수선언 영역*/
(function($){
     edit = function(stuNo){
    	 var a = confirm('승인하시겠습니까?');
    	 if(a){
    		 alert('승인 완료');
    		 location.href = '/admin/stuSwitch';
    	 }
    	 else {
    		 alert('beep');
    	 }
    	 
     }
})(jQuery);