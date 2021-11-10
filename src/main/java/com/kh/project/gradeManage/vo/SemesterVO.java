package com.kh.project.gradeManage.vo;

import java.util.List;

public class SemesterVO {
	private int semId;
	private int year;
	private int semester;
	private String semName;
	private List<StuGradeVO> stuGradeList;
	
	public int getSemId() {
		return semId;
	}
	public void setSemId(int semId) {
		this.semId = semId;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public List<StuGradeVO> getStuGradeList() {
		return stuGradeList;
	}
	public void setStuGradeList(List<StuGradeVO> stuGradeList) {
		this.stuGradeList = stuGradeList;
	}
	public String getSemName() {
		return semName;
	}
	public void setSemName(String semName) {
		this.semName = semName;
	}
	
	

}
