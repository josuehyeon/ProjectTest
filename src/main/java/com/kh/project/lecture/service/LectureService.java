package com.kh.project.lecture.service;

import java.util.List;

import com.kh.project.board.vo.BoardVO;
import com.kh.project.lecture.vo.EnrolmentVO;
import com.kh.project.lecture.vo.LectureVO;
import com.kh.project.lecture.vo.LectureViewVO;
import com.kh.project.lecture.vo.PdfVO;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.EmpVO;



public interface LectureService {
	//대학리스트조회
	List<CollegeVO> selectCollegeList();
	//학과리스트조회
	List<DeptVO> selectDeptList();
	//교수리스트 조회
	List<EmpVO> selectProfList();
	//조교리스트 조회
	List<EmpVO> selectAssiList();
	//강의등록
	void regLecture(LectureVO lectureVO);
	//강의리스트조회
	List<LectureVO> selectLectureList(LectureViewVO lectureViewVO);
	//강의 삭제
	void deleteLecture(LectureVO lectureVO);
	
	
	
	//학과리스트조회 ajax
	List<DeptVO> selectDeptList2(CollegeVO collegeVO);
	//교수리스트 조회 ajax
	List<EmpVO> selectProfList2(CollegeVO collegeVO);
	//조교리스트 조회 ajax
	List<EmpVO> selectAssiList2(CollegeVO collegeVO);
	
	//강의수정 업데이트
	void updateLecture(LectureVO lectureVO);
	
	//다음 LEC_ID 조회
	String selectNextLecId();
	
	//다음 pdf 그거 조회
	int selectNextNumber();
	
	//pdf 등록
	int insertPdf(LectureVO lectureVO);
	
	//lec_id 에 따른 pdf 조회
	PdfVO selectLecPdf(LectureVO lectureVO);
	
	//수강신청하기
	void enrolment(EnrolmentVO enrolmentVO);
	
	//수강신청테이블 리트스 조회
	List<EnrolmentVO> selectEnrolList(MemberVO memberVO);
	
	//수강신청테이블에서 하나씩 삭제
	void deleteEnrolmentOne(EnrolmentVO enrolmentVO);
	
	//성적등록메뉴, 교수 번호로 담당 강의 조회
	List<LectureVO> selectLectureListWithProfNo(LectureVO lectureVO);
	
	
	//수강신청 테이블에서 LEC_ID 조회 -ksj
	List<EnrolmentVO> selectStuNoForRegStuGrade(EnrolmentVO enrolmentVO);
	
	//전체 데이터 조회 수
	int totalLecCnt(LectureViewVO lectureViewVO);
}
