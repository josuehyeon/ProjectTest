package com.kh.project.lecture.vo;


public class EnrolmentVO {
	private String enrolmentId;
	private String lecId;
	private int stuNo;
	private LectureViewVO lectureViewVO;
	
	public String getEnrolmentId() {
		return enrolmentId;
	}
	public void setEnrolmentId(String enrolmentId) {
		this.enrolmentId = enrolmentId;
	}
	public String getLecId() {
		return lecId;
	}
	public void setLecId(String lecId) {
		this.lecId = lecId;
	}
	public int getStuNo() {
		return stuNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public LectureViewVO getLectureViewVO() {
		return lectureViewVO;
	}
	public void setLectureViewVO(LectureViewVO lectureViewVO) {
		this.lectureViewVO = lectureViewVO;
	}
	
	
	
}
