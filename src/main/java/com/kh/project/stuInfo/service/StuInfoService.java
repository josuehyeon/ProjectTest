package com.kh.project.stuInfo.service;

import java.util.List;

import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.lecture.vo.LectureVO;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;

public interface StuInfoService {
	
	//학생> 내정보-조회> from STUDENT 테이블
	StudentVO selectStuMyInfo(int memNo);
	
	//현재 비밀번호 확인
	MemberVO chkPw(MemberVO memberVO);
	
	//비밀번호 변경
	int changePw(MemberVO memberVO);
	
	//시간표 조회 (임시)
	List<LectureVO> selectTimetableList();
	
	

}
