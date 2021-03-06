package com.kh.project.gradeManage.vo;

import com.kh.project.lecture.vo.LectureVO;
import com.kh.project.portal.vo.MemberVO;

public class StuGradeVO {
	private String subjectId;
	private String lecId;
	private String grade;
	private int stuNo;
	private int semId;
	private GradeVO gradeInfo;
	private LectureVO lectureInfo;
	private SemesterVO semesterInfo;
	private MemberVO memberInfo;
	
	
	public String getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	public String getLecId() {
		return lecId;
	}
	public void setLecId(String lecId) {
		this.lecId = lecId;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getStuNo() {
		return stuNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public int getSemId() {
		return semId;
	}
	public void setSemId(int semId) {
		this.semId = semId;
	}
	public GradeVO getGradeInfo() {
		return gradeInfo;
	}
	public void setGradeInfo(GradeVO gradeInfo) {
		this.gradeInfo = gradeInfo;
	}
	public LectureVO getLectureInfo() {
		return lectureInfo;
	}
	public void setLectureInfo(LectureVO lectureInfo) {
		this.lectureInfo = lectureInfo;
	}
	public SemesterVO getSemesterInfo() {
		return semesterInfo;
	}
	public void setSemesterInfo(SemesterVO semesterInfo) {
		this.semesterInfo = semesterInfo;
	}
	public MemberVO getMemberInfo() {
		return memberInfo;
	}
	public void setMemberInfo(MemberVO memberInfo) {
		this.memberInfo = memberInfo;
	}
	

	
	
}
