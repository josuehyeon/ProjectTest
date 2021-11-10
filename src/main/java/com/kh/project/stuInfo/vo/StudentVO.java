package com.kh.project.stuInfo.vo;

import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.common.vo.SearchVO;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;

public class StudentVO extends SearchVO{
	private int stuNo;
	private int collNo;
	private String majorCode;
	private String minorCode;
	private int stuYear;
	private int stuSem;
	private String stuStatus;
	
	private MemberVO memberInfo;
	private CollegeVO collegeInfo;
	private DeptVO deptInfo;
	
	private String majorName;
	private String minorName;
	private EditStatusVO editStatusInfo;
	
	
	public EditStatusVO getEditStatusInfo() {
		return editStatusInfo;
	}
	public void setEditStatusInfo(EditStatusVO editStatusInfo) {
		this.editStatusInfo = editStatusInfo;
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
	public String getMajorCode() {
		return majorCode;
	}
	public void setMajorCode(String majorCode) {
		this.majorCode = majorCode;
	}
	public String getMinorCode() {
		return minorCode;
	}
	public void setMinorCode(String minorCode) {
		this.minorCode = minorCode;
	}
	public int getStuYear() {
		return stuYear;
	}
	public void setStuYear(int stuYear) {
		this.stuYear = stuYear;
	}
	public int getStuSem() {
		return stuSem;
	}
	public void setStuSem(int stuSem) {
		this.stuSem = stuSem;
	}
	public String getStuStatus() {
		return stuStatus;
	}
	public void setStuStatus(String stuStatus) {
		this.stuStatus = stuStatus;
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
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public String getMinorName() {
		return minorName;
	}
	public void setMinorName(String minorName) {
		this.minorName = minorName;
	}
	
	
	
	
	
	

}
