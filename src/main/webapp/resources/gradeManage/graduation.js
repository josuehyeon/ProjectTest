//화면 로딩 후 바로 실행
$(document).ready(function() {
	//학생목록
	$(document).on('change', '#semesterSelector', function() {
		var semId = $('#semesterSelector').val();
		/* location.href = '/student/studentList?classCode='+classCode;*/
		
		//학점 목록 Ajax
		$.ajax({
			url: '/grade/gradeListForGraduationAjax', //콘트롤러 요청경로
			type: 'post',
			//''안에는 넘기는 변수의 변수명 변수가 여래개면 ,(쉼표)로 구분한다
			data: { 'semId': semId }, //필요한 데이터
			//-------------------------------------------경로를 이해해야함
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				//alert('성공');

				//학생 테이블을 지운다.
				//$('#tableDiv').remove();// 선택한 태그화 하위태그 모든 요소를 지워 버린다.
				$('#gradeTableDiv').empty();// 선택한 태그를 제외한 하위태그 모두를 지워버린다.
					var str = '';
					str += '<table>'
					str +=		'<tr>'
					str += 			'<td>학년</td>'
					str += 			'<td>학기</td>'
					str += 			'<td>학번</td>'
					str += 			'<td>과목코드</td>'
					str += 			'<td>과목명</td>'
					str += 			'<td>학점</td>'
					str += 			'<td>등급</td>'
					str += 			'<td>점수</td>'
					str += 		'</tr>'
				$(result).each(function(index, element) {
					str += 		'<tr>'
					str += 			'<td>' + element.semesterInfo.year + '</td>'
					str += 			'<td>' + element.semesterInfo.semester + '</td>'
					str += 			'<td>' + element.stuNo + '</td>'
					str += 			'<td>' + element.lecId + '</td>'
					str += 			'<td>' + element.lectureInfo.lecName + '</td>'
					str += 			'<td>' + element.lectureInfo.lecCredit + '</td>'
					str += 			'<td>' + element.grade + '</td>'
					str += 			'<td>' + element.gradeInfo.score + '</td>'
					str += 		'</tr>'
				}); //result로 for문 돌리는 거 닫기
				str += '</table>'
				$('#gradeTableDiv').append(str);

			}, //success 닫기
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('1실패');
			} //error닫기
		}); //ajax 닫기
		
		//총 이수학점, 평점평균 Ajax
		$.ajax({
			url: '/grade/totalSumAvgAjax', //콘트롤러 요청경로
			type: 'post',
			//''안에는 넘기는 변수의 변수명 변수가 여래개면 ,(쉼표)로 구분한다
			data: { 'semId': semId }, //필요한 데이터
			//-------------------------------------------경로를 이해해야함
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				
				//총 이수학점, 평균평점 테이블의 내용을 지움
				$('#totalSumAvgDiv').empty();// 선택한 태그를 제외한 하위태그 모두를 지워버린다.
					var str = '';
					str += '<table>'
					str += 		'<tr>'
					str += 			'<td>총 이수학점</td>'
					str += 			'<td>'+result.lectureInfo.lecCredit+'</td>'
					str += 			'<td>평점평균</td>'
					str += 			'<td>'+result.gradeInfo.score+'</td>'
					str += 		'</tr>'
					str += '</table>'
				$('#totalSumAvgDiv').append(str);
				
			}, //success 닫기
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('2실패');
			} //error닫기
		}); //ajax 닫기
	});// #semesterSelector 이벤트 닫기


}); //ready function 닫기
