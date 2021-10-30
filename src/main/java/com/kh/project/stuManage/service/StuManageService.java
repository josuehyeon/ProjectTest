package com.kh.project.stuManage.service;

import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;
import com.kh.project.stuManage.vo.ChangeMajorVO;

public interface StuManageService {
	//휴학신청 목록조회
	StudentVO goStopStudy(int memNo);
	
	//전과신청페이지에 학생정보조회
	StudentVO selectStuInfoForChange(MemberVO memberVO);
	
	//전과정보입력저장
	void insertChangeMajorTable(ChangeMajorVO changeMajorVO);
	
}
