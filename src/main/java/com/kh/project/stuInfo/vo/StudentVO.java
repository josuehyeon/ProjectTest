package com.kh.project.stuInfo.vo;

import com.kh.project.portal.vo.MemberVO;

public class StudentVO {
	private int stuNo;
	private int collNo;
	private String majorCode;
	private String minorCode;
	private int stuYear;
	private int stuSem;
	private int stuStatus;
	
	private MemberVO memberInfo;
	
	
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
	public int getStuStatus() {
		return stuStatus;
	}
	public void setStuStatus(int stuStatus) {
		this.stuStatus = stuStatus;
	}
	public MemberVO getMemberInfo() {
		return memberInfo;
	}
	public void setMemberInfo(MemberVO memberInfo) {
		this.memberInfo = memberInfo;
	}
	
	

}
