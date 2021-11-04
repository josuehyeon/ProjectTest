//화면 로딩 후 바로 실행
//$(document).ready(function() {
//	// alert(333);
//
//	//댓글 등록 시
//	$(document).on('click', '#commIst', function() {
//		var boardNo = "${board.boardNo}";
//		var commContent = $('#isComm').val();
//		var commDate = "${nowDate}";
//		var commWriter = "${sessionScope.login.memNo}";
//		// location.href = '/student/studentList?classCode=' + classCode; // 아이작을 쓰면 주소 창을 적지 않는다
//
//		$.ajax({
//
//			// 실행1
//			url: '/form/istComm', //요청경로
//			type: 'post', // 컨트롤러에서 데이터를 받을때, @PostMapping("/studentListAjax")으로 받아야됨
//			data: { 'boardNo': boardNo, 
//					'commContent':commContent,
//					'commDate':commDate,
//					'commWriter':commWriter}, //필요한 데이터 ('넘기는 데이터 이름' : 변수이름(예 : var classCode))
//			// 실행2 콘솔로 갔다가 다시 와서 실행3을 진행 한다.
//			// 실행3
//			success: function(result) { // result 값은 컨트롤에서 리턴하는 값이 넘어 온다.
//				//ajax 실행 성공 후 실행할 코드 작성
//				var str = '';  // 문자를 변수를 선언한다.
//				// str + str + ....를 통해 html을 작성한다. (<table> <tr> <td>학번</td> <td>반이름</td> <td>학생이름</td>)
//
//				str += '<table>';
//				
//				$(result).each(function(index, element) {
//					
//					str += '<tr>';
//					str += '<td>' + element.commNo + '</td>';
//					str += '<td>' + element.commWriter + '</td>';
//					str += '<td>' + element.commContent + '</td>';
//					str += '<td>' + element.commDate + '</td>';
//					str += '<td><div class="selectStuName">' + element.stuName + '</div></td>';
//
//					str += '</tr>';
//
//				});
//
//
//				str += '</table>';
//
//				$('#tableDiv').append(str); // 선택한 마지막 자식 노드 뒤에 html코드를 추가 한다.
//			},
//			error: function() {
//				//ajax 실행 실패 시 실행되는 구간
//				alert('실패');
//			}
//		});
//	});
//	$(document).on('click ', '.selectStuName', function() {
//
//		//해당 학생 댓글 삭제
//		var comm = $(this).parent().parent().children().first().text();
//		// 선택한 대상(selectStuName)의 부모(td)의 부모(tr)의 자식(td)의 첫번째의 데이터를 가져 와라
//
//		selectScore(stuNum);
//
//	});
//});
//
//
////함수 선언 영역
//(function($) {
//
////	changeScore = function(stuNum) {
////
////		if ($('#btn').val() == '점수변경') {
////
////			// 국어, 영어, 수학 점수를 입력 가능한 input 으로 변경
////			var korScore = $('#korScoreTd').text();
////			var mathScore = $('#mathScoreTd').text();
////			var engScore = $('#engScoreTd').text();
////
////			$('#korScoreTd').html('<input id = "korScore" type="text" value = "' + korScore + '">');
////			$('#mathScoreTd').html('<input id = "mathScore"  type="text" value = "' + mathScore + '">');
////			$('#engScoreTd').html('<input id = "engScore"  type="text" value = "' + engScore + '">');
////
////			// 버튼의 글자를 변경
////			$('#btn').val('확인');
////		}
////
////		else {
////
////			var korScore = $('#korScore').val();
////			var mathScore = $('#mathScore').val();
////			var engScore = $('#engScore').val();
////
////			$.ajax({
////				url: '/student/updateScore',
////				type: 'post',
////				data: { 'stuNum': stuNum, 'korScore': korScore, 'mathScore': mathScore, 'engScore': engScore },
////				success: function(result) {
////
////					if (result == 1) {
////						alert('점수가 수정 되었습니다.')
////						selectScore(stuNum);
////					}
////					else {
////						alert('관리자에게 문의 하세요.')
////					}
////
////				},
////				error: function() {
////					alert('실패');
////				}
////			});
////
////		}
////
////	};
////
////	// 학생의 점수 조회
////	selectScore = function(stuNum) {
////
////		$.ajax({
////			url: '/student/selectScore', //요청경로
////			type: 'post',
////			data: { 'stuNum': stuNum }, //필요한 데이터
////			success: function(result) {
////				//ajax 실행 성공 후 실행할 코드 작성
////
////				$('#stuScoreDiv').empty();
////
////				var scor = '';
////
////				scor += '<table align = "center">';
////
////				scor += '<tr>';
////
////				scor += '<td>이름</td>';
////				scor += '<td>국어</td>';
////				scor += '<td>수학</td>';
////				scor += '<td>영어</td>';
////				scor += '<td>총점</td>';
////
////				scor += '</tr>';
////
////				scor += '<tr>';
////
////				scor += '<td>' + result.stuName + '</td>';
////				scor += '<td id = "korScoreTd">' + result.korScore + '</td>';
////				scor += '<td id = "mathScoreTd">' + result.mathScore + '</td>';
////				scor += '<td id = "engScoreTd">' + result.engScore + '</td>';
////
////				var totalScore = result.korScore + result.mathScore + result.engScore;
////				scor += '<td>' + totalScore + '</td>';
////
////				scor += '</tr>';
////
////				scor += '</table>';
////
////				scor += '<br>';
////
////				scor += '<div align = "center"> <input id = "btn" type="button" value="점수변경" onclick = "changeScore(' + stuNum + ');"> </div>';
////
////				$('#stuScoreDiv').append(scor);
////
////			},
////			error: function() {
////				//ajax 실행 실패 시 실행되는 구간
////				alert('실패');
////			}
////		});
////
////	}
//
//})(jQuery);




