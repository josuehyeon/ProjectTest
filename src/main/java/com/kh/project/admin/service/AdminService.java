package com.kh.project.admin.service;

import java.util.List;

import com.kh.project.admin.vo.AdminVO;
import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;
import com.kh.project.stuManage.vo.ChangeMajorVO;
import com.kh.project.stuManage.vo.DoubleMajorVO;

public interface AdminService {
	
	//휴학
	List<EditStatusVO> selectStopList();
	
	int updateStop(EditStatusVO editStatusVO);
	
	void updateStopStatusToStudent(EditStatusVO editStatusVO);

	int cancelEdit(EditStatusVO editStatusVO);
	
	int deleteEdit(EditStatusVO editStatusVO);
	
	//복학
	//List<EditStatusVO> selectAgainList();
	
	void updateAgain(EditStatusVO editStatusVO);
	
	void updateAgainStatusToStudent(EditStatusVO editStatusVO);
	
	//자퇴
	//List<EditStatusVO> selectExitList();
	
	void updateExit(EditStatusVO editStatusVO);
	
	void updateExitStatusToStudent(EditStatusVO editStatusVO);
	
	//전과 신청목록
	List<ChangeMajorVO> AdminChangeMajorRequestList();
	
	ChangeMajorVO modalStuInfoCM(ChangeMajorVO changeMajorVO);
	
	List<AdminVO> selectNotice(StudentVO studentVO);
	
	//복수전공 신청목록
	List<DoubleMajorVO> AdminDoubleMajorRequestList();
	
	DoubleMajorVO modalStuInfoDM(DoubleMajorVO doubleMajorVO);
	
	void insertYellowCard(AdminVO adminVO);
	
	//전과, 복전 공통모달
	//admin 매퍼에 쿼리작성함
	StudentVO selectModalStudent(StudentVO studentVO);
	
}




