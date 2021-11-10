package com.kh.project.stuManage.vo;

import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;

public class DoubleMajorVO {
	private String doubleId;
	private String status;
	private String insertDate;
	private String updateDate;
	private String reason;
	private int stuNo;
	private int collNo;
	private String deptId;
	private int doubleColl;
	private String doubleDept;
	private String collName;
	private String deptName;
	private String doubleCollName;
	private String doubleDeptName;
	
	private CollegeVO collegeInfo;
	private DeptVO deptInfo;
	private StudentVO studentInfo;
	private MemberVO memberInfo;
	private ChangeMajorVO changeMajorInfo;
	
	public ChangeMajorVO getChangeMajorInfo() {
		return changeMajorInfo;
	}
	public void setChangeMajorInfo(ChangeMajorVO changeMajorInfo) {
		this.changeMajorInfo = changeMajorInfo;
	}
	public CollegeVO getCollegeInfo() {
		return collegeInfo;
	}
	public void setCollegeInfo(CollegeVO collegeInfo) {
		this.collegeInfo = collegeInfo;
	}
	public DeptVO getDeptInfo() {
		return deptInfo;
	}
	public void setDeptInfo(DeptVO deptInfo) {
		this.deptInfo = deptInfo;
	}
	public StudentVO getStudentInfo() {
		return studentInfo;
	}
	public void setStudentInfo(StudentVO studentInfo) {
		this.studentInfo = studentInfo;
	}
	public MemberVO getMemberInfo() {
		return memberInfo;
	}
	public void setMemberInfo(MemberVO memberInfo) {
		this.memberInfo = memberInfo;
	}
	public String getDoubleId() {
		return doubleId;
	}
	public void setDoubleId(String doubleId) {
		this.doubleId = doubleId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getInsertDate() {
		return insertDate;
	}
	public void setInsertDate(String insertDate) {
		this.insertDate = insertDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public int getStuNo() {
		return stuNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public int getCollNo() {
		return collNo;
	}
	public void setCollNo(int collNo) {
		this.collNo = collNo;
	}
	public String getDeptId() {
		return deptId;
	}
	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}
	public int getDoubleColl() {
		return doubleColl;
	}
	public void setDoubleColl(int doubleColl) {
		this.doubleColl = doubleColl;
	}
	public String getDoubleDept() {
		return doubleDept;
	}
	public void setDoubleDept(String doubleDept) {
		this.doubleDept = doubleDept;
	}
	public String getCollName() {
		return collName;
	}
	public void setCollName(String collName) {
		this.collName = collName;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getDoubleCollName() {
		return doubleCollName;
	}
	public void setDoubleCollName(String doubleCollName) {
		this.doubleCollName = doubleCollName;
	}
	public String getDoubleDeptName() {
		return doubleDeptName;
	}
	public void setDoubleDeptName(String doubleDeptName) {
		this.doubleDeptName = doubleDeptName;
	}
	
	
	
	

}
