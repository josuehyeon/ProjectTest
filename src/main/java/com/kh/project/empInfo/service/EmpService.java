package com.kh.project.empInfo.service;

import com.kh.project.stuManage.vo.EmpVO;

public interface EmpService {
	
	//EMP테이블에서 내 정보 조회
	EmpVO selectEmpMyInfo(int memNo);

}
