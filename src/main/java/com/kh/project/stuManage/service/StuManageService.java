package com.kh.project.stuManage.service;

import com.kh.project.stuManage.vo.DeptManageVO;

public interface StuManageService {
	//휴학신청 목록조회
	DeptManageVO selectStopStudyList(DeptManageVO deptManageVO);
}
