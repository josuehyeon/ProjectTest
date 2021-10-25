package com.kh.project.stuManage.vo;

public class DeptManageVO {
	//복전 DEPT_MANAGE
	private int applyNo;
	private int stuNo;
	private int applyCode;
	private String applyDate;
	private String applyReason;
	private String approvalDate;
	private int processStat;
	private int fromColl;
	private String fromDept;
	private int toColl;
	private String toDept;
	private int dmajorColl;
	private String dmajorCept;
	
	
	public int getStuNo() {
		return stuNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public int getApplyNo() {
		return applyNo;
	}
	public void setApplyNo(int applyNo) {
		this.applyNo = applyNo;
	}
	public int getApplyCode() {
		return applyCode;
	}
	public void setApplyCode(int applyCode) {
		this.applyCode = applyCode;
	}
	public String getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
	public String getApplyReason() {
		return applyReason;
	}
	public void setApplyReason(String applyReason) {
		this.applyReason = applyReason;
	}
	public String getApprovalDate() {
		return approvalDate;
	}
	public void setApprovalDate(String approvalDate) {
		this.approvalDate = approvalDate;
	}
	public int getProcessStat() {
		return processStat;
	}
	public void setProcessStat(int processStat) {
		this.processStat = processStat;
	}
	public int getFromColl() {
		return fromColl;
	}
	public void setFromColl(int fromColl) {
		this.fromColl = fromColl;
	}
	public String getFromDept() {
		return fromDept;
	}
	public void setFromDept(String fromDept) {
		this.fromDept = fromDept;
	}
	public int getToColl() {
		return toColl;
	}
	public void setToColl(int toColl) {
		this.toColl = toColl;
	}
	public String getToDept() {
		return toDept;
	}
	public void setToDept(String toDept) {
		this.toDept = toDept;
	}
	public int getDmajorColl() {
		return dmajorColl;
	}
	public void setDmajorColl(int dmajorColl) {
		this.dmajorColl = dmajorColl;
	}
	public String getDmajorCept() {
		return dmajorCept;
	}
	public void setDmajorCept(String dmajorCept) {
		this.dmajorCept = dmajorCept;
	}
}
