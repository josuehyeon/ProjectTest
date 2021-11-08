//화면 로딩 후 바로 실행
$(document).ready(function(){

	// 색배열의 인덱스 => 전공을 추가할 때마다 i가 1씩 증가되어 다음 전공 색깔이 달라지게 함
	var i = 0;

	$('.each').each(function(index, element){
		// 색깔을 담는 배열
		var colorArray = ["#cfedff", "#1e789b", "#7e9cc3", "#aab4ff", "#274381", "#B7F0B1", "#B2EBF4", "#B2CCFF", "#B5B2FF", "#D1B2FF", "#FFB2F5", "#FFB2D9", "#D5D5D5", "#BDBDBD"];
	
		var day = $(element).children().eq(0).text(); //mon , tue
		var timeStart = $(element).children().eq(1).text(); //9, 10
		var time = $(element).children().eq(2).text(); // 2학점, 3학점 
		var lecId = $(element).children().eq(3).text(); //강의 코드
		var first = day + timeStart; // mon9
		//alert('요일'+day +'/강의시작시간' + timeStart + '/학점' + time + '/강의코드' + lecId);
		
		if(time==2){
			//첫 번째 칸 색칠
			var td = document.getElementById(first);
			td.style.background= colorArray[i];
			td.innerHTML = lecId;
			//두 번째 칸 색칠
			var second = day + Number(Number(timeStart)+1) ;
			var td2 = document.getElementById(second);
			td2.style.background= colorArray[i++];
			td2.innerHTML = lecId;
		}
		else if(time==3){
			//첫 번째 칸 색칠
			var td = document.getElementById(first);
			td.style.background= colorArray[i];
			td.innerHTML = lecId;
			//두 번째 칸 색칠
			var second = day + Number(Number(timeStart)+1) ;
			var td2 = document.getElementById(second);
			td2.style.background= colorArray[i];
			td2.innerHTML = lecId;
			//세 번째 칸 색칠
			var third = day + Number(Number(timeStart)+2) ;
			var td3 = document.getElementById(third);
			td3.style.background= colorArray[i++];
			td3.innerHTML = lecId;
		}
	});
	
	// click lecId 이벤트
	$(document).on('click', '.lecId', function() {
		//alert('lecId클릭 성공');
		//일단 칸에 있는 정보 지우는 거 부터 해볼까
		$('.test').empty();
		$('.test').css('background-color','#ffffff');
		//컬러 팔레트(색을 담은 배열)
		var colorArray = ["#cfedff", "#1e789b", "#7e9cc3", "#aab4ff", "#B7F0B1", "#B2EBF4", "#B2CCFF", "#B5B2FF", "#D1B2FF", "#FFB2F5", "#FFB2D9", "#D5D5D5", "#BDBDBD","#cfedff", "#1e789b", "#7e9cc3", "#aab4ff", "#B7F0B1", "#B2EBF4", "#B2CCFF", "#B5B2FF", "#D1B2FF", "#FFB2F5", "#FFB2D9", "#D5D5D5", "#BDBDBD"];

		//색칠할 칸 정해주기
		var thisss = $(this).text();
		var day = $(this).parent().children().eq(0).text();
		var timeStart = $(this).parent().children().eq(1).text();
		var time = $(this).parent().children().eq(2).text();
		var lecId = $(this).parent().children().eq(3).text();
		var lecRoom = $(this).parent().children().eq(4).text();
		var timeId = $(this).parent().children().eq(5).text();
		//alert('this: ' + thisss);
		//alert('day: ' + day);
		//alert('timeStart: ' + timeStart);
		//alert('time: ' + time);
		//alert('lecId: ' + lecId);
		//alert('timeId: ' + timeId);
		
		//일단 한칸 칠해보기
		var td = document.getElementById(timeId);
		td.style.background= colorArray[i];
		td.innerHTML = lecId;
		//두칸 칠하기
		var second = day + Number(Number(timeStart)+1) ;
		var td2 = document.getElementById(second);
		td2.style.background= colorArray[i];
		td2.innerHTML = lecId;
		//세칸째 칠하기~~~ㅋㅋㅋㅋ
		var third = day + Number(Number(timeStart)+2) ;
		var td3 = document.getElementById(third);
		td3.style.background= colorArray[i++];
		td3.innerHTML = lecId;
    }); // click lecId 이벤트 닫기
	
});	//ready function 닫기

//$('.') .each(function(index , element)


//함수 선언 영역
(function($){
	aaa = function(){
		// 색깔을 담는 배열
		var colorArray = ["#FFA7A7", "#FFC19E", "#FFE08C", "#FAED7D", "#CEF279", "#B7F0B1", "#B2EBF4", "#B2CCFF", "#B5B2FF", "#D1B2FF", "#FFB2F5", "#FFB2D9", "#D5D5D5", "#BDBDBD"];

		// 색배열의 인덱스 => 전공을 추가할 때마다 i가 1씩 증가되어 다음 전공 색깔이 달라지게 함
		var i = 0; 
		//우선 색깔을 담는 배열을 선언했습니다. 위는 색이 좀 연한 무지개색을 모아뒀습니다.
		//그리고 색배열을 가리키는 인덱스 i를 하나 만들었고
		//전공을 추가할 때마다 i가 1씩 증가되어 다음 전공은 색깔이 달라지도록 설정했습니다. 
    
    	if(time.value==2){
			var temp = day.value + timeStart.value;
			var tempID = document.getElementById(temp);
			
			// 색깔 넣기
			tempID.style.background= colorArray[i];	 //또한 style.background과 앞서 정의한 색배열을 사용하여 셀의 배경색이 변하도록 설정했습니다.
			//과목명 넣기
			tempID.innerHTML = subject.value;
			
			var temp2 = day.value + Number(Number(timeStart.value) + 1);
			var temp2ID = document.getElementById(temp2);
        	temp2ID.style.background= colorArray[i++];
        	temp2ID.innerHTML = subject.value;

		}else if(time.value==3){
			var temp = day.value + timeStart.value;
			var tempID = document.getElementById(temp);
			tempID.style.background= colorArray[i];
			tempID.innerHTML = subject.value;
			
			var temp2 = day.value + Number(Number(timeStart.value) + 1);
			var temp2ID = document.getElementById(temp2);
        	temp2ID.style.background= colorArray[i];
        	temp2ID.innerHTML = subject.value;

			var temp3 = day.value + Number(Number(timeStart.value) + 2);
			var temp3ID = document.getElementById(temp3);
        	temp3ID.style.background= colorArray[i++];
        	temp3ID.innerHTML = subject.value;
		}
	};
	
   
})(jQuery);
























