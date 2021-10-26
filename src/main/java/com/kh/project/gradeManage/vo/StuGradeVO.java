package com.kh.project.gradeManage.vo;

import com.kh.project.lecture.vo.LectureVO;

public class StuGradeVO {
	public String subjectId;
	public String lecId;
	public String grade;
	public int stuNo;
	public int semId;
	public GradeVO gradeInfo;
	public LectureVO lectureInfo;
	public SemesterVO semesterInfo;
	
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
	

	
	
}
