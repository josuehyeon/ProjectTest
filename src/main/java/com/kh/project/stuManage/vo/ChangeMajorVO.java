package com.kh.project.stuManage.vo;

import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;

public class ChangeMajorVO {
	private String changeId;
	private String status;
	private String insertDate;
	private String updateDate;
	private String reason;
	private int stuNo;
	private int collNo;
	private String deptId;
	private int upColl;
	private String upDept;
	private String collName;
	private String deptName;
	private String upCollName;
	private String upDeptName;
	
	private CollegeVO collegeInfo;
	private DeptVO deptInfo;
	private StudentVO studentInfo;
	private MemberVO memberInfo;
	private DoubleMajorVO doubleMajorInfo;
	static int[] stuNoList;
	
	public static int[] getStuNoList() {
		return stuNoList;
	}
	public static void setStuNoList(int[] stuNoList) {
		ChangeMajorVO.stuNoList = stuNoList;
	}
	public DoubleMajorVO getDoubleMajorInfo() {
		return doubleMajorInfo;
	}
	public void setDoubleMajorInfo(DoubleMajorVO doubleMajorInfo) {
		this.doubleMajorInfo = doubleMajorInfo;
	}
	public MemberVO getMemberInfo() {
		return memberInfo;
	}
	public void setMemberInfo(MemberVO memberInfo) {
		this.memberInfo = memberInfo;
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
	public String getUpCollName() {
		return upCollName;
	}
	public void setUpCollName(String upCollName) {
		this.upCollName = upCollName;
	}
	public String getUpDeptName() {
		return upDeptName;
	}
	public void setUpDeptName(String upDeptName) {
		this.upDeptName = upDeptName;
	}
	public int getUpColl() {
		return upColl;
	}
	public void setUpColl(int upColl) {
		this.upColl = upColl;
	}
	public String getUpDept() {
		return upDept;
	}
	public void setUpDept(String upDept) {
		this.upDept = upDept;
	}
	public String getChangeId() {
		return changeId;
	}
	public void setChangeId(String changeId) {
		this.changeId = changeId;
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

}
