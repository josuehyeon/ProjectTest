package com.kh.project.lecture.vo;

public class LectureVO {
	private String lecId;
	private String lecName;
	private int lecCredit;
	private int collNo;
	private String deptId;
	private int profNo;
	private int assiNo;
	private String createDate;
	private int maxNo;
	private int nowNo;
	private String lecPlan;
	private PdfVO pdfVO;
	private String lecDay;
	private String lecPeriod;
	
	
	
	public String getLecDay() {
		return lecDay;
	}
	public void setLecDay(String lecDay) {
		this.lecDay = lecDay;
	}
	public String getLecPeriod() {
		return lecPeriod;
	}
	public void setLecPeriod(String lecPeriod) {
		this.lecPeriod = lecPeriod;
	}
	public PdfVO getPdfVO() {
		return pdfVO;
	}
	public void setPdfVO(PdfVO pdfVO) {
		this.pdfVO = pdfVO;
	}
	public String getLecId() {
		return lecId;
	}
	public void setLecId(String lecId) {
		this.lecId = lecId;
	}
	public String getLecName() {
		return lecName;
	}
	public void setLecName(String lecName) {
		this.lecName = lecName;
	}
	public int getLecCredit() {
		return lecCredit;
	}
	public void setLecCredit(int lecCredit) {
		this.lecCredit = lecCredit;
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
	public int getProfNo() {
		return profNo;
	}
	public void setProfNo(int profNo) {
		this.profNo = profNo;
	}
	public int getAssiNo() {
		return assiNo;
	}
	public void setAssiNo(int assiNo) {
		this.assiNo = assiNo;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public int getMaxNo() {
		return maxNo;
	}
	public void setMaxNo(int maxNo) {
		this.maxNo = maxNo;
	}
	public int getNowNo() {
		return nowNo;
	}
	public void setNowNo(int nowNo) {
		this.nowNo = nowNo;
	}
	public String getLecPlan() {
		return lecPlan;
	}
	public void setLecPlan(String lecPlan) {
		this.lecPlan = lecPlan;
	}
	

}
