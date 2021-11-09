package com.kh.project.stuManage.service;

import java.util.List;

import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;
import com.kh.project.stuManage.vo.ChangeMajorVO;
import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.DoubleMajorVO;

public interface StuManageService {
	
	//전과신청페이지에 학생정보조회
	StudentVO selectStuInfoForChange(MemberVO memberVO);
	
	//전과정보입력저장
	void insertChangeMajorTable(ChangeMajorVO changeMajorVO);
	
	//전과정보 리스트 조회
	List<ChangeMajorVO> selectChangeMajorList(MemberVO memberVO);
	
	//복수전공정보입력저장
	void insertDoubleMajorTable(DoubleMajorVO doubleMajorVO);
	
	//복수전공 리스트 조회
	List<DoubleMajorVO> selectDoubleMajorList(MemberVO memberVO);

	//단과 대학 목록 조회 (ksj)
	List<CollegeVO> selectCollegeList();
	
	//학과 목록 조회 (ksj)
	List<DeptVO> selectDeptList2(DeptVO deptVO);
	
	//학생 목록 조회 (ksj)
	List<StudentVO> selectStudentList(StudentVO studentVO);
	
	
	//학생 휴학신청 
	StudentVO goStopStudy(int memNo);
	
	int insertStopStudy(EditStatusVO editStatusVO);

	int selectWaitCntStop(int memNo);
	
	//학생 복학신청
	StudentVO goAgainStudy(int memNo);
	
	int insertAgainStudy(EditStatusVO editStatusVO);

	int selectWaitCntAgain(int memNo);
	
	//학생 자퇴신청
	StudentVO goExitStudy(int memNo);
	
	int insertExitStudy(EditStatusVO editStatusVO);

	int selectWaitCntExit(int memNo);
	
	//성적등록> 해당 강의 수강하는 학생의 목록 조회
	
	
}
