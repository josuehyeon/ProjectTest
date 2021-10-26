package com.kh.project.lecture.vo;

import java.util.List;

import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.EmpVO;

public class RegLectureSelectBoxVO {
	private List<DeptVO> deptList;
	private List<EmpVO> profList;
	private List<EmpVO> assiList;
	public List<DeptVO> getDeptList() {
		return deptList;
	}
	public void setDeptList(List<DeptVO> deptList) {
		this.deptList = deptList;
	}
	public List<EmpVO> getProfList() {
		return profList;
	}
	public void setProfList(List<EmpVO> profList) {
		this.profList = profList;
	}
	public List<EmpVO> getAssiList() {
		return assiList;
	}
	public void setAssiList(List<EmpVO> assiList) {
		this.assiList = assiList;
	}
	
	

}
