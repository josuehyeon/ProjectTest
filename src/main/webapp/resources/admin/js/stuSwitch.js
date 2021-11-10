/* 페이지 로딩 후 실행 */
$(document).ready(function(){
   $(document).on('click', '#modal', function() { 
      var a = confirm('승인하시겠습니까?');
      if(a){
    	  alert('승인 완료');
      }
      else{
    	  alert('승인 취소');
      }
   });
});

/* 함수선언 영역*/
(function($){
     /*aaa = function(){
   
     };*/
})(jQuery);