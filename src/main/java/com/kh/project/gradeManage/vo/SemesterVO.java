package com.kh.project.gradeManage.vo;

import java.util.List;

public class SemesterVO {
	public int semId;
	public int year;
	public int semester;
	private List<StuGradeVO> stuGradeList;
	
	public int getSem_id() {
		return semId;
	}
	public void setSem_id(int sem_id) {
		this.semId = sem_id;
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
	
	

}
