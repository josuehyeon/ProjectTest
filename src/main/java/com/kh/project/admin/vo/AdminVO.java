package com.kh.project.admin.vo;

import com.kh.project.gradeManage.vo.SemesterVO;
import com.kh.project.stuInfo.vo.StudentVO;

public class AdminVO {	//학사경고, 제적 테이블
	private int yellNo;
	private int stuNo;
	private String yellDate;
	private int yellSemester;
	private String yellReason;
	private StudentVO studentInfo;
	private SemesterVO semesterInfo;
	private int semNo;
	
	private int getOutNo;
	private String getOutDate;
	private String getOutReason;
	
	public int getYellNo() {
		return yellNo;
	}
	public void setYellNo(int yellNo) {
		this.yellNo = yellNo;
	}
	public int getStuNo() {
		return stuNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public String getYellDate() {
		return yellDate;
	}
	public void setYellDate(String yellDate) {
		this.yellDate = yellDate;
	}
	public int getYellSemester() {
		return yellSemester;
	}
	public void setYellSemester(int yellSemester) {
		this.yellSemester = yellSemester;
	}
	public String getYellReason() {
		return yellReason;
	}
	public void setYellReason(String yellReason) {
		this.yellReason = yellReason;
	}
	public StudentVO getStudentInfo() {
		return studentInfo;
	}
	public void setStudentInfo(StudentVO studentInfo) {
		this.studentInfo = studentInfo;
	}
	public SemesterVO getSemesterInfo() {
		return semesterInfo;
	}
	public void setSemesterInfo(SemesterVO semesterInfo) {
		this.semesterInfo = semesterInfo;
	}
	public int getSemNo() {
		return semNo;
	}
	public void setSemNo(int semNo) {
		this.semNo = semNo;
	}
	public int getGetOutNo() {
		return getOutNo;
	}
	public void setGetOutNo(int getOutNo) {
		this.getOutNo = getOutNo;
	}
	public String getGetOutDate() {
		return getOutDate;
	}
	public void setGetOutDate(String getOutDate) {
		this.getOutDate = getOutDate;
	}
	public String getGetOutReason() {
		return getOutReason;
	}
	public void setGetOutReason(String getOutReason) {
		this.getOutReason = getOutReason;
	}
	
	
	
	
	
	
	
}
